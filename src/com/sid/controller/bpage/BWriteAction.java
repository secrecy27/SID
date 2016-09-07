package com.sid.controller.bpage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sid.controller.Action;
import com.sid.dao.BPageDAO;
import com.sid.dto.BWriteVO;

public class BWriteAction implements Action{
	 @Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 	String url="/SidServlet?command=list_bpage";
		 	
		 	System.out.println("bwrite action");
		 	//-----------------------------
		 	
		 	String savePath="C:/Users/hs/git/SID_2/SID/WebContent/img";
		 			//저장 폴더명
		 	int maxPostSize = 10 * 1024 * 1024; //10mb
		 	String encoding = "utf-8";
		 	
		 	MultipartRequest multi = null;
		 	multi = new MultipartRequest(request, savePath, maxPostSize, encoding, new DefaultFileRenamePolicy());
		 	
		 	// 전송받은 데이터가 파일일 경우 getFilesystemName()으로 파일 이름을 받아올 수 있다.
		 	String fileName = multi.getFilesystemName("imageFile");
		 	 
		 	// 업로드한 파일의 전체 경로를 DB에 저장하기 위함
		 	String m_fileFullPath = "../img/" + fileName;
		 	
		 	//-----------------------------
		 	BWriteVO bVo=new BWriteVO();
		 	bVo.setImageUrl(m_fileFullPath);
		 	
		 	
		 	bVo.setCost(Integer.parseInt(multi.getParameter("cost")));
		 	bVo.setExpl(multi.getParameter("expl"));
			
		 	HttpSession session = request.getSession();
			
		 	
		 	String email=(String)session.getAttribute("email");
		 	if(email!=null){
		 		bVo.setUserEmail(email);
		 	}
		 	
		 	BPageDAO dao = BPageDAO.getInstance();

			String str = (String) multi.getParameter("hashtag");
			bVo.setHashtag(str);
		 	int result=dao.insertImage(bVo);
			
			String[] arr=str.split(",");
			dao.insertHashtag(result, arr);
			
			
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
	}
}

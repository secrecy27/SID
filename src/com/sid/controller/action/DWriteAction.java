package com.sid.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sid.controller.Action;
import com.sid.dao.DPageDAO;
import com.sid.dto.DWriteVO;

public class DWriteAction implements Action{
	 @Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 	String url="/SidServlet?command=list_dpage";
		 	
		 	System.out.println("dwrite");
		 	//-----------------------------
		 	
		 	String savePath="C:/Users/hs/git/SID/WebContent/img"; //저장 폴더명
		 	int maxPostSize = 10 * 1024 * 1024; //10mb
		 	String encoding = "utf-8";
		 	
		 	MultipartRequest multi = null;
		 	multi = new MultipartRequest(request, savePath, maxPostSize, encoding, new DefaultFileRenamePolicy());
		 	
		 	// 전송받은 데이터가 파일일 경우 getFilesystemName()으로 파일 이름을 받아올 수 있다.
		 	String fileName = multi.getFilesystemName("imageFile");
		 	 
		 	// 업로드한 파일의 전체 경로를 DB에 저장하기 위함
		 	String m_fileFullPath = "../img/" + fileName;
		 	
		 	//-----------------------------
		 	DWriteVO dVo=new DWriteVO();
		 	dVo.setImageName(fileName);
		 	dVo.setImageUrl(m_fileFullPath);
		 	dVo.setStandardDate(multi.getParameter("standardDate"));
		 	dVo.setEndDate(multi.getParameter("endDate"));
		 	if(multi.getParameter("condition")!=null)
		 	{
		 	   dVo.setCondition(Integer.parseInt(multi.getParameter("condition")));
		 	}
		 	System.out.println(multi.getParameter("cost")+"  "+multi.getParameter("standardDate"));
		 	dVo.setCost(Integer.parseInt(multi.getParameter("cost")));
		 	dVo.setPoint(multi.getParameter("point"));
		 	dVo.setExpl(multi.getParameter("expl"));
			
		 	System.out.println();
		 		DPageDAO dao = DPageDAO.getInstance();
				dao.insertImage(dVo);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
	}
}

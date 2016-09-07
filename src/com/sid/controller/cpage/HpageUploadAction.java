package com.sid.controller.cpage;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sid.controller.Action;
import com.sid.dao.BPageDAO;
import com.sid.dao.CWriteDAO;
import com.sid.dto.BWriteVO;
import com.sid.dto.CWriteVO;
import com.sid.dto.HPageVO;

public class HpageUploadAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "member/Cpage.jsp";

	 	CWriteDAO cDao=CWriteDAO.getInstance();
	 	
	 	System.out.println("h upload action");
	 	//-----------------------------
	 	
	 	String savePath="C:/Users/sid/git/SID/WebContent/img"; //저장 폴더명
	 	int maxPostSize = 10 * 1024 * 1024; //10mb
	 	String encoding = "utf-8";
	 	
	 	MultipartRequest multi = null;
	 	multi = new MultipartRequest(request, savePath, maxPostSize, encoding, new DefaultFileRenamePolicy());
	 	
	 	// 전송받은 데이터가 파일일 경우 getFilesystemName()으로 파일 이름을 받아올 수 있다.
	 	String fileName1 = multi.getFilesystemName("imageSrc1");
	 	String fileName2 = multi.getFilesystemName("imageSrc2");
	 	  
	 	// 업로드한 파일의 전체 경로를 DB에 저장하기 위함
	 	String m_fileFullPath1 = "../img/" + fileName1;
	 	String m_fileFullPath2 = "../img/" + fileName2;
	 	
	 	//-----------------------------
	 /*	HPageVO hVo=new HPageVO();
	 	hVo.setImageSrc1(m_fileFullPath1);
	 	hVo.setImageSrc2(m_fileFullPath2);
	 	*/
	 	HttpSession session = request.getSession();
		
	 	String email=(String)session.getAttribute("email");
	 	
	 	cDao.test(m_fileFullPath2, m_fileFullPath1);
	/* 	if(email!=null){
	 		hVo.setEmail(email);
	 	}*/
	 		 	
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
package com.sid.controller.apage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sid.controller.Action;
import com.sid.dao.AWriteDAO;
import com.sid.dto.AWriteVO;

public class AdminApageWriteAction implements Action{

@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String url = "/SidServlet?command=admin_apage_list";
	
	int sizeLimit = 10 * 1024 * 1024;
	String savePath = "C:/Users/hs/git/SID_2/SID/WebContent/img";
	
	MultipartRequest multi = new MultipartRequest(
			request, 
			savePath, sizeLimit, "UTF-8",
			new DefaultFileRenamePolicy());
	
	String fileName1=multi.getFilesystemName("imageFile1");
	String fileName2=multi.getFilesystemName("imageFile2");
	String fileName3=multi.getFilesystemName("imageFile3");
	String fileName4=multi.getFilesystemName("imageFile4");
	String m_fileFullPath1="../img/" + fileName1;
	String m_fileFullPath2="../img/" + fileName2;
	String m_fileFullPath3="../img/" + fileName3;
	String m_fileFullPath4="../img/" + fileName4;
	
	
	AWriteVO aVO=new AWriteVO();
	System.out.println(" asd "+m_fileFullPath1);
	System.out.println("bcd"+m_fileFullPath2);
	System.out.println("eee"+m_fileFullPath3);
	System.out.println("fff"+m_fileFullPath3);

	aVO.setImageUrl(m_fileFullPath1);
	aVO.setImageUrl2(m_fileFullPath2);
	aVO.setImageUrl3(m_fileFullPath3);
	aVO.setImageUrl4(m_fileFullPath4);
	aVO.setCost(Integer.parseInt(multi.getParameter("cost")));
		
	AWriteDAO aDao=AWriteDAO.getInstance();
	
	String str = (String) multi.getParameter("hashtag");
	aVO.setHashtag(str);
	int result=aDao.insertImage(aVO);
	
	String[] arr=str.split(",");
	aDao.insertHashtag(result, arr);
	
	System.out.println("aa");
	
	RequestDispatcher dispatcher=request.getRequestDispatcher(url);
	dispatcher.forward(request, response);
	}	
}

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
	
	String fileName=multi.getFilesystemName("imageFile");
	String m_fileFullPath="../img/" + fileName;
	
	AWriteVO aVO=new AWriteVO();
	aVO.setImageUrl(m_fileFullPath);
	aVO.setCost(Integer.parseInt(multi.getParameter("cost")));
	
	
	AWriteDAO aDao=AWriteDAO.getInstance();
	
	String str = (String) multi.getParameter("hashtag");
	aVO.setHashtag(str);
	int result=aDao.insertImage(aVO);
	
	String[] arr=str.split(",");
	aDao.insertHashtag(result, arr);
	
	
	RequestDispatcher dispatcher=request.getRequestDispatcher(url);
	dispatcher.forward(request, response);
	}	
}

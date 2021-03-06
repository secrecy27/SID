package com.sid.controller.cpage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sid.controller.Action;
import com.sid.dao.CWriteDAO;
import com.sid.dto.CWriteVO;

public class CpageWriteAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="/SidServlet?command=cpage_list";
		
		HttpSession session = request.getSession();
		int sizeLimit = 10 * 1024 * 1024;
		String savePath =  "C:/Users/hs/git/SID_2/SID/WebContent/img";
		
		MultipartRequest multi = new MultipartRequest(
				request, 
				savePath, sizeLimit, "UTF-8",
				new DefaultFileRenamePolicy());
		
		String fileName=multi.getFilesystemName("imageFile");
		String m_fileFullPath="../img/" + fileName;
		
		CWriteVO cVO=new CWriteVO();
		cVO.setImageUrl(m_fileFullPath);
		cVO.setCost(Integer.parseInt(multi.getParameter("cost")));
		
		String email=(String)session.getAttribute("email");
	 	if(email!=null){
	 		cVO.setUserEmail(email);
	 	}
		
		CWriteDAO cDao=CWriteDAO.getInstance();
		
		String str = (String) multi.getParameter("hashtag");
		cVO.setHashtag(str);
		int result=cDao.insertImage(cVO);
		
		String[] arr=str.split(",");
		if(result>0){
			cDao.insertHashtag(result, arr);
				
		}else{
			System.out.println("cwriteaction hashtag error");
		}
		
		
		RequestDispatcher dispatcher=request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}
}

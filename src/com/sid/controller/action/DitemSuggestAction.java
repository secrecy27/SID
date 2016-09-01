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

public class DitemSuggestAction implements Action{
	 @Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 	String url="/SidServlet?command=list_dpage";
		 	
		 	DPageDAO dao=DPageDAO.getInstance();
		 	DWriteVO dVo=new DWriteVO();
			
		 	dVo=dao.readItem(Integer.parseInt(request.getParameter("num")));

			request.setAttribute("dpage", dVo);
			request.setAttribute("re","asd");
			
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
	}
}

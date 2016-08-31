package com.sid.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sid.controller.Action;
import com.sid.dao.BPageDAO;
import com.sid.dto.BWriteVO;

public class BpageReadAction implements Action{
	 @Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 	String url="member/Bitem.jsp";
		 	
		 	BPageDAO dao=BPageDAO.getInstance();
		 	BWriteVO bVo=new BWriteVO();
			
		 	bVo=dao.readItem(Integer.parseInt(request.getParameter("num")));

			request.setAttribute("bpage", bVo);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
	}
}

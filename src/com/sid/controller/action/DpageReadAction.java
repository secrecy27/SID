package com.sid.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sid.controller.Action;
import com.sid.dao.DPageDAO;
import com.sid.dao.MemberDAO;
import com.sid.dto.DWriteVO;
import com.sid.dto.MemberVO;

public class DpageReadAction implements Action{
	 @Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 	String url="member/Ditem.jsp";
		 	
		 	DPageDAO dao=DPageDAO.getInstance();
		 	DWriteVO dVo=new DWriteVO();
			
		 	dVo=dao.readItem(Integer.parseInt(request.getParameter("num")));

			request.setAttribute("dpage", dVo);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
	}
}

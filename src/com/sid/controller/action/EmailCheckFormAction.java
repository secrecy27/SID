package com.sid.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sid.controller.Action;
import com.sid.dao.MemberDAO;

public class EmailCheckFormAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url="/member/emailcheck.jsp";
		
		String email=request.getParameter("email").trim();
		
		MemberDAO memberDAO=MemberDAO.getInstance();
		int message=memberDAO.confirmID(email);
		
		request.setAttribute("message", message);
		request.setAttribute("email",email );
		RequestDispatcher dispatcher=request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}

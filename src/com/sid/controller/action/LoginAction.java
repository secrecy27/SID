package com.sid.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sid.controller.Action;
import com.sid.dao.MemberDAO;
import com.sid.dto.MemberVO;

public class LoginAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "member/index.jsp";
		
		System.out.println("get r u"+request.getRequestURI().toString());
		
		HttpSession session = request.getSession();
		
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		System.out.println("로그인");

		MemberDAO memberDAO = MemberDAO.getInstance();
		int result= memberDAO.userCheck(email,pwd);

		
		if (result==1) {
				request.setAttribute("login", "success");
				System.out.println("login success");
				session.setAttribute("email", email);
		}else {
			request.setAttribute("login", "fail");
			System.out.println("login fail");
		}		
		RequestDispatcher dispatcher = request
				.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}

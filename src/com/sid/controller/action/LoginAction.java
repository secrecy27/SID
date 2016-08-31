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
		String url = "member/loginResult.jsp";
		
		HttpSession session = request.getSession();
		
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");

		System.out.println("email : "+email+"pwd : "+pwd);
		MemberDAO memberDAO = MemberDAO.getInstance();
		int result= memberDAO.userCheck(email,pwd);

		
		if (result==-1) {
			System.out.println("login fail");
			request.setAttribute("result", "0");
		}else {
			System.out.println("login success");
			request.setAttribute("result", "1");
			session.setAttribute("email", email);
			session.setAttribute("admin", result);
		}
		
		RequestDispatcher dispatcher = request
				.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}

package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.MemberDAO;
import com.dto.MemberVO;

@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="";
		
		HttpSession session=request.getSession();
		
		if(session.getAttribute("loginUser")!=null){
			url="main.jsp";
		}
			
		RequestDispatcher dispatcher =request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String url="member/loginCheck.jsp";
		
		String email=request.getParameter("email");
		String pwd=request.getParameter("pwd");
		
		MemberDAO mDao=MemberDAO.getInstance();
		int result=mDao.userCheck(email, pwd);
		
		if(result==1){
			MemberVO mVo=mDao.getMember(email);
			HttpSession session=request.getSession();
			session.setAttribute("loginUser", mVo);
			request.setAttribute("message", "회원가입에 성공했습니다.");
			url="register4.jsp";
		}else if(result==0){
			request.setAttribute("message", "비밀번호가 맞지 않습니다.");
		}else if(result==-1){
			request.setAttribute("message", "존재하지 않는 회원입니다.");
		}
		
		RequestDispatcher dispatcher=request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}

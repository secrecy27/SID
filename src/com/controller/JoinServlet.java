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

@WebServlet("/join.do")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public JoinServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	RequestDispatcher dispatcher =request.getRequestDispatcher("member/join.jsp");
	dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	request.setCharacterEncoding("UTF-8");
	
	String nickname=request.getParameter("nickname");
	String pwd=request.getParameter("pwd");
	String email=request.getParameter("email");
	String address=request.getParameter("address");
	String phone=request.getParameter("phone");
	String admin=request.getParameter("admin");
	int admin_n=Integer.parseInt(admin);
	
	MemberVO mVo=new MemberVO();
	mVo.setNickname(nickname);
	mVo.setPwd(pwd);
	mVo.setEmail(email);
	mVo.setAddress(address);
	mVo.setAdmin(admin_n);
	mVo.setPhone(phone);
	
	
	MemberDAO mDao=MemberDAO.getInstance();
	int result=mDao.insertMember(mVo);
	
	HttpSession session=request.getSession();
	if(result==1){
		session.setAttribute("email", mVo.getEmail());
		request.setAttribute("message", "축하합니다! 회원 가입에 성공했습니다.");
	}else{
		request.setAttribute("message", "회원 가입에 실패했습니다.");
	}
	
	RequestDispatcher dispatcher =request.getRequestDispatcher("register4.jsp");
	dispatcher.forward(request, response);
	}

}

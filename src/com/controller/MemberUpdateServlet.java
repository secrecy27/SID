package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.MemberDAO;
import com.dto.MemberVO;

@WebServlet("/memberUpdate.do")
public class MemberUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MemberUpdateServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		MemberDAO mDao=MemberDAO.getInstance();
		
		MemberVO mVo=mDao.getMember(email);
		request.setAttribute("mVo", mVo);
		
		RequestDispatcher dispatcher =request.getRequestDispatcher("member/memberUpdate.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String email=request.getParameter("email");
		String pwd=request.getParameter("pwd");
		String address=request.getParameter("address");
		String phone=request.getParameter("phone");
		String admin=request.getParameter("admin");
		
		MemberVO mVo=new MemberVO();
		mVo.setEmail(email);
		mVo.setPwd(pwd);
		mVo.setAddress(address);
		mVo.setPhone(phone);
		mVo.setAdmin(Integer.parseInt(admin));
		
		MemberDAO mDao=MemberDAO.getInstance();
		mDao.updateMember(mVo);
		
		response.sendRedirect("login.do");
	}

}

package com.sid.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sid.controller.Action;
import com.sid.dao.MemberDAO;

public class JoinDesignerAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url="member/register7.jsp";

		HttpSession session = request.getSession();
		
		MemberDAO memberDAO = MemberDAO.getInstance();
		int result=memberDAO.updateAdmin((String)session.getAttribute("email"));
		if(result>0){
			System.out.println("update admin O");
			session.setAttribute("admin", '1');
		}else{
			System.out.println("update admin X");
			session.setAttribute("admin", '0');
		}
		/*	MemberVO memberVO = new MemberVO();
		memberVO.setNickname(request.getParameter("nickname"));
		memberVO.setEmail(request.getParameter("email"));
		memberVO.setPwd(request.getParameter("pwd"));
		memberVO.setZipNum(request.getParameter("zipNum"));
		memberVO.setAddress(request.getParameter("roadAddrPart1")
				+ request.getParameter("addrDetail"));
		memberVO.setPhone(request.getParameter("phone"));
		memberVO.setAdmin(Integer.parseInt(request.getParameter("admin")));
		
		session.setAttribute("email", request.getParameter("email"));
		
		MemberDAO memberDAO = MemberDAO.getInstance();
		memberDAO.insertMember(memberVO);*/
		
		RequestDispatcher dispatcher =request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}

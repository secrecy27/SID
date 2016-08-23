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

public class JoinAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url = "member/register4.jsp";
		
		HttpSession session = request.getSession();
		MemberVO memberVO = new MemberVO();
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
		memberDAO.insertMember(memberVO);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}

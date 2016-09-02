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

public class DpageListAction implements Action{
	 @Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 	String url="member/Dpage.jsp";
		 	
		 	DPageDAO dao=DPageDAO.getInstance();
			ArrayList<DWriteVO> list = dao.listAll();

			request.setAttribute("list", list);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
	}
}

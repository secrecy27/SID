package com.sid.controller.bpage;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sid.controller.Action;
import com.sid.dao.BPageDAO;
import com.sid.dto.BWriteVO;
import com.sid.dto.HashtagVO;

public class BpageListAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 	String url="member/Bpage.jsp";
		 	
		 	BPageDAO dao=BPageDAO.getInstance();
		 	BWriteVO vo=new BWriteVO();
			ArrayList<BWriteVO> list = dao.listAll();
			
			request.setAttribute("list", list);
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
	}
}

package com.sid.controller.apage;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sid.controller.Action;
import com.sid.dao.AWriteDAO;
import com.sid.dto.AWriteVO;

public class AdminApageListAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "member/Apage.jsp";

		AWriteDAO aDao = AWriteDAO.getInstance();
		ArrayList<AWriteVO> list = aDao.listAll();

		request.setAttribute("list", list);

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}

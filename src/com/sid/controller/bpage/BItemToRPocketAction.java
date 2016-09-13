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

public class BItemToRPocketAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "member/ItemResult.jsp";
		BPageDAO dao = BPageDAO.getInstance();

		int result = dao.addToRPocket(request.getParameter("email"), Integer.parseInt(request.getParameter("id")));

		System.out.println("result = " + result);
		if (result > 0) {
			request.setAttribute("result", "1");

		} else {
			request.setAttribute("result", "0");
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}

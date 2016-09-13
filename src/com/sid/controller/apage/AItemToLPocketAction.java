package com.sid.controller.apage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sid.controller.Action;
import com.sid.dao.AWriteDAO;

public class AItemToLPocketAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/SidServlet?command=customer_lpocket_list";
		AWriteDAO aDao = AWriteDAO.getInstance();

		int result = aDao.addToLPocket(request.getParameter("email"), Integer.parseInt(request.getParameter("id")));

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

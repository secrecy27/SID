package com.sid.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sid.controller.Action;
import com.sid.dao.CartDAO;

public class DeleteProductAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CartDAO cartDAO = CartDAO.getInstance();

		cartDAO.deleteAProduct(Integer.parseInt(request.getParameter("num")));
		cartDAO.deleteCProduct(Integer.parseInt(request.getParameter("num")));
		String url = "/SidServlet?command=customer_basket";
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}

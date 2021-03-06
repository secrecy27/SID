package com.sid.controller.cpage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sid.controller.Action;
import com.sid.dao.CWriteDAO;
import com.sid.dao.CartDAO;

public class CItemToCartAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "member/ItemResult.jsp";
		CWriteDAO cDao = CWriteDAO.getInstance();
		HttpSession session = request.getSession();
		System.out.println("id "+request.getParameter("id"));
		int result = cDao.addToCart(Integer.parseInt(request.getParameter("id")),
				(String) session.getAttribute("email"));
		if (result > 0) {
			request.setAttribute("result", "1");

		} else {
			request.setAttribute("result", "0");
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}

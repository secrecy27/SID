package com.sid.controller.apage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sid.controller.Action;
import com.sid.dao.AWriteDAO;
import com.sid.dao.CartDAO;

public class AItemToCartAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String url="/SidServlet?command=customer_basket";
			AWriteDAO aDao=AWriteDAO.getInstance();
			HttpSession session=request.getSession();
			aDao.addToCart(Integer.parseInt(request.getParameter("id")),(String)session.getAttribute("email"));
			
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
	}

}

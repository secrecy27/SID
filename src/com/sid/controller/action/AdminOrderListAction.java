package com.sid.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sid.controller.Action;
import com.sid.dao.OrderDAO;
import com.sid.dto.OrderVO;

public class AdminOrderListAction implements Action {
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "admin/order/orderList.jsp";
		String key = "";
		if (request.getParameter("key") != null) {
			key = request.getParameter("key");
		}
		OrderDAO orderDAO = OrderDAO.getInstance();
		ArrayList<OrderVO> orderList = orderDAO.listOrder(key);
		request.setAttribute("orderList", orderList);
		request.getRequestDispatcher(url).forward(request, response);
	}
}

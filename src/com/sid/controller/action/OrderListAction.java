package com.sid.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sid.controller.Action;
import com.sid.dao.OrderDAO;
import com.sid.dto.MemberVO;
import com.sid.dto.OrderVO;

public class OrderListAction implements Action {
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "mypage/orderList.jsp";
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		if (loginUser == null) {
			url = "SidServlet?command=login_form";
		} else {
			OrderDAO orderDAO = OrderDAO.getInstance();
			int oseq = Integer.parseInt(request.getParameter("oseq"));
			ArrayList<OrderVO> orderList = orderDAO.listOrderById(
					loginUser.getEmail(), "1", oseq);
			int totalPrice = 0;
			for (OrderVO orderVO : orderList) {
				totalPrice += orderVO.getPrice2() * orderVO.getQuantity();
			}
			request.setAttribute("orderList", orderList);
			request.setAttribute("totalPrice", totalPrice);
		}
		request.getRequestDispatcher(url).forward(request, response);
	}
}

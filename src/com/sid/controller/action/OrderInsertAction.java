package com.sid.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sid.controller.Action;
import com.sid.dao.CartDAO;
import com.sid.dao.OrderDAO;
import com.sid.dto.CartVO;
import com.sid.dto.MemberVO;

public class OrderInsertAction implements Action {
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "SidServlet?command=order_list";
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		if (loginUser == null) {
			url = "SidServlet?command=login_form";
		} else {
			CartDAO cartDAO = CartDAO.getInstance();
			ArrayList<CartVO> cartList = cartDAO.listCart(loginUser.getEmail());
			OrderDAO orderDAO = OrderDAO.getInstance();
			int maxOseq = orderDAO.insertOrder(cartList, loginUser.getEmail());
			url = "SidServlet?command=order_list&oseq=" + maxOseq;
		}
		response.sendRedirect(url);
	}
}

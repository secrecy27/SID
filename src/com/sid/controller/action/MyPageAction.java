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

public class MyPageAction implements Action {
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "mypage/mypage.jsp";

		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");

		if (loginUser == null) {
			url = "SidServlet?command=login_form";
		} else {
			OrderDAO orderDAO = OrderDAO.getInstance();
			ArrayList<Integer> oseqList = orderDAO.selectSeqOrderIng(loginUser
					.getEmail());

			ArrayList<OrderVO> orderList = new ArrayList<OrderVO>();

			for (int oseq : oseqList) {
				ArrayList<OrderVO> orderListIng = orderDAO.listOrderById(
						loginUser.getEmail(), "1", oseq);

				OrderVO orderVO = orderListIng.get(0);
				orderVO.setPname(orderVO.getPname() + " 외 "
						+ orderListIng.size() + "건");

				int totalPrice = 0;
				for (OrderVO ovo : orderListIng) {
					totalPrice += ovo.getPrice2() * ovo.getQuantity();
				}
				orderVO.setPrice2(totalPrice);
				orderList.add(orderVO);
			}
			request.setAttribute("title", "진행 중인 주문 내역");
			request.setAttribute("orderList", orderList);
		}
		request.getRequestDispatcher(url).forward(request, response);
	}
}

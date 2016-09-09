package com.sid.controller.action.customer;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sid.controller.Action;
import com.sid.dao.CartDAO;
import com.sid.dao.MemberDAO;
import com.sid.dto.AWriteVO;
import com.sid.dto.CWriteVO;
import com.sid.dto.CartVO;
import com.sid.dto.MemberVO;

public class Customer_Basket_Action implements Action{
@Override
public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="customer/customer_Basket.jsp";
		
		MemberDAO mDao=MemberDAO.getInstance();
		MemberVO mVo=new MemberVO();
		
		HttpSession session=request.getSession();
		String email=(String)session.getAttribute("email");
		mVo=mDao.getAddress(email);
		//배송지 입력
		

		CartDAO cartDAO = CartDAO.getInstance();
		CartVO cartVO=new CartVO();
		
		
		ArrayList<AWriteVO> alist= cartDAO.listACart(email);
		ArrayList<CWriteVO> clist= cartDAO.listCCart(email);
		request.setAttribute("address", mVo);//배송지 입력
		request.setAttribute("alist", alist);;
		request.setAttribute("clist", clist);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
}
}

//		ArrayList<CartVO> cartList = cartDAO.listCart(email);
//		int totalPrice = 0;
//		for (CartVO cartVO : cartList) {
//			totalPrice += cartVO.getPrice() * cartVO.getQuantity();
//		}
//가격 입력

//		request.setAttribute("cartList", cartList);
//		request.setAttribute("totalPrice", totalPrice);


//	request.setAttribute("list", list);
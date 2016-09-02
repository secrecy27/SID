package com.sid.controller.action.customer;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sid.controller.Action;
import com.sid.dao.HPageDAO;
import com.sid.dao.MemberDAO;
import com.sid.dto.HPageVO;
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
		
		HPageDAO hDao=HPageDAO.getInstance();
		ArrayList<HPageVO> list=hDao.listAll();
		
		
		request.setAttribute("address", mVo);
		request.setAttribute("list", list);
		RequestDispatcher dispatcher=request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
}
}

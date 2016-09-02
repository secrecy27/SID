package com.sid.controller.action.customer;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sid.controller.Action;
import com.sid.dao.MemberDAO;
import com.sid.dto.MemberVO;

public class Customer_Accountchange_Action implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "customer/customer_Accountchange.jsp";
		
		MemberDAO mDao=MemberDAO.getInstance();
		MemberVO mVo=new MemberVO();
		
		HttpSession session=request.getSession();
		String email=(String)session.getAttribute("email");
		mVo=mDao.getMember(email);
		
		request.setAttribute("nickname", mVo.getNickname());
		request.setAttribute("address", mVo.getAddress() );
		request.setAttribute("zipNum",mVo.getZipNum() );
		request.setAttribute("phone",mVo.getPhone());

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}

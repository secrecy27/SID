package com.sid.controller.action.customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sid.controller.Action;

public class Customer_Coupon_Action implements Action{
@Override
public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String url = "customer/customer_Coupon.jsp";

	RequestDispatcher dispatcher = request.getRequestDispatcher(url);
	dispatcher.forward(request, response);

}
}

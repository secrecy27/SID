package com.sid.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SidServlet")
public class SidServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SidServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String command = request.getParameter("command");
		System.out.println("요청받는거 확인"+command);
		
		ActionFactory af=ActionFactory.getInstance();
		Action action=af.getAction(command);
		
		if(action!=null){
			action.execute(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		 doGet(request, response); 
	}
}

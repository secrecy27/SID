package com.sid.controller.cpage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sid.controller.Action;
import com.sid.dao.CWriteDAO;

public class CpageDeleteAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CWriteDAO cDAO=CWriteDAO.getInstance();
		
		cDAO.deleteProduct(Integer.parseInt(request.getParameter("num")));
		
		String url="/SidServlet?command=cpage_list";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}

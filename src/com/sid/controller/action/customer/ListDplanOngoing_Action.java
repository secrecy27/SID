package com.sid.controller.action.customer;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sid.controller.Action;
import com.sid.dao.DPageDAO;
import com.sid.dto.DWriteVO;

public class ListDplanOngoing_Action implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="customer/customer_Dplan.jsp";
		
		DPageDAO dDao=DPageDAO.getInstance();
		DWriteVO dVo=new DWriteVO();
		ArrayList<DWriteVO> list=dDao.listAll();
		
		request.setAttribute("list", list);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}

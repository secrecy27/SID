package com.sid.controller.action.customer;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sid.controller.Action;
import com.sid.dao.LPocketDAO;
import com.sid.dto.LPocketVO;
import com.sid.dto.RPocketVO;

public class ListLPocketAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="";
		
		LPocketDAO lpDao=LPocketDAO.getInstance();
		LPocketVO lpVo=new LPocketVO();
		ArrayList<LPocketVO> list=lpDao.listAll();
		
		
		request.setAttribute("list", list);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}

package com.sid.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sid.controller.Action;
import com.sid.dao.AWriteDAO;
import com.sid.dao.ProductDAO;
import com.sid.dto.AWriteVO;
import com.sid.dto.ProductVO;

public class IndexAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "/member/index.jsp";

		AWriteDAO aDao = AWriteDAO.getInstance();
		ArrayList<AWriteVO> list = aDao.listAll();
		request.setAttribute("list", list);
		//인기페이지-a페이지
		System.out.println("ffd");
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}
}

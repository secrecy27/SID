package com.sid.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sid.controller.Action;
import com.sid.dao.AWriteDAO;
import com.sid.dao.CWriteDAO;
import com.sid.dto.AWriteVO;
import com.sid.dto.CWriteVO;

public class IndexAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "/member/index.jsp";

		AWriteDAO aDao = AWriteDAO.getInstance();
		ArrayList<AWriteVO> alist = aDao.listAll();
		request.setAttribute("alist", alist);
		//인기페이지-a페이지
		CWriteDAO cDao = CWriteDAO.getInstance();
		ArrayList<CWriteVO> clist = cDao.listAll();
		request.setAttribute("clist", clist);
		//인기페이지-c페이지
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}
}

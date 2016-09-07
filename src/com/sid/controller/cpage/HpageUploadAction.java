package com.sid.controller.cpage;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sid.controller.Action;
import com.sid.dao.CWriteDAO;
import com.sid.dto.CWriteVO;

public class HpageUploadAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "member/Cpage.jsp";

	 	CWriteDAO cDao=CWriteDAO.getInstance();
	 	
	 	
	 	
	 	ArrayList<CWriteVO> list = cDao.listAll();

		request.setAttribute("list", list);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
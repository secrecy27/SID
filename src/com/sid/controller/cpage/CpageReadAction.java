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
import com.sid.dto.HashtagVO;

public class CpageReadAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "member/Citem.jsp";

		CWriteDAO cDao = CWriteDAO.getInstance();
		CWriteVO cVo = new CWriteVO();

		ArrayList<HashtagVO> list = new ArrayList<>();

		cVo = cDao.readItem(Integer.parseInt(request.getParameter("num")));
		list = cDao.readHashtag(Integer.parseInt(request.getParameter("num")));

		request.setAttribute("cpage", cVo);
		request.setAttribute("hashtag", list);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}

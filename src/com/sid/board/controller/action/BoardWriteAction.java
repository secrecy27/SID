package com.sid.board.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sid.dao.BoardDAO;
import com.sid.dto.BoardVO;

public class BoardWriteAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "/BoardServlet?command=board_list";

		BoardVO bVo = new BoardVO();
		bVo.setTitle(request.getParameter("title"));
		bVo.setContent(request.getParameter("content"));
		BoardDAO bDao = BoardDAO.getInstance();
		bDao.insertBoard(bVo);

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	
	}
}

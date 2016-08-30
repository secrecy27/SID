package com.sid.board.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sid.dao.BoardDAO;
import com.sid.dto.BoardVO;

public class BoardWriteAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BoardVO bVo = new BoardVO();
		bVo.setTitle(request.getParameter("name"));
		bVo.setContent(request.getParameter("pass"));
		BoardDAO bDao = BoardDAO.getInstance();
		bDao.insertBoard(bVo);
		new BoardListAction().execute(request, response);
	}
}

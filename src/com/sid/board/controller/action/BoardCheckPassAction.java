package com.sid.board.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sid.dao.BoardDAO;
import com.sid.dto.BoardVO;


public class BoardCheckPassAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = null;
		String num = request.getParameter("num");
		/*String pass = request.getParameter("pass");
		BoardDAO bDao = BoardDAO.getInstance();
		BoardVO bVo = bDao.selectOneBoardByNum(num);
		if (bVo.getPass().equals(pass)) { // ?���?
			url = "board/checkSuccess.jsp";
		} else {// ?��?��
			url = "board/boardCheckPass.jsp";
			request.setAttribute("message", "비�?번호�? ???��?��?��?��.");
		}*/
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}

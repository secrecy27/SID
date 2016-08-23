package com.sid.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sid.controller.Action;
import com.sid.dao.QnaDAO;
import com.sid.dto.QnaVO;

public class AdminQnaListAction implements Action {
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "admin/qna/qnaList.jsp";
		QnaDAO qnaDAO = QnaDAO.getInstance();
		ArrayList<QnaVO> qnaList = qnaDAO.listAllQna();
		request.setAttribute("qnaList", qnaList);
		request.getRequestDispatcher(url).forward(request, response);
	}
}

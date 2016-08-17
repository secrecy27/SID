package com.sid.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sid.controller.Action;
import com.sid.dao.QnaDAO;
import com.sid.dto.MemberVO;
import com.sid.dto.QnaVO;

public class QnaListAction implements Action {
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "qna/qnaList.jsp";
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		if (loginUser == null) {
			url = "SidServlet?command=login_form";
		} else {
			QnaDAO qnaDAO = QnaDAO.getInstance();
			ArrayList<QnaVO> qnaList = qnaDAO.listQna(loginUser.getEmail());
			request.setAttribute("qnaList", qnaList);
		}
		request.getRequestDispatcher(url).forward(request, response);
	}
}

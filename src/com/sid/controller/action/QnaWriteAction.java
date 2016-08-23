package com.sid.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sid.controller.Action;
import com.sid.dao.QnaDAO;
import com.sid.dto.MemberVO;
import com.sid.dto.QnaVO;

public class QnaWriteAction implements Action {
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "SidServlet?command=qna_list";
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		if (loginUser == null) {
			url = "SidServlet?command=login_form";
		} else {
			QnaVO qnaVO = new QnaVO();
			qnaVO.setSubject(request.getParameter("subject"));
			qnaVO.setContent(request.getParameter("content"));
			QnaDAO qnaDAO = QnaDAO.getInstance();
			qnaDAO.insertqna(qnaVO, loginUser.getEmail());
		}
		response.sendRedirect(url);
	}
}

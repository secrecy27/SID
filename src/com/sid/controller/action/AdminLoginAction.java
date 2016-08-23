package com.sid.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sid.controller.Action;
import com.sid.dao.WorkerDAO;

public class AdminLoginAction implements Action {
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "SidServlet?command=admin_login_form";
		String msg = "";
		String workerEmail = request.getParameter("workerEmail").trim();
		String workerPwd = request.getParameter("workerPwd").trim();
		WorkerDAO workerDAO = WorkerDAO.getInstance();
		int result = workerDAO.workerCheck(workerEmail, workerPwd);
		if (result == 1) {
			HttpSession session = request.getSession();
			session.setAttribute("workerEmail", workerEmail);
			url = "SidServlet?command=admin_product_list";
		} else if (result == 0) {
			msg = "비밀번호를 확인하세요.";
		} else if (result == -1) {
			msg = "아이디를 확인하세요.";
		}
		request.setAttribute("message", msg);
		request.getRequestDispatcher(url).forward(request, response);
	}
}

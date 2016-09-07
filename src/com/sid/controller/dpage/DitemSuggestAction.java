package com.sid.controller.dpage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sid.controller.Action;
import com.sid.dao.DPageDAO;
import com.sid.dto.DSuggestVO;
import com.sid.dto.DWriteVO;

public class DitemSuggestAction implements Action{
	 @Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 	String url="/SidServlet?command=read_dpage&num="+request.getParameter("num");
		 	
		 	HttpSession session=request.getSession();
		 	DPageDAO dao=DPageDAO.getInstance();
		 	DSuggestVO dVo=new DSuggestVO();
			dVo.setDesignerEmail((String)session.getAttribute("email"));
			dVo.setdWriteId(Integer.parseInt(request.getParameter("num")));
			dVo.setNeedCost(Integer.parseInt(request.getParameter("needCost")));
			dVo.setNeedTime(Integer.parseInt(request.getParameter("needTime")));

			//dao.re
			int result=dao.suggestItem(dVo);
			
			if(result>0){
				System.out.println("suggest item success");
			}else{
				System.out.println("suggest item fail");
			}
					
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
	}
}

package com.sid.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sid.controller.Action;
import com.sid.dao.DPageDAO;
import com.sid.dto.DWriteVO;

public class DWriteAction implements Action{
	 @Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 	String url="/SidServlet?command=list_dpage";
		 	System.out.println("dwrite");
		 	DWriteVO dVo=new DWriteVO();
		 	dVo.setImageUrl(request.getParameter("imageUrl"));
		 	dVo.setStandardDate(request.getParameter("standardDate"));
		 	dVo.setEndDate(request.getParameter("endDate"));
		 	if(request.getParameter("condition")!=null)
		 	{
		 		
		 	   dVo.setCondition(Integer.parseInt(request.getParameter("condition")));
		 	}
		 	dVo.setCost(Integer.parseInt(request.getParameter("cost")));
		 	dVo.setPoint(request.getParameter("point"));
		 	dVo.setExpl(request.getParameter("expl"));
			
		 	System.out.println();
		 		DPageDAO dao = DPageDAO.getInstance();
				dao.insertImage(dVo);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
	}
}

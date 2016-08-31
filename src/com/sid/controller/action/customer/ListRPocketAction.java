package com.sid.controller.action.customer;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sid.controller.Action;
import com.sid.dao.BPageDAO;
import com.sid.dao.RPocketDAO;
import com.sid.dto.BWriteVO;
import com.sid.dto.RPocketVO;

public class ListRPocketAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="customer/customer_Pocket.jsp";
		
		
		RPocketDAO rpDao=RPocketDAO.getInstance();
		RPocketVO rpVo=new RPocketVO();
		BPageDAO bDao=BPageDAO.getInstance();
		HttpSession session=request.getSession();
	
		ArrayList<Integer> rlist=new ArrayList<Integer>();
		ArrayList<BWriteVO> blist=new ArrayList<BWriteVO>();
		
		rlist=rpDao.list(Integer.parseInt(request.getParameter("num")),(String)session.getAttribute("email"));
		
		for(int i=0; i<rlist.size(); i++){
			blist.add(bDao.readItem(rlist.get(i)));
		}
		request.setAttribute("blist", blist);
		request.setAttribute("rlist", rlist);
		RequestDispatcher dispatcher=request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}

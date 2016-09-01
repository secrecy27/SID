package com.sid.controller.action.customer;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sid.controller.Action;
import com.sid.dao.LPocketDAO;
import com.sid.dto.LPocketVO;
import com.sid.dto.imageVO;

public class ListLPocketAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="customer/customer_Pocket.jsp";
		
		LPocketDAO lpDao=LPocketDAO.getInstance();
		LPocketVO lpVo=new LPocketVO();
		HttpSession session=request.getSession();
		
		ArrayList<Integer> llist=new ArrayList<Integer>();
		ArrayList<imageVO> imagelist=new ArrayList<imageVO>();
		
		llist=lpDao.list((String)session.getAttribute("email"));
		
		for(int i=0; i<llist.size(); i++){
			System.out.println("llist"+llist.get(i));
			imagelist.add(imageDao.readItem(llist.get(i)));
			
		}
		
		request.setAttribute("imagelist", imagelist);
		request.setAttribute("llist", llist);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}

package com.sid.controller.action.customer;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sid.controller.Action;
import com.sid.dao.AWriteDAO;
import com.sid.dao.LPocketDAO;
import com.sid.dto.AWriteVO;
import com.sid.dto.HashtagVO;

public class ListLPocketAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="customer/customer_Pocket.jsp";
		
		LPocketDAO lpDao=LPocketDAO.getInstance();
		AWriteDAO aDao=AWriteDAO.getInstance();
		HttpSession session=request.getSession();
		
		ArrayList<Integer> llist=new ArrayList<Integer>();
		ArrayList<AWriteVO> alist=new ArrayList<AWriteVO>();
		
		ArrayList<Integer> a=new ArrayList<Integer>();
		ArrayList<HashtagVO> hlist=new ArrayList<HashtagVO>();
		
		llist=lpDao.list((String)session.getAttribute("email"));
		a=lpDao.list((String)session.getAttribute("email"));
		
		for(int i=0; i<llist.size(); i++){
			System.out.println("llist"+llist.get(i));
			alist.add(aDao.readItem(llist.get(i)));
			hlist.addAll(aDao.readHashtag(a.get(i)));
		}
		
		request.setAttribute("alist", alist);
		request.setAttribute("hlist", hlist);
		RequestDispatcher dispatcher=request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}
}

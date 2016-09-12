package com.sid.controller.hpage;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sid.controller.Action;
import com.sid.dao.AWriteDAO;
import com.sid.dao.BPageDAO;
import com.sid.dao.DPageDAO;
import com.sid.dao.LPocketDAO;
import com.sid.dao.MemberDAO;
import com.sid.dao.RPocketDAO;
import com.sid.dto.AWriteVO;
import com.sid.dto.BWriteVO;
import com.sid.dto.DSuggestVO;
import com.sid.dto.DWriteVO;
import com.sid.dto.MemberVO;

public class HpageListAction implements Action{
	 @Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 	String url="member/sss.jsp";
		 	
		 	LPocketDAO lpDao=LPocketDAO.getInstance();
			AWriteDAO aDao=AWriteDAO.getInstance();
			RPocketDAO rpDao = RPocketDAO.getInstance();
			BPageDAO bDao = BPageDAO.getInstance();
			HttpSession session = request.getSession();

			System.out.println("list hpage action");
			
			ArrayList<Integer> rlist = new ArrayList<Integer>();
			ArrayList<BWriteVO> blist = new ArrayList<BWriteVO>();
			
			rlist = rpDao.list((String)session.getAttribute("email"));

			for (int i = 0; i < rlist.size(); i++) {
				System.out.println(" rlist "+rlist.get(i));
				blist.add(bDao.readItem(rlist.get(i)));
			}
			request.setAttribute("blist", blist);
			
			ArrayList<Integer> llist=new ArrayList<Integer>();
			ArrayList<AWriteVO> alist=new ArrayList<AWriteVO>();
			
			llist=lpDao.list((String)session.getAttribute("email"));
			
			for(int i=0; i<llist.size(); i++){
				System.out.println("llist"+llist.get(i));
				alist.add(aDao.readItem(llist.get(i)));
			}
			request.setAttribute("alist", alist);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
	}
}

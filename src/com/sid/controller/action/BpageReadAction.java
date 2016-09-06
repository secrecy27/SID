package com.sid.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sid.controller.Action;
import com.sid.dao.BPageDAO;
import com.sid.dao.MemberDAO;
import com.sid.dto.BWriteVO;
import com.sid.dto.HashtagVO;
import com.sid.dto.MemberVO;

public class BpageReadAction implements Action{
	 @Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 	String url="member/Bitem.jsp";
		 	
		 	BPageDAO dao=BPageDAO.getInstance();
		 	BWriteVO bVo=new BWriteVO();
		 	MemberVO mVo=new MemberVO();
			MemberDAO mdao=MemberDAO.getInstance();
		 	
		 	ArrayList<HashtagVO> list=new ArrayList<>();
					 	
		 	bVo=dao.readItem(Integer.parseInt(request.getParameter("num")));
		 	list=dao.readHashtag(Integer.parseInt(request.getParameter("num")));
		 	System.out.println("getUserEmail! : "+bVo.getUserEmail());
		 	mVo=mdao.getMember(bVo.getUserEmail());
			request.setAttribute("bpage", bVo);
			request.setAttribute("hashtag", list);
			request.setAttribute("designer", mVo);
			System.out.println("email : "+mVo.getEmail());
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
	}
}

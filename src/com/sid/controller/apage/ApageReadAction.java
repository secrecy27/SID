package com.sid.controller.apage;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sid.controller.Action;
import com.sid.dao.AWriteDAO;
import com.sid.dao.MemberDAO;
import com.sid.dto.AWriteVO;
import com.sid.dto.HashtagVO;
import com.sid.dto.MemberVO;

public class ApageReadAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "member/Aitem.jsp";
		
		AWriteDAO aDao=AWriteDAO.getInstance();
		AWriteVO aVo=new AWriteVO();
		
		ArrayList<HashtagVO> list=new ArrayList<>();
		
		aVo=aDao.readItem(Integer.parseInt(request.getParameter("num")));
		list=aDao.readHashtag(Integer.parseInt(request.getParameter("num")));
		System.out.println(request.getParameter("num"));
		System.out.println(list);
		
		request.setAttribute("apage", aVo);
		request.setAttribute("hashtag", list);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}

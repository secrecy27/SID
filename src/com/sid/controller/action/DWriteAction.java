package com.sid.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sid.controller.Action;

public class DWriteAction implements Action{
 @Override
public void execute(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
	 	String url="SidServlet?command=DWrite";
}
}

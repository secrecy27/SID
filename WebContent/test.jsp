<%@page import="com.sid.dto.MemberVO"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="com.google.gson.JsonArray"%>
<%@page import="com.google.gson.JsonParser"%>
<%@page import="com.google.gson.JsonObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
   request.setCharacterEncoding("UTF-8");
   String name = request.getHeader("abc");
   MemberVO mVo = null;
   Gson gson = new Gson();
   try {

      mVo = gson.fromJson(name, MemberVO.class);

   } catch (Exception e) {
   }
   Connection conn = null;
   Statement stmt = null;
   out.clearBuffer();
   try {

      Class.forName("com.mysql.jdbc.Driver");
      conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/sid", "root", "root");
      if (conn == null)
         throw new Exception("데이터베이스에 연결할 수 없습니다.");

      stmt = conn.createStatement();
      String command = String.format("insert into mobiletest values('%s', '%s','%s');", mVo.getNickname(),
            mVo.getEmail(), mVo.getAddress());
      int rowNum = stmt.executeUpdate(command);
      if (rowNum < 1) {
         out.print("fail");
         throw new Exception("데이터를 DB에 입력할 수 없습니다.");
      } else {
         out.print("success");
      }
   }
   finally {
      try {
         stmt.close();
      }
      catch (Exception ignored) {
      }
      try {
         conn.close();
      } catch (Exception ignored) {
      }
   }
%>
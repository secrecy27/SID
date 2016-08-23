package com.sid.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.sid.dto.ImageVO;
import com.sid.util.DBManager;

public class ImageDAO {
 private ImageDAO(){
	 
 }
 
 private static ImageDAO instance = new ImageDAO();
 
 public static ImageDAO getInstance(){
	 return instance;
 }
 public int insertImage(ImageVO imageVO){
	 int result= -1;
	 String sql="insert into Image value(?,?,?,?,?,?,?,?,?)";
	 Connection conn=null;
	 PreparedStatement pstmt=null;
	 try{
		 conn=DBManager.getConnection();
		 pstmt=conn.prepareStatement(sql);
		 
		 
	 }catch(Exception e){
		 e.printStackTrace();
	 }finally{
		 DBManager.close(conn, pstmt);
	 }
	 return result;
 }
}

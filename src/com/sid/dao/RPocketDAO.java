package com.sid.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.sid.controller.JDBCUtil;
import com.sid.dto.DWriteVO;
import com.sid.dto.RPocketVO;

public class RPocketDAO {
	private static RPocketDAO instance =new RPocketDAO();
	
	public static RPocketDAO getInstance(){
		return instance;
	}
	
	public int insertImage(RPocketVO pVo){
		 int result= -1;
		 String sql="INSERT INTO RPocket(email,RPocketId,imageId) VALUES(?,?,?)";
		 Connection conn=null;
		 PreparedStatement pstmt=null;
		 
		try {
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(sql);
				
			pstmt.setString(1, pVo.getEmail());
			pstmt.setInt(2, pVo.getPocketId());
			pstmt.setInt(3, pVo.getBwriteId());
			
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt, conn);
		}
		return result;
	 }
	 
	 public RPocketVO readItem(int num){
		 int result= -1;
		 String sql="select * from RPocket where email=?";
			Connection conn = null;
			PreparedStatement stmt = null;
			ResultSet rst = null;
			RPocketVO pVo = new RPocketVO();
			System.out.println("readItem"+num);
			
			try{
				conn = JDBCUtil.getConnection();
				stmt = conn.prepareStatement(sql);
				stmt.setInt(1, num);
				rst = stmt.executeQuery();
				
				
				if(rst.next()){
					pVo.setEmail(rst.getString("email"));
					pVo.setBwriteId(rst.getInt("bwriteId"));
					pVo.setPocketId(rst.getInt("RPocketId"));
				}
					
			}catch(SQLException e){
				System.out.println("read item error : " + e);
			}finally{
				JDBCUtil.close(rst, stmt, conn);
			}
			return pVo;
	 }
	 
	 public ArrayList<RPocketVO> listAll(){
		 
			ArrayList<RPocketVO> list = new ArrayList<RPocketVO>();
			String sql="select * from RPocket";
			 
			Connection conn = null;
			PreparedStatement stmt = null;
			ResultSet rst = null;
			RPocketVO pVo = null;
			try{
				conn = JDBCUtil.getConnection();
				stmt = conn.prepareStatement(sql);
				rst = stmt.executeQuery();
				while(rst.next()){
					pVo = new RPocketVO();
					pVo.setEmail(rst.getString("email"));
					pVo.setPocketId(rst.getInt("RPocketId"));
					pVo.setBwriteId(rst.getInt("bwriteId"));
					list.add(pVo);
				}
			}catch(SQLException e){
				System.out.println("list error : " + e);
			}finally{
				JDBCUtil.close(rst, stmt, conn);
			}
			return list;
		}
	 
}

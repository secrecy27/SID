package com.sid.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.sid.controller.JDBCUtil;
import com.sid.dto.DWriteVO;

public class DPageDAO {
 private DPageDAO(){
	 
 }
 
 private static DPageDAO instance = new DPageDAO();
 
 public static DPageDAO getInstance(){
	 return instance;
 }
 public int insertImage(DWriteVO dVo){
	 int result= -1;
	 String sql="INSERT INTO dwrite(imageUrl, standardDate, endDate, cost, condi, point, expl) VALUES(?, ?, ?, ?, ?, ?, ?)";
	 Connection conn=null;
	 PreparedStatement pstmt=null;
	 
	try {
		conn = JDBCUtil.getConnection();
		pstmt = conn.prepareStatement(sql);
			
		pstmt.setString(1, dVo.getImageUrl());
		pstmt.setString(2, dVo.getStandardDate());
		pstmt.setString(3, dVo.getEndDate());
		pstmt.setInt(4, dVo.getCost());
		pstmt.setInt(5, dVo.getCondition());
		pstmt.setString(6, dVo.getPoint());
		pstmt.setString(7, dVo.getExpl());
		
		result = pstmt.executeUpdate();
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		JDBCUtil.close(pstmt, conn);
	}
	return result;
 }
 
 public DWriteVO readItem(int num){
	 int result= -1;
	 String sql="select * from dwrite where dWriteId=?";
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rst = null;
		DWriteVO vo = new DWriteVO();
		System.out.println("readItem"+num);
		
		try{
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, num);
			rst = stmt.executeQuery();
			
			
			if(rst.next()){
				vo.setDWriteId(rst.getInt("dWriteId"));
				vo.setImageUrl(rst.getString("imageUrl"));
				vo.setStandardDate(rst.getString("standardDate"));
				vo.setEndDate(rst.getString("endDate"));
				vo.setCost(rst.getInt("cost"));
				vo.setCondition(rst.getInt("condi"));
				vo.setPoint(rst.getString("point"));
				vo.setExpl(rst.getString("expl"));
			}
				
		}catch(SQLException e){
			System.out.println("read item error : " + e);
		}finally{
			JDBCUtil.close(rst, stmt, conn);
		}
		return vo;
 }
 
 public ArrayList<DWriteVO> listAll(){
	 
		ArrayList<DWriteVO> list = new ArrayList<DWriteVO>();
		String sql="select * from dwrite order by postDate desc";
		 
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rst = null;
		DWriteVO vo = null;
		try{
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(sql);
			rst = stmt.executeQuery();
			while(rst.next()){
				vo = new DWriteVO();
				vo.setDWriteId(rst.getInt("dWriteId"));
				vo.setImageUrl(rst.getString("imageUrl"));
				vo.setStandardDate(rst.getString("standardDate"));
				vo.setEndDate(rst.getString("endDate"));
				vo.setCost(rst.getInt("cost"));
				vo.setCondition(rst.getInt("condi"));
				vo.setPoint(rst.getString("point"));
				vo.setExpl(rst.getString("expl"));
				list.add(vo);
			}
		}catch(SQLException e){
			System.out.println("list error : " + e);
		}finally{
			JDBCUtil.close(rst, stmt, conn);
		}
		return list;
	}
 
}

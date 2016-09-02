package com.sid.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.sid.controller.JDBCUtil;
import com.sid.dto.AWriteVO;
import com.sid.dto.BWriteVO;
import com.sid.util.DBManager;

public class AWriteDAO {
	private AWriteDAO() {

	}

	private static AWriteDAO instance = new AWriteDAO();

	public static AWriteDAO getInstance() {
		return instance;
	}

	public int insertImage(AWriteVO aVo) {
		int result = -1;
		String sql = "insert into awrite(imageUrl,cost,expl,userEmail) VALUES(?,?,?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, aVo.getImageUrl());
			pstmt.setInt(2, aVo.getCost());
			pstmt.setString(3, aVo.getExpl());
			pstmt.setString(4, aVo.getUserEmail());

			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt, conn);
		}
		return result;
	}
	
	public AWriteVO readItem(int num){
		 int result= -1;
		 String sql="select * from awrite where aWriteId=?";
			Connection conn = null;
			PreparedStatement stmt = null;
			ResultSet rst = null;
			AWriteVO vo = new AWriteVO();
			System.out.println("a readItem"+num);
			
			try{
				conn = JDBCUtil.getConnection();
				stmt = conn.prepareStatement(sql);
				stmt.setInt(1, num);
				rst = stmt.executeQuery();
				
				
				if(rst.next()){
					vo.setaWriteId(rst.getInt("aWriteId"));
					vo.setImageUrl(rst.getString("imageUrl"));
					vo.setCost(rst.getInt("cost"));
					vo.setExpl(rst.getString("expl"));
				}
					
			}catch(SQLException e){
				System.out.println("a read item error : " + e);
			}finally{
				JDBCUtil.close(rst, stmt, conn);
			}
			return vo;
	 }
	 
	 public ArrayList<AWriteVO> listAll(){
		 
			ArrayList<AWriteVO> list = new ArrayList<AWriteVO>();
			String sql="select * from awrite order by postDate desc";
			 
			Connection conn = null;
			PreparedStatement stmt = null;
			ResultSet rst = null;
			AWriteVO vo = null;
			try{
				conn = JDBCUtil.getConnection();
				stmt = conn.prepareStatement(sql);
				rst = stmt.executeQuery();
				while(rst.next()){
					vo = new AWriteVO();
					vo.setaWriteId(rst.getInt("aWriteId"));
					vo.setImageUrl(rst.getString("imageUrl"));
					vo.setCost(rst.getInt("cost"));
					vo.setExpl(rst.getString("expl"));
					list.add(vo);
				}
			}catch(SQLException e){
				System.out.println("a list error : " + e);
			}finally{
				JDBCUtil.close(rst, stmt, conn);
			}
			return list;
		}
	 
}
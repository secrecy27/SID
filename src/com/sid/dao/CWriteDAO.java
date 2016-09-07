package com.sid.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.sid.controller.JDBCUtil;
import com.sid.dto.AWriteVO;
import com.sid.dto.CWriteVO;
import com.sid.dto.HashtagVO;

public class CWriteDAO {
	
		private CWriteDAO() {

		}

		private static CWriteDAO instance = new CWriteDAO();

		public static CWriteDAO getInstance() {
			return instance;
		}

		public int insertImage(CWriteVO cVo) {
			int result = -1;
			String sql = "insert into cwrite(imageUrl,cost) VALUES(?,?)";
			Connection conn = null;
			PreparedStatement pstmt = null;
			try {
				conn = JDBCUtil.getConnection();
				pstmt = conn.prepareStatement(sql);

				pstmt.setString(1, cVo.getImageUrl());
				pstmt.setInt(2, cVo.getCost());

				result = pstmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				JDBCUtil.close(pstmt, conn);
			}
			return result;
		}

		public int insertHashtag(int id, String[] hashtag) {
			int result = -1;
			String sql = "INSERT INTO hashtag(cWriteId, hashtag) VALUES(?,?)";
			Connection conn = null;
			conn = JDBCUtil.getConnection();
			PreparedStatement ps=null;
				
			try {
				ps=conn.prepareStatement(sql);
				
				
				for (int i=0;i<hashtag.length;i++) {

					ps.setInt(1, id);
					ps.setString(2, hashtag[i]);
					ps.addBatch();
				}
				ps.executeBatch();
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				JDBCUtil.close(ps, conn);
			}

			return result;
		}
		
		public CWriteVO readItem(int num){
			 int result= -1;
			 String sql="select * from cwrite where cWriteId=?";
				Connection conn = null;
				PreparedStatement stmt = null;
				ResultSet rst = null;
				CWriteVO vo = new CWriteVO();
				System.out.println("a readItem"+num);
				
				try{
					conn = JDBCUtil.getConnection();
					stmt = conn.prepareStatement(sql);
					stmt.setInt(1, num);
					rst = stmt.executeQuery();
					
					
					if(rst.next()){
						vo.setcWriteId(rst.getInt("cWriteId"));
						vo.setImageUrl(rst.getString("imageUrl"));
						vo.setCost(rst.getInt("cost"));
					}
						
				}catch(SQLException e){
					System.out.println("c read item error : " + e);
				}finally{
					JDBCUtil.close(rst, stmt, conn);
				}
				return vo;
		 }
		
		public ArrayList<HashtagVO> readHashtag(int num) {
			String sql = "select * from hashtag where cWriteId=?";
			Connection conn = null;
			PreparedStatement stmt = null;
			ResultSet rst = null;
			HashtagVO hVo=null;
			ArrayList<HashtagVO> list=new ArrayList<HashtagVO>();

			try {
				conn = JDBCUtil.getConnection();
				stmt = conn.prepareStatement(sql);
				stmt.setInt(1, num);
				rst = stmt.executeQuery();
				System.out.println("c readhashtag" + num);

				while (rst.next()) {
					hVo=new HashtagVO();
					hVo.setHashtag(rst.getString("hashtag"));
					list.add(hVo);
					System.out.println(rst.getString("hashtag"));
				}

			} catch (SQLException e) {
				System.out.println("c hashtag item error : " + e);
			} finally {
				JDBCUtil.close(rst, stmt, conn);
			}
			
			return list;
		}
		 
		 public ArrayList<CWriteVO> listAll(){
			 
				ArrayList<CWriteVO> list = new ArrayList<CWriteVO>();
				String sql="select * from cwrite order by indate desc";
				 
				Connection conn = null;
				PreparedStatement stmt = null;
				ResultSet rst = null;
				CWriteVO vo = null;
				try{
					conn = JDBCUtil.getConnection();
					stmt = conn.prepareStatement(sql);
					rst = stmt.executeQuery();
					while(rst.next()){
						vo = new CWriteVO();
						vo.setcWriteId(rst.getInt("cWriteId"));
						vo.setImageUrl(rst.getString("imageUrl"));
						vo.setCost(rst.getInt("cost"));
						list.add(vo);
					}
				}catch(SQLException e){
					System.out.println("c list error : " + e);
				}finally{
					JDBCUtil.close(rst, stmt, conn);
				}
				return list;
			}
		 
	}

package com.sid.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.Statement;
import com.sid.controller.JDBCUtil;
import com.sid.dto.BWriteVO;
import com.sid.dto.DWriteVO;

public class BPageDAO {
	private BPageDAO() {

	}

	private static BPageDAO instance = new BPageDAO();

	public static BPageDAO getInstance() {
		return instance;
	}

	public int insertImage(BWriteVO bVo) {
		int result = -1;

		String sql = "INSERT INTO bwrite(imageUrl, cost, expl,userEmail) VALUES(?, ?, ?, ?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rst = null;
		try {
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);

			pstmt.setString(1, bVo.getImageUrl());
			pstmt.setInt(2, bVo.getCost());
			pstmt.setString(3, bVo.getExpl());
			pstmt.setString(4, bVo.getUserEmail());

			int rownum = pstmt.executeUpdate();
			rst = pstmt.getGeneratedKeys();
			String autoInsertedKey = (rst.next()) ? rst.getString(1) : null;

			result = Integer.parseInt(autoInsertedKey);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt, conn);
		}

		return result;
	}

	public int insertHashtag(int id, String[] hashtag) {
		int result = -1;
		String sql = "INSERT INTO hashtag(bWriteId, hashtag) VALUES(?,?)";
		Connection conn = null;
		conn = JDBCUtil.getConnection();
		PreparedStatement ps=null;
			
		try {
			conn.prepareStatement(sql);
			
			
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

	public BWriteVO readItem(int num) {
		int result = -1;
		String sql = "select * from bwrite where bWriteId=?";
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rst = null;
		BWriteVO vo = new BWriteVO();
		System.out.println("b readItem" + num);

		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, num);
			rst = stmt.executeQuery();

			if (rst.next()) {
				vo.setbWriteId(rst.getInt("bWriteId"));
				vo.setImageUrl(rst.getString("imageUrl"));
				vo.setCost(rst.getInt("cost"));
				vo.setExpl(rst.getString("expl"));
			}

		} catch (SQLException e) {
			System.out.println("b read item error : " + e);
		} finally {
			JDBCUtil.close(rst, stmt, conn);
		}
		return vo;
	}

	public ArrayList<BWriteVO> listAll() {

		ArrayList<BWriteVO> list = new ArrayList<BWriteVO>();
		String sql = "select * from bwrite order by postDate desc";

		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rst = null;
		BWriteVO vo = null;
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(sql);
			rst = stmt.executeQuery();
			while (rst.next()) {
				vo = new BWriteVO();
				vo.setbWriteId(rst.getInt("bWriteId"));
				vo.setImageUrl(rst.getString("imageUrl"));
				vo.setCost(rst.getInt("cost"));
				vo.setExpl(rst.getString("expl"));
				list.add(vo);
			}
		} catch (SQLException e) {
			System.out.println("b list error : " + e);
		} finally {
			JDBCUtil.close(rst, stmt, conn);
		}
		return list;
	}

}

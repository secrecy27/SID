package com.sid.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.sid.controller.JDBCUtil;
import com.sid.dto.RPocketVO;

public class RPocketDAO {
	private static RPocketDAO instance = new RPocketDAO();

	public static RPocketDAO getInstance() {
		return instance;
	}

	public int insertPocket(RPocketVO pVo) {
		int result = -1;
		String sql = "INSERT INTO rpocket(email,RPocketId) VALUES(?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, pVo.getEmail());
			pstmt.setInt(2, pVo.getPocketId());
			
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt, conn);
		}
		return result;
	}

	public RPocketVO readItem(int num) {
		int result = -1;
		String sql = "select * from rpocket where email=?";
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rst = null;
		RPocketVO pVo = new RPocketVO();
		System.out.println("readItem" + num);

		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, num);
			rst = stmt.executeQuery();

			if (rst.next()) {
				pVo.setEmail(rst.getString("email"));
				pVo.setPocketId(rst.getInt("RPocketId"));
			}

		} catch (SQLException e) {
			System.out.println("read item error : " + e);
		} finally {
			JDBCUtil.close(rst, stmt, conn);
		}
		return pVo;
	}

	public ArrayList<RPocketVO> listAll() {

		ArrayList<RPocketVO> list = new ArrayList<RPocketVO>();
		String sql = "select * from rpocket";

		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rst = null;
		RPocketVO pVo = null;
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(sql);
			rst = stmt.executeQuery();
			while (rst.next()) {
				pVo = new RPocketVO();
				pVo.setEmail(rst.getString("email"));
				pVo.setPocketId(rst.getInt("RPocketId"));
				list.add(pVo);
			}
		} catch (SQLException e) {
			System.out.println("list error : " + e);
		} finally {
			JDBCUtil.close(rst, stmt, conn);
		}
		return list;
	}

	public ArrayList<Integer> list(int num, String email) {
		ArrayList<Integer> list = new ArrayList<Integer>();
		String sql = "select bwriteId from rpocket,rpocket2 where rpocket.pocketId=? and email=? and rpocket.pocketId=rpocket2.pocketId";
		
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rst = null;
		RPocketVO pVo = null;
		
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, num);
			stmt.setString(2, email);
			rst = stmt.executeQuery();
			
			list.add(rst.getInt("bwriteId"));
		
		} catch (SQLException e) {
			System.out.println("list error : " + e);
		} finally {
			JDBCUtil.close(rst, stmt, conn);
		}
		return list;

	}
}

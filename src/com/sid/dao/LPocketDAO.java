package com.sid.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.sid.controller.JDBCUtil;
import com.sid.dto.LPocketVO;
import com.sid.dto.RPocketVO;

public class LPocketDAO {
	private static LPocketDAO instance = new LPocketDAO();

	public static LPocketDAO getInstance() {
		return instance;
	}

	public int insertImage(LPocketVO pVo) {
		int result = -1;
		String sql = "INSERT INTO LPocket(email,LPocketId) VALUES(?,?)";
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

	public LPocketVO readItem(int num) {
		int result = -1;
		String sql = "select * from LPocket where email=?";
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rst = null;
		LPocketVO pVo = new LPocketVO();
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

	public ArrayList<LPocketVO> listAll() {

		ArrayList<LPocketVO> list = new ArrayList<LPocketVO>();
		String sql = "select * from LPocket";

		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rst = null;
		LPocketVO pVo = null;
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(sql);
			rst = stmt.executeQuery();
			while (rst.next()) {
				pVo = new LPocketVO();
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

	public ArrayList<Integer> list(String email) {
		ArrayList<Integer> list = new ArrayList<Integer>();
		String sql = "select * from lpocket a LEFT JOIN lpocket2 b ON(a.pocketId=b.pocketId) where a.email=?";

		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rst = null;

		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, email);
			rst = stmt.executeQuery();
			
			while (rst.next()) {
				list.add(rst.getInt("imageId"));
			}
		} catch (SQLException e) {
			System.out.println("lpocket list error : " + e);
		} finally {
			JDBCUtil.close(rst, stmt, conn);
		}
		return list;

	}

}

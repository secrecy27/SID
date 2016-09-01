package com.sid.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.sid.controller.JDBCUtil;
import com.sid.dto.DSuggestVO;
import com.sid.dto.DWriteVO;

public class DPageDAO {
	private DPageDAO() {

	}

	private static DPageDAO instance = new DPageDAO();

	public static DPageDAO getInstance() {
		return instance;
	}

	public int insertImage(DWriteVO dVo) {
		int result = -1;
		String sql = "INSERT INTO dwrite(imageUrl, standardDate, endDate, cost, condi, point, expl,imageName,userEmail) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)";
		Connection conn = null;
		PreparedStatement pstmt = null;

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
			pstmt.setString(8, dVo.getImageName());
			pstmt.setString(9, dVo.getUserEmail());

			result = pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("insert image error " + e);
		} finally {
			JDBCUtil.close(pstmt, conn);
		}
		return result;
	}

	public DWriteVO readItem(int num) {
		int result = -1;
		String sql = "select * from dwrite where dWriteId=?";
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rst = null;
		DWriteVO vo = new DWriteVO();
		System.out.println("readItem" + num);

		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, num);
			rst = stmt.executeQuery();

			if (rst.next()) {
				vo.setdWriteId(rst.getInt("dWriteId"));
				vo.setImageUrl(rst.getString("imageUrl"));
				vo.setStandardDate(rst.getString("standardDate"));
				vo.setEndDate(rst.getString("endDate"));
				vo.setCost(rst.getInt("cost"));
				vo.setCondition(rst.getInt("condi"));
				vo.setPoint(rst.getString("point"));
				vo.setExpl(rst.getString("expl"));
			}

		} catch (SQLException e) {
			System.out.println("read item error : " + e);
		} finally {
			JDBCUtil.close(rst, stmt, conn);
		}
		return vo;
	}

	public int suggestItem(DSuggestVO dVo) {
		int result = -1;
		String sql = "INSERT INTO dsuggest(dWriteId,designerEmail,needTime,needCost) VALUES(?,?,?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, dVo.getdWriteId());
			pstmt.setString(2, dVo.getDesignerEmail());
			pstmt.setInt(3, dVo.getNeedTime());
			pstmt.setInt(4, dVo.getNeedCost());

			result = pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("suggest item error : " + e);
		} finally {
			JDBCUtil.close(pstmt, conn);
		}
		return result;
	}

	public ArrayList<DSuggestVO> listAllSuggest(int num) {

		ArrayList<DSuggestVO> list = new ArrayList<DSuggestVO>();
		String sql = "select * from dsuggest where dWriteId=?";

		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rst = null;
		DSuggestVO vo = null;
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, num);
			rst = stmt.executeQuery();

			while (rst.next()) {
				vo = new DSuggestVO();
				vo.setDesignerEmail(rst.getString("designerEmail"));
				vo.setNeedCost(rst.getInt("needCost"));
				vo.setNeedTime(rst.getInt("needTime"));
				list.add(vo);
			}
		} catch (SQLException e) {
			System.out.println("list suggest error : " + e);
		} finally {
			JDBCUtil.close(rst, stmt, conn);
		}
		return list;
	}

	public int countAllSuggest(int num) {
		String sql = "select count(*) from dsuggest where dWriteId=?";

		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rst = null;
		DSuggestVO vo = null;
		int result = 0;
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, num);
			rst = stmt.executeQuery();

			if (rst.next()) {
				result = rst.getInt(1);
			}

		} catch (SQLException e) {
			System.out.println("count all error : " + e);
		} finally {
			JDBCUtil.close(rst, stmt, conn);
		}
		return result;
	}

	public ArrayList<DWriteVO> listAll() {

		ArrayList<DWriteVO> list = new ArrayList<DWriteVO>();
		String sql = "select * from dwrite order by postDate desc";

		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rst = null;
		DWriteVO vo = null;
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(sql);
			rst = stmt.executeQuery();
			while (rst.next()) {
				vo = new DWriteVO();
				vo.setdWriteId(rst.getInt("dWriteId"));
				vo.setImageUrl(rst.getString("imageUrl"));
				vo.setStandardDate(rst.getString("standardDate"));
				vo.setEndDate(rst.getString("endDate"));
				vo.setCost(rst.getInt("cost"));
				vo.setCondition(rst.getInt("condi"));
				vo.setPoint(rst.getString("point"));
				vo.setExpl(rst.getString("expl"));
				list.add(vo);
			}
		} catch (SQLException e) {
			System.out.println("list error : " + e);
		} finally {
			JDBCUtil.close(rst, stmt, conn);
		}
		return list;
	}

}

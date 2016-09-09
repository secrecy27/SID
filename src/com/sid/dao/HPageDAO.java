package com.sid.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.sid.controller.JDBCUtil;
import com.sid.dto.DSuggestVO;
import com.sid.dto.DWriteVO;
import com.sid.dto.HUploadVO;
import com.sid.dto.MemberVO;
import com.sid.util.DBManager;

public class HPageDAO {
	private HPageDAO() {

	}

	private static HPageDAO instance = new HPageDAO() {
	};

	public static HPageDAO getInstance() {
		return instance;
	}

	public int insertImage(HUploadVO hVo) {
		int result = -1;
		String sql = "insert into hpage(hpageId,timageUrl,dimageUrl,tprice,dprice,price) values(?,?,?,?,?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);

		

			result = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return result;
	}

	public HUploadVO readItem(int num) {
		int result = -1;
		String sql = "select * from hpage where hpageId=?";
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rst = null;
		HUploadVO vo = new HUploadVO();
		System.out.println("readItem" + num);

		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, num);
			rst = stmt.executeQuery();

			if (rst.next()) {
		
			}

		} catch (SQLException e) {
			System.out.println("read item error : " + e);
		} finally {
			JDBCUtil.close(rst, stmt, conn);
		}
		return vo;
	}

	public ArrayList<HUploadVO> listAll() {

		ArrayList<HUploadVO> list = new ArrayList<HUploadVO>();
		String sql = "select * from hpage ";

		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rst = null;
		HUploadVO vo = null;

		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(sql);
			rst = stmt.executeQuery();
			
			while (rst.next()) {
				vo = new HUploadVO();

		

				
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
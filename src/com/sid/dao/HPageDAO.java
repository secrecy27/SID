package com.sid.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.sid.controller.JDBCUtil;
import com.sid.dto.DSuggestVO;
import com.sid.dto.DWriteVO;
import com.sid.dto.HPageVO;
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

	public int insertImage(HPageVO hVo) {
		int result = -1;
		String sql = "insert into hpage(hpageId,timageUrl,dimageUrl,tprice,dprice,price) values(?,?,?,?,?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, hVo.getHpageId());
			pstmt.setString(2, hVo.getTimageUrl());
			pstmt.setString(3, hVo.getDimageUrl());
			pstmt.setInt(4, hVo.getTprice());
			pstmt.setInt(5, hVo.getDprice());
			pstmt.setInt(6, hVo.getPrice());

			result = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return result;
	}

	public HPageVO readItem(int num) {
		int result = -1;
		String sql = "select * from hpage where hpageId=?";
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rst = null;
		HPageVO vo = new HPageVO();
		System.out.println("readItem" + num);

		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, num);
			rst = stmt.executeQuery();

			if (rst.next()) {
				vo.setHpageId(rst.getInt("hpageId"));
				vo.setTimageUrl(rst.getString("timageUrl"));
				vo.setdimageUrl(rst.getString("dimageUrl"));
				vo.setTprice(rst.getInt("tprice"));
				vo.setDprice(rst.getInt("dprice"));
				vo.setPrice(rst.getInt("price"));
			}

		} catch (SQLException e) {
			System.out.println("read item error : " + e);
		} finally {
			JDBCUtil.close(rst, stmt, conn);
		}
		return vo;
	}

	public ArrayList<HPageVO> listAll() {

		ArrayList<HPageVO> list = new ArrayList<HPageVO>();
		String sql = "select * from hpage ";

		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rst = null;
		HPageVO vo = null;

		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(sql);
			rst = stmt.executeQuery();
			
			while (rst.next()) {
				vo = new HPageVO();

				vo.setHpageId(rst.getInt("hpageId"));
				vo.setTimageUrl(rst.getString("timageUrl"));
				vo.setdimageUrl(rst.getString("dimageUrl"));
				vo.setTprice(rst.getInt("tprice"));
				vo.setDprice(rst.getInt("dprice"));
				vo.setPrice(rst.getInt("price"));
				
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
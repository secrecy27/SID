package com.sid.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.sid.controller.JDBCUtil;
import com.sid.dto.BWriteVO;
import com.sid.dto.HashtagVO;

public class BPageDAO {
	private BPageDAO() {

	}

	private static BPageDAO instance = new BPageDAO();

	public static BPageDAO getInstance() {
		return instance;
	}

	public int insertImage(BWriteVO bVo) {
		int result = -1;

		String sql = "INSERT INTO bwrite(imageUrl, cost, expl,userEmail,hashtag) VALUES(?, ?, ?, ?, ?)";
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
			pstmt.setString(5, bVo.getHashtag());

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
		PreparedStatement ps = null;

		try {
			ps = conn.prepareStatement(sql);

			for (int i = 0; i < hashtag.length; i++) {

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
				vo.setUserEmail(rst.getString("userEmail"));
			}

		} catch (SQLException e) {
			System.out.println("b read item error : " + e);
		} finally {
			JDBCUtil.close(rst, stmt, conn);
		}

		return vo;
	}

	public int addToCart(String email, int id) {
		int result = -1;
		String sql = "SELECT pocketId FROM rpocket where email=?";
		Connection conn = null;
		conn = JDBCUtil.getConnection();
		PreparedStatement ps = null;
		ResultSet rst = null;
		int pocketId = -1;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, email);
			rst = ps.executeQuery();

			if (rst.next()) {
				pocketId = rst.getInt("pocketId");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(ps, conn);
		}

		sql = "INSERT INTO rpocket2(pocketId, bwriteId) VALUES(?,?)";
		conn = JDBCUtil.getConnection();
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, pocketId);
			ps.setInt(2, id);

			result = ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(ps, conn);
		}

		System.out.println("addtocart result : " + result);

		return result;
	}

	public ArrayList<HashtagVO> readHashtag(int num) {
		String sql = "select * from hashtag where bWriteId=?";
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rst = null;
		HashtagVO hVo = null;
		ArrayList<HashtagVO> list = new ArrayList<HashtagVO>();

		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, num);
			rst = stmt.executeQuery();

			while (rst.next()) {
				hVo = new HashtagVO();
				hVo.setHashtag(rst.getString("hashtag"));
				list.add(hVo);
			}

		} catch (SQLException e) {
			System.out.println("b hashtag item error : " + e);
		} finally {
			JDBCUtil.close(rst, stmt, conn);
		}

		return list;
	}
	public ArrayList<BWriteVO> listAll() {

		ArrayList<BWriteVO> list = new ArrayList<BWriteVO>();
		String sql = "select * from bwrite order by postDate desc";
		String str="";
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
				try {
					str=rst.getString("hashtag");
					str=str.replace(",", " #");
					str="#"+str;
				} catch (Exception e) {
					// TODO: handle exception
				}

				vo.setHashtag(str);
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

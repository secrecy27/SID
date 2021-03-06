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
import com.sid.util.DBManager;

public class CWriteDAO {

	private CWriteDAO() {

	}

	private static CWriteDAO instance = new CWriteDAO();

	public static CWriteDAO getInstance() {
		return instance;
	}

	public int test(String a, String b) {
		int result = -1;
		String sql = "insert into test(src1,src2) VALUES(?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, a);
			pstmt.setString(2, b);

			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt, conn);
		}
		return result;
	}

	public int insertImage(CWriteVO cVo) {
		int result = -1;
		String sql = "insert into cwrite(imageUrl,cost,hashtag,userEmail) VALUES(?,?,?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rst = null;
		try {
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);

			pstmt.setString(1, cVo.getImageUrl());
			pstmt.setInt(2, cVo.getCost());
			pstmt.setString(3, cVo.getHashtag());
			pstmt.setString(4, cVo.getUserEmail());
			pstmt.executeUpdate();
			rst = pstmt.getGeneratedKeys();
			String autoInsertedKey = (rst.next()) ? rst.getString(1) : null;
			System.out.println("여기서 에런가");

			result = Integer.parseInt(autoInsertedKey);
			System.out.println("result : " + result);
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

	public int addToCart(int cWriteId, String email) {
		int result = -1;
		String sql = "INSERT INTO ccart(cWriteId,email) VALUES(?,?)";
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = JDBCUtil.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, cWriteId);
			ps.setString(2, email);

			result = ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(ps, conn);
		}

		return result;
	}

	public CWriteVO readItem(int num) {
		int result = -1;
		String sql = "select * from cwrite where cWriteId=?";
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rst = null;
		CWriteVO vo = new CWriteVO();
		System.out.println("a readItem" + num);

		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, num);
			rst = stmt.executeQuery();

			if (rst.next()) {
				vo.setcWriteId(rst.getInt("cWriteId"));
				vo.setImageUrl(rst.getString("imageUrl"));
				vo.setCost(rst.getInt("cost"));
				vo.setUserEmail(rst.getString("userEmail"));
			}

		} catch (SQLException e) {
			System.out.println("c read item error : " + e);
		} finally {
			JDBCUtil.close(rst, stmt, conn);
		}
		return vo;
	}

	public ArrayList<HashtagVO> readHashtag(int num) {
		String sql = "select * from hashtag where cWriteId=?";
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
			System.out.println("c hashtag item error : " + e);
		} finally {
			JDBCUtil.close(rst, stmt, conn);
		}

		return list;
	}

	public ArrayList<CWriteVO> listAll() {

		ArrayList<CWriteVO> list = new ArrayList<CWriteVO>();
		String sql = "select * from cwrite order by indate desc";
		String str = "";
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rst = null;
		CWriteVO vo = null;
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(sql);
			rst = stmt.executeQuery();
			while (rst.next()) {
				vo = new CWriteVO();
				vo.setcWriteId(rst.getInt("cWriteId"));
				vo.setImageUrl(rst.getString("imageUrl"));
				vo.setCost(rst.getInt("cost"));
				vo.setUserEmail(rst.getString("userEmail"));
				try {
					str = rst.getString("hashtag");
					str = str.replace(",", " #");
					str = "#" + str;
				} catch (Exception e) {

				}
				vo.setHashtag(str);
				list.add(vo);
			}
		} catch (SQLException e) {
			System.out.println("c list error : " + e);
		} finally {
			JDBCUtil.close(rst, stmt, conn);
		}
		return list;
	}

	public void deleteProduct(int num) {
		String sql = "delete from cwrite where cWriteId=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

}

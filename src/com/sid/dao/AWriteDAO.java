package com.sid.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.sid.controller.JDBCUtil;
import com.sid.dto.AWriteVO;
import com.sid.dto.BWriteVO;
import com.sid.dto.HashtagVO;
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
		String sql = "insert into awrite(imageUrl,cost,hashtag) VALUES(?,?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rst = null;
		try {
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);

			pstmt.setString(1, aVo.getImageUrl());
			pstmt.setInt(2, aVo.getCost());
			pstmt.setString(3,aVo.getHashtag());

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
		String sql = "INSERT INTO hashtag(aWriteId, hashtag) VALUES(?,?)";
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
	
	public int addToCart(int aWriteId, String email) {
		int result = -1;
		String sql = "INSERT INTO acart(aWriteId,email) VALUES(?,?)";
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = JDBCUtil.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, aWriteId);
			ps.setString(2, email);

			result = ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(ps, conn);
		}

		return result;
	}
	
	public int addToLPocket(String email, int id) {
		int result = -1;
		String sql = "SELECT pocketId FROM lpocket where email=?";
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

		sql = "INSERT INTO lpocket2(pocketId, aWriteId) VALUES(?,?)";
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

		System.out.println(" result : " + result);

		return result;
	}

	public AWriteVO readItem(int num) {
		String sql = "select * from awrite where aWriteId=?";
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rst = null;
		AWriteVO vo = new AWriteVO();
		System.out.println("a readItem" + num);

		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, num);
			rst = stmt.executeQuery();

			if (rst.next()) {
				vo.setaWriteId(rst.getInt("aWriteId"));
				vo.setImageUrl(rst.getString("imageUrl"));
				vo.setCost(rst.getInt("cost"));
			}

		} catch (SQLException e) {
			System.out.println("a read item error : " + e);
		} finally {
			JDBCUtil.close(rst, stmt, conn);
		}
		return vo;
	}

	public ArrayList<HashtagVO> readHashtag(int num) {
		String sql = "select * from hashtag where aWriteId=?";
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
			System.out.println("a readhashtag" + num);

			while (rst.next()) {
				hVo = new HashtagVO();
				hVo.setHashtag(rst.getString("hashtag"));
				list.add(hVo);
			}

		} catch (SQLException e) {
			System.out.println("a hashtag item error : " + e);
		} finally {
			JDBCUtil.close(rst, stmt, conn);
		}

		return list;
	}

	public ArrayList<AWriteVO> listAll() {

		ArrayList<AWriteVO> list = new ArrayList<AWriteVO>();
		String sql = "select * from awrite order by indate desc";
		String str="";
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rst = null;
		AWriteVO vo = null;
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(sql);
			rst = stmt.executeQuery();
			while (rst.next()) {
				vo = new AWriteVO();
				vo.setaWriteId(rst.getInt("aWriteId"));
				vo.setImageUrl(rst.getString("imageUrl"));
				vo.setCost(rst.getInt("cost"));
				try{
					str=rst.getString("hashtag");
					str=str.replace(","," #");
					str="#"+str;
				}catch(Exception e){
					
				}
				vo.setHashtag(str);
				list.add(vo);
			}
		} catch (SQLException e) {
			System.out.println("a list error : " + e);
		} finally {
			JDBCUtil.close(rst, stmt, conn);
		}
		return list;
	}

}
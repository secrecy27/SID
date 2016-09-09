package com.sid.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.sid.controller.JDBCUtil;
import com.sid.dto.AWriteVO;
import com.sid.dto.CWriteVO;
import com.sid.dto.CartVO;
import com.sid.util.DBManager;

public class CartDAO {
	private CartDAO() {
	}

	private static CartDAO instance = new CartDAO();

	public static CartDAO getInstance() {
		return instance;
	}
	//
	// public void insertCart(CartVO cartVO) {
	// String sql = "insert into cart(cseq, email, pseq, quantity)" + "
	// values(cart_seq.nextval,?, ?, ?)";
	// Connection conn = null;
	// PreparedStatement pstmt = null;
	// try {
	// conn = DBManager.getConnection();
	// pstmt = conn.prepareStatement(sql);
	// pstmt.setString(1, cartVO.getEmail());
	// pstmt.setInt(2, cartVO.getPseq());
	// pstmt.setInt(3, cartVO.getQuantity());
	// pstmt.executeUpdate();
	// } catch (Exception e) {
	// e.printStackTrace();
	// } finally {
	// DBManager.close(conn, pstmt);
	// }
	// }

	public CartVO readCart(String email) {
		String sql = "select * from cart where email=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		CartVO cartVO = new CartVO();
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				cartVO.setaWriteId(rs.getInt("aWriteId"));

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return cartVO;
	}

	public ArrayList<AWriteVO> listACart(String email) {
		ArrayList<AWriteVO> list = new ArrayList<>();
		String sql = "select * from awrite a LEFT JOIN acart b ON(a.aWriteId=b.aWriteId) where b.email=?";
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rst = null;
		AWriteVO aVo = null;
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, email);
			rst = stmt.executeQuery();
			while (rst.next()) {
				aVo = new AWriteVO();
				aVo.setaWriteId(rst.getInt("aWriteId"));
				aVo.setImageUrl(rst.getString("imageUrl"));
				aVo.setCost(rst.getInt("cost"));
				list.add(aVo);
			}
		} catch (SQLException e) {
			System.out.println("listACart error : " + e);
		} finally {
			JDBCUtil.close(rst, stmt, conn);
		}
		return list;

	}

	public ArrayList<CWriteVO> listCCart(String email) {
		ArrayList<CWriteVO> list = new ArrayList<>();
		String sql = "select * from cwrite a LEFT JOIN ccart b ON(a.cWriteId=b.cWriteId) where b.email=?";
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rst = null;
		CWriteVO cVo = null;
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, email);
			rst = stmt.executeQuery();
			while (rst.next()) {
				cVo = new CWriteVO();
				cVo.setcWriteId(rst.getInt("cWriteId"));
				cVo.setImageUrl(rst.getString("imageUrl"));
				cVo.setCost(rst.getInt("cost"));
				list.add(cVo);
			}
		} catch (SQLException e) {
			System.out.println("listCCart error : " + e);
		} finally {
			JDBCUtil.close(rst, stmt, conn);
		}
		return list;

	}

	public void deleteAProduct(int num) {
		String sql = "delete from acart where aWriteId=?";
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

	public void deleteCProduct(int num) {
		String sql = "delete from ccart where cWriteId=?";
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

	// public void deleteCart(int cseq) {
	// String sql = "delete cart where cseq=?";
	// Connection conn = null;
	// PreparedStatement pstmt = null;
	// try {
	// conn = DBManager.getConnection();
	// pstmt = conn.prepareStatement(sql);
	// pstmt.setInt(1, cseq);
	// pstmt.executeUpdate();
	// } catch (Exception e) {
	// e.printStackTrace();
	// } finally {
	// DBManager.close(conn, pstmt);
	// }
	// }

}

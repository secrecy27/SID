package com.sid.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.sid.dto.MemberVO;
import com.sid.util.DBManager;

public class MemberDAO {
	private MemberDAO() {

	}

	private static MemberDAO instance = new MemberDAO() {
	};

	public static MemberDAO getInstance() {
		return instance;
	}

	public int insertMember(MemberVO mVo) {
		int result = -1;
		String sql = "insert into user values(?,?,?,?,?,?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, mVo.getNickname());
			pstmt.setString(2, mVo.getEmail());
			pstmt.setString(3, mVo.getPwd());
			pstmt.setString(4, mVo.getZipNum());
			pstmt.setString(5, mVo.getAddress());
			pstmt.setString(6, mVo.getPhone());
			pstmt.setInt(7, mVo.getAdmin());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return result;
	}

	public int insertPocket(String email) {
		int result = -1;
		int i=0;
		String sql = "insert into rpocket (email) values(?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, email);
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return result;
	}

	public int updateAdmin(String email) {
		int result = -1;
		String sql = "update user set admin=1 where email=?";

		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, email);

			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return result;
	}

	public int confirmID(String email) {
		int result = -1;
		String sql = "select * from user where email=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = 1;
			} else {
				result = -1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return result;
	}

	public int userCheck(String email, String pwd) {
		int result = -1;
		String sql = "select pwd,admin from user where email=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if (rs.getString("pwd") != null // 비밀번호 맞으면
						&& rs.getString("pwd").equals(pwd)) {
					result=rs.getInt("admin");
					//권한을 가져옴 (2 or 1 or 0)
				} else { //비밀 번호 틀리면

					result = -1;
				}
			} else {// 결과가 없으면
				result = -1;
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	public MemberVO getMember(String email) {
		MemberVO mVo = null;
		String sql = "select * from user where email=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				mVo = new MemberVO();
				mVo.setNickname(rs.getString("nickname"));
				mVo.setEmail(rs.getString("email"));
				mVo.setZipNum(rs.getString("zipNum"));
				mVo.setAddress(rs.getString("address"));
				mVo.setPhone(rs.getString("phone"));
				mVo.setAdmin(rs.getInt("admin"));
			//	mVo.setUseyn(rs.getString("useyn"));
			//	mVo.setIndate(rs.getTimestamp("indate"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}

		return mVo;
	}

	public int updateMember(MemberVO mVo) {
		int result = -1;
		String sql = "update user set pwd=?,zipNum=?,address=?,phone=?," + " where email=?";

		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, mVo.getPwd());
			pstmt.setString(2, mVo.getZipNum());
			pstmt.setString(3, mVo.getAddress());
			pstmt.setString(4, mVo.getPhone());
			pstmt.setString(5, mVo.getEmail());

			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return result;
	}


	public ArrayList<MemberVO> listMember(String email) {
		ArrayList<MemberVO> memberList = new ArrayList<MemberVO>();
		String sql = "select * from user where email like '%'||?||'%' " + "  order by indate desc";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			if (email == "") {
				pstmt.setString(1, "%");
			} else {
				pstmt.setString(1, email);
			}
			rs = pstmt.executeQuery();
			while (rs.next()) {
				MemberVO memberVO = new MemberVO();
				memberVO.setEmail(rs.getString("email"));
				memberVO.setPwd(rs.getString("pwd"));
				memberVO.setNickname(rs.getString("nickname"));
				memberVO.setEmail(rs.getString("email"));
				memberVO.setZipNum(rs.getString("zip_num"));
				memberVO.setAddress(rs.getString("address"));
				memberVO.setPhone(rs.getString("phone"));
				memberVO.setUseyn(rs.getString("useyn"));
				memberVO.setIndate(rs.getTimestamp("indate"));
				memberList.add(memberVO);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return memberList;
	}

	public MemberVO getAddress(String email) {
		MemberVO mVo = null;
		String sql = "select zipNum, address, phone from user where email=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				mVo = new MemberVO();
				mVo.setZipNum(rs.getString("zipNum"));
				mVo.setAddress(rs.getString("address"));
				mVo.setPhone(rs.getString("phone"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}

		return mVo;
	}
}
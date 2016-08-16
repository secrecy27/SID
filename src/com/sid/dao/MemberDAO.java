package com.sid.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

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

	public Connection getConnection() throws Exception {
		Connection conn = null;
		Context initContext = new InitialContext();
		Context envContext = (Context) initContext.lookup("java:/comp/env");
		DataSource ds = (DataSource) envContext.lookup("jdbc/myoracle");
		conn = ds.getConnection();
		return conn;
	}

	public int confirmID(String email){
		int result=-1;
		String sql="select * from member where email=?";
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try{
			conn=DBManager.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, email);
			rs=pstmt.executeQuery();
			if(rs.next()){
				result=1;
			}else {
				result=-1;
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBManager.close(conn, pstmt, rs);
		}
		return result;
	}
	
	public int userCheck(String email, String pwd) {
		int result = -1;
		String sql = "select pwd from member where email=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if (rs.getString("pwd") != null && rs.getString("pwd").equals(pwd)) {
					result = 1;
				} else {
					result = 0;
				}
			} else {
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
	

	public MemberVO getMember(String email){
		com.sid.dto.MemberVO mVo=null;
		String sql="select * from member where email=?";
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try{
			conn=DBManager.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, email);
			rs=pstmt.executeQuery();
			
			if(rs.next()){
				mVo=new MemberVO();
				mVo.setNickname(rs.getString("nickname"));
				mVo.setPwd(rs.getString("pwd"));
				mVo.setEmail(rs.getString("email"));
				mVo.setAddress(rs.getString("address"));
				mVo.setPhone(rs.getString("phone"));
				mVo.setUseyn(rs.getString("useyn"));
				mVo.setZipNum(rs.getString("zipNum"));
				mVo.setIndate(rs.getTimestamp("indate"));
				mVo.setAdmin(rs.getInt("admin"));
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBManager.close(conn,pstmt,rs);
		}
		
		return mVo;
	}
	
	
	public int insertMember(MemberVO mVo){
		int result=-1;
		String sql="insert into member values(?,?,?,?,?,?)";
		Connection conn=null;
		PreparedStatement pstmt=null;
		try{
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, mVo.getNickname());
			pstmt.setString(2, mVo.getEmail());
			pstmt.setString(3, mVo.getPwd());
			pstmt.setString(4, mVo.getAddress());
			pstmt.setString(5, mVo.getPhone());
			pstmt.setInt(6,mVo.getAdmin());
			result=pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBManager.close(conn, pstmt);
		}
		return result;
	}
	
	public int updateMember(MemberVO mVo){
		int result=-1;
		String sql="update member set pwd=?,address=?,zipNum=?,phone=?,"
				+ "admin=?,  where email=?";
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		try{
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, mVo.getPwd());
			pstmt.setString(2, mVo.getAddress());
			pstmt.setString(3, mVo.getZipNum());
			pstmt.setString(4, mVo.getPhone());
			pstmt.setInt(5, mVo.getAdmin());;
			pstmt.setString(6, mVo.getEmail());
			
			result=pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBManager.close(conn, pstmt);
		}
		return result;
	}
}

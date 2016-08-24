package  com.sid.controller;

import java.sql.DriverManager;
import java.sql.ResultSet;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class JDBCUtil {

	public static java.sql.Connection getConnection() {
		try {
	        Class.forName("com.mysql.jdbc.Driver");
	        return  DriverManager.getConnection("jdbc:mysql://localhost:3306/sid", "root", "root");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public static void close(java.sql.PreparedStatement pstmt, java.sql.Connection conn) {
		try {
			if(pstmt != null)
				pstmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pstmt = null;
		}
		try {
			if(conn != null)
				conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conn = null;
		}
	}
	
	//결과를 받아서 변환 후 닫아야 할 때
	public static void close(ResultSet rst, java.sql.PreparedStatement stmt, java.sql.Connection conn) {
		try {
			if(rst != null)
				rst.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			rst = null;
		}
		try {
			if(stmt != null)
				stmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			stmt = null;
		}
		try {
			if(conn != null)
				conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conn = null;
		}
	}

}

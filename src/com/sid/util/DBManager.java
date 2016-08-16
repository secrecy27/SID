package com.sid.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBManager {
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection(
					"jdbc:mysql://localhost:8880/sid", "root", "root");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public static void close( Connection conn ,PreparedStatement pstmt) {
		try {
			if (pstmt != null)
				pstmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pstmt = null;
		}
		
		try {
			if (conn != null)
				conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conn = null;
		}
	}

	// 결과를 받아서 변환 후 닫아야 할 때
	public static void close(Connection conn, PreparedStatement pstmt,
			ResultSet rs) {
		try {
			if (conn != null)
				conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conn = null;
		}

		try {
			if (rs != null)
				rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			rs = null;
		}

		try {
			if (pstmt != null)
				pstmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pstmt = null;
		}

	}
}
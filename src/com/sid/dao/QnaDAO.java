package com.sid.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.sid.dto.QnaVO;
import com.sid.util.DBManager;

public class QnaDAO {
	private QnaDAO() {
	}

	private static QnaDAO instance = new QnaDAO();

	public static QnaDAO getInstance() {
		return instance;
	}

	public ArrayList<QnaVO> listQna(String email) {
		ArrayList<QnaVO> qnaList = new ArrayList<QnaVO>();
		String sql = "select * from qna where email=? order by qseq desc";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				QnaVO qnaVO = new QnaVO();
				qnaVO.setQseq(rs.getInt("qseq"));
				qnaVO.setSubject(rs.getString("subject"));
				qnaVO.setContent(rs.getString("content"));
				qnaVO.setEmail(rs.getString("email"));
				qnaVO.setIndate(rs.getTimestamp("indate"));
				qnaVO.setReply(rs.getString("reply"));
				qnaVO.setRep(rs.getString("rep"));
				qnaList.add(qnaVO);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return qnaList;
	}

	public QnaVO getQna(int seq) {
		QnaVO qnaVO = null;
		String sql = "select * from qna where qseq=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, seq);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				qnaVO = new QnaVO();
				qnaVO.setQseq(seq);
				qnaVO.setSubject(rs.getString("subject"));
				qnaVO.setContent(rs.getString("content"));
				qnaVO.setEmail(rs.getString("email"));
				qnaVO.setIndate(rs.getTimestamp("indate"));
				qnaVO.setReply(rs.getString("reply"));
				qnaVO.setRep(rs.getString("rep"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return qnaVO;
	}

	public void insertqna(QnaVO qnaVO, String session_email) {
		String sql = "insert into qna (qseq, subject, "
				+ "content, email) values(qna_seq.nextval, ?, ?, ?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, qnaVO.getSubject());
			pstmt.setString(2, qnaVO.getContent());
			pstmt.setString(3, session_email);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

}

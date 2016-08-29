package com.kedu.notice.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.kedu.common.db.DBManager;
import com.kedu.notice.dto.NoticeDto;



public class NoticeDao {
	private NoticeDao() {
	}
	
	private static NoticeDao instance = new NoticeDao();
	
	public static NoticeDao getInstance() {
		if(instance == null) {
			instance = new NoticeDao();
		}
		return instance;
	}
	
	public List<NoticeDto> selectAllnotices(int[] pageStartEnd) {
		String sql = "SELECT * FROM (SELECT ROWNUM r , n.* FROM (SELECT * FROM NTC ORDER BY ntcno DESC) n ) WHERE r BETWEEN ? AND ?";
		
		List<NoticeDto> list = new ArrayList<NoticeDto>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, pageStartEnd[0]);
			pstmt.setInt(2, pageStartEnd[1]);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				NoticeDto bDto = new NoticeDto();
				
				bDto.setNtcno(rs.getInt("ntcno"));
				bDto.setNtcnm(rs.getString("ntcnm"));
				bDto.setNtcdt(rs.getTimestamp("ntcdt"));
				bDto.setHit(rs.getInt("hit"));
				bDto.setNtcctt(rs.getString("ntcctt"));
				bDto.setEmpno(rs.getString("empno"));
				
				list.add(bDto);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		return list;
	}
	
	public void insertnotice(NoticeDto bDto) {
	String sql = "insert into notice("
				+"ntcno, ntcnm, hit, ntcctt, empno)"
				+"values(notice_seq.nextval, ?,?,?,?)";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, bDto.getNtcno());
			pstmt.setString(2, bDto.getNtcnm());
			pstmt.setInt(3, bDto.getHit());
			pstmt.setString(4, bDto.getNtcctt());
			pstmt.setString(5,bDto.getEmpno());
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
	
	public void updatehit(String ntcno) {
		String sql = "update ntc set hit = hit+1 where ntcno=?";
		
		Connection conn=null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ntcno);
			
			pstmt.executeUpdate();
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
	
//	게시글 상세 내용 보기 : 글번호로 찾아온다 , : 실패 null,
	public NoticeDto selectOnenoticeByntcno(String ntcno) {
		String sql = "select * from ntc where ntcno = ?";
		
		NoticeDto bDto = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs =null;
		
		try {
			conn=DBManager.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ntcno);
			
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				bDto = new NoticeDto();
				
				bDto.setNtcno(rs.getInt("ntcno"));
				bDto.setNtcnm(rs.getString("ntcnm"));
				bDto.setNtcdt(rs.getTimestamp("ntcdt"));
				bDto.setHit(rs.getInt("hit"));
				bDto.setNtcctt(rs.getString("ntcctt"));
				bDto.setEmpno(rs.getString("empno"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		return bDto;
	}
	
	public void updatenotice(NoticeDto bDto) {
		String sql = "update notice set ntcnm=?, ntcctt=? where ntcno=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn=DBManager.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, bDto.getNtcnm());
			pstmt.setString(2, bDto.getNtcctt());
			pstmt.setInt(3, bDto.getNtcno());
			
			pstmt.executeUpdate();
		}catch (SQLException e) { 
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
	
	public NoticeDto checkPassWord(String empno, String ntcno) {
		String sql = "select * from ntc where empno=? and ntcno = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		NoticeDto bDto = null;
		
		try { 
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, empno);
			pstmt.setString(2, ntcno);
			
			rs = pstmt.executeQuery();
			
			if (rs.next()) { 
				bDto = new NoticeDto();
				
				bDto.setNtcno(rs.getInt("ntcno"));
				bDto.setNtcnm(rs.getString("ntcnm"));
				bDto.setNtcdt(rs.getTimestamp("ntcdt"));
				bDto.setHit(rs.getInt("hit"));
				bDto.setNtcctt(rs.getString("ntcctt"));
				bDto.setEmpno(rs.getString("empno"));
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return bDto;
	}
	
	public void deletenotice(String ntcno) {
		String sql = "delete ntc where ntcno=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try{
			conn = DBManager.getConnection();
			pstmt= conn.prepareStatement(sql);
			
			pstmt.setString(1, ntcno);
			
			pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	public int selectListRow() {
		String sql = "select count(*) as count from ntc";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = 0;
		
		try { 
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result = rs.getInt("count");
				
			}
			
		}catch (SQLException e) {
			e.printStackTrace();
		}finally { 
			DBManager.close(conn, pstmt, rs);
		}
		return result;
	}
}

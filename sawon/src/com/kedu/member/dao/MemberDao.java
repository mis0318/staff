package com.kedu.member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.kedu.common.db.DBManager;
import com.kedu.member.dto.MemberDto;

public class MemberDao {

	private MemberDao() {
	}
	
	private static MemberDao instance = new MemberDao();
	
	public static MemberDao getinstance() {
		return instance;
	}
	
	public Connection getConnection() throws Exception {
		Connection conn = null;
		Context initContext = new InitialContext();
		Context envContext = (Context) initContext.lookup("java:/comp/env");
		DataSource ds = (DataSource) envContext.lookup("jdbc/member");
		conn = ds.getConnection();
		return conn;
	}
	public int userCheck(String empno, String pwd) {
		int result = -1;
		String sql = "select pwd from emp where empno=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, empno);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if (rs.getString("pwd") !=null && rs.getString("pwd").equals(pwd)) {
					result = 1;
				}else {
					result = 0;
				}
			}else {
				result = -1;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	public MemberDto getMember(String empno) {
	MemberDto memberDto = null;
	String sql = "select * from emp where empno=?";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, empno);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				memberDto = new MemberDto();
				memberDto.setEmpno(rs.getString("empno"));
				memberDto.setDeptno(rs.getInt("deptno"));
				memberDto.setJobno(rs.getInt("jobno"));
				memberDto.setEmpnm(rs.getString("empnm"));
				memberDto.setJumin(rs.getString("jumin"));
				memberDto.setPhone(rs.getString("phone"));
				memberDto.setAddrno(rs.getInt("addrno"));
				memberDto.setAddress(rs.getString("address"));
				memberDto.setEmpimg(rs.getString("empimg"));
				memberDto.setPwd(rs.getString("pwd"));
				memberDto.setSalrary(rs.getInt("salrary"));
				memberDto.setIndt(rs.getString("indt"));
				memberDto.setOutdt(rs.getString("outdt"));
				memberDto.setEmpdt(rs.getString("empdt"));
				memberDto.setManagerno(rs.getString("managerno"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		} finally {
			try{
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
		return memberDto;
	}
	
	public int insertMember(MemberDto memberDto) {
		int result = 0;
		String sql = "insert into member(empno, jobno, empnm, jumin, phone, addrno, address, empimg, pwd, indt, empdt";
				sql += "values ('채번하는시퀀스', ?, ?, ?, ?, ?, ?, ?, ?, ?, sysdate)";
				
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberDto.getEmpno());
			pstmt.setInt(2, memberDto.getJobno());
			pstmt.setString(3, memberDto.getEmpnm());
			pstmt.setString(4, memberDto.getJumin());
			pstmt.setString(5, memberDto.getPhone());
			pstmt.setInt(6, memberDto.getAddrno());
			pstmt.setString(7, memberDto.getAddress());
			pstmt.setString(8, memberDto.getEmpimg());
			pstmt.setString(9, memberDto.getPwd());
			pstmt.setString(10, memberDto.getIndt());
			pstmt.setString(11, memberDto.getEmpdt());
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
		return result;
	}
}
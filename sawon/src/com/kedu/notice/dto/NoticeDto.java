package com.kedu.notice.dto;

import java.sql.Timestamp;

public class NoticeDto {
	private int ntcno;
	private String ntcnm; 
	private Timestamp ntcdt;
	private int hit;
	private String ntcctt;
	private String empno;
	
	public NoticeDto() {
	}

	@Override
	public String toString() {
		return super.toString();
	}

	public int getNtcno() {
		return ntcno;
	}

	public void setNtcno(int ntcno) {
		this.ntcno = ntcno;
	}

	public String getNtcnm() {
		return ntcnm;
	}

	public void setNtcnm(String ntcnm) {
		this.ntcnm = ntcnm;
	}

	public Timestamp getNtcdt() {
		return ntcdt;
	}

	public void setNtcdt(Timestamp ntcdt) {
		this.ntcdt = ntcdt;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public String getNtcctt() {
		return ntcctt;
	}

	public void setNtcctt(String ntcctt) {
		this.ntcctt = ntcctt;
	}

	public String getEmpno() {
		return empno;
	}

	public void setEmpno(String empno) {
		this.empno = empno;
	}
	
}

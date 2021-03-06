package com.kedu.common.action;

import java.io.IOException;
import java.sql.Date;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kedu.notice.dao.NoticeDao;
import com.kedu.notice.dto.NoticeDto;


public class NoticeWriteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		NoticeDto bDto = new NoticeDto();
		
		bDto.setNtcno(Integer.parseInt(request.getParameter("ntcno")));
		bDto.setNtcnm(request.getParameter("ntcnm"));
		bDto.setHit(Integer.parseInt(request.getParameter("hit")));
		bDto.setEmpno(request.getParameter("empno"));
		bDto.setNtcctt(request.getParameter("ntcctt"));
	
		NoticeDao bDao = NoticeDao.getInstance();
		bDao.insertnotice(bDto);
		
		new NoticeListAction().execute(request, response);
	}

}

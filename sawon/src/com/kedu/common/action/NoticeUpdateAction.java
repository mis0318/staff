package com.kedu.common.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kedu.notice.dao.NoticeDao;
import com.kedu.notice.dto.NoticeDto;


public class NoticeUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		NoticeDto bDto = new NoticeDto();
		
		bDto.setNtcno(Integer.parseInt(request.getParameter("ntcno")));
		bDto.setNtcnm(request.getParameter("ntcnm"));
		bDto.setNtcctt(request.getParameter("ntcctt"));
		
		NoticeDao bDao = NoticeDao.getInstance();
		bDao.updatenotice(bDto);
		
		new NoticeListAction().execute(request, response);
	}

}

package com.kedu.common.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kedu.notice.dao.NoticeDao;
import com.kedu.notice.dto.NoticeDto;



public class NoticeUpdateFormAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "notice/noticeUpdate.jsp";
		
		String ntcno = request.getParameter("ntcno");
		
		NoticeDao bDao = NoticeDao.getInstance();
		
		bDao.updatehit(ntcno);
		
		NoticeDto bDto = bDao.selectOnenoticeByntcno(ntcno);
		
		request.setAttribute("notice", bDto);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}

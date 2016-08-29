package com.kedu.common.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kedu.notice.dao.NoticeDao;


public class NoticeDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String num = request.getParameter("num");
		
		NoticeDao bDao =NoticeDao.getInstance();
		bDao.deletenotice(num);
		
		new NoticeListAction().execute(request, response);
	}

}

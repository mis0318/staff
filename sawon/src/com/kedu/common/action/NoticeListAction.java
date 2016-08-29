package com.kedu.common.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kedu.common.page.PageJson;
import com.kedu.common.page.Paging;
import com.kedu.notice.dao.NoticeDao;


public class NoticeListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Paging page = new Gson().fromJson((String)request.getParameter("json"), Paging.class);
		NoticeDao bDao = NoticeDao.getInstance();
		page.setTotalRow(bDao.selectListRow());
		PageJson pJson = new PageJson(page.getFirstPagePerBlock(), page.getLastPagePerBlock(), page.getCurPage(), page.getCurBlock(), page.getTotalPage(), page.gettotalBlock(), page.getPagePerBlock(), bDao.selectAllnotices(page.getStartEnd()));
	
		
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		response.getWriter().write(new Gson().toJson(pJson));
	}

}

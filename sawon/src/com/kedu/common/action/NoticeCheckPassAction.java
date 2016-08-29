package com.kedu.common.action;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eclipse.jdt.internal.compiler.ast.SynchronizedStatement;

import com.kedu.notice.dao.NoticeDao;
import com.kedu.notice.dto.NoticeDto;



public class NoticeCheckPassAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = null;
		
		String ntcno =request.getParameter("ntcno");
		String empno =request.getParameter("empno");
		
		NoticeDao bDao = NoticeDao.getInstance();
		NoticeDto bDto = bDao.selectOnenoticeByntcno(ntcno);
		if (bDto.getEmpno() == empno) {
			url = "notice/checkSuccess.jsp";
		}else {
			url ="notice/noticeCheckPass.jsp";
			request.setAttribute("message", "사원번호가 틀렸습니다.");
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
				dispatcher.forward(request, response);
	}

}

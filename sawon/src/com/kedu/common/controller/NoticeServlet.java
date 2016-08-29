package com.kedu.common.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kedu.common.action.Action;
import com.kedu.common.action.ActionFactory;
import com.kedu.common.page.Paging;

            //noticeServlet
@WebServlet("/noticeServlet")
public class NoticeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public NoticeServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getParameter("command");
		System.out.println("noticeServlet에서 요청을 받음을 확인 : "+command);
		ActionFactory af = ActionFactory.getInstance();
		Action action = af.getAction(command);
		String s = new Gson().fromJson((String)request.getParameter("json"), Paging.class);
		System.out.println(s);
		if(action !=null) {
			action.execute(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doGet(request,response);
	}

}

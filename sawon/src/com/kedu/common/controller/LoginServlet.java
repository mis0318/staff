package com.kedu.common.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kedu.member.dao.MemberDao;
import com.kedu.member.dto.MemberDto;

@WebServlet("/ls")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			RequestDispatcher dispatcher = request
			.getRequestDispatcher("index.jsp");
			dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="index.jsp";

		String empno = request.getParameter("empno");
		String pwd = request.getParameter("pwd");
		
		MemberDao mDao = MemberDao.getinstance();
		int result = mDao.userCheck(empno, pwd);
		System.out.println(result);
		if(result == 1) {
			MemberDto mDo= mDao.getMember(empno);
			if(mDo.getJobno() == 0) {
				request.setAttribute("message", "승인대기중 입니다.");
			}else {
				HttpSession session = request.getSession();
				session.setAttribute("loginUser", mDo);
				url="Main.jsp";
			}
		}else if(result==0) {
			request.setAttribute("message", "비밀번호가 맞지 않습니다.");
		}else if(result==-1) {
			request.setAttribute("message", "존재하지 않는 회원입니다.");
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}

package com.kedu.common.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kedu.member.dao.MemberDao;
import com.kedu.member.dto.MemberDto;

public class JoinAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "index.jsp";

		HttpSession session = request.getSession();

		MemberDto memberDto = new MemberDto();

		memberDto.setEmpnm(request.getParameter("empnm"));
		memberDto.setJumin(request.getParameter("jumin"));
		memberDto.setPhone(request.getParameter("phone"));
		memberDto.setAddrno(Integer.parseInt(request.getParameter("addrno")));
		memberDto.setAddress(request.getParameter("address"));
		memberDto.setEmpimg(request.getParameter("empimg"));
		memberDto.setPwd(request.getParameter("pwd"));
		memberDto.setIndt(request.getParameter("indt"));
		memberDto.setEmpdt(request.getParameter("empdt"));
		
		session.setAttribute("empno", request.getParameter("empno"));
		
		MemberDao memberDao = MemberDao.getinstance();
		memberDao.insertMember(memberDto);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
				dispatcher.forward(request, response);
		
	}

}

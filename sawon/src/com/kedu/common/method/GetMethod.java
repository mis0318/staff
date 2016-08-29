package com.kedu.common.method;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class GetMethod {
	public static String getSessionEmpNo(HttpServletRequest request){
		HttpSession session = request.getSession();
		String empNo = (String)session.getAttribute("empno");
		return empNo;
	}
}

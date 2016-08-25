package com.kedu.common.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/us")
public class uploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String savePath="upload";
		int uploadFileSizeLimit = 5 *1024 * 1024;
		String encType = "UTF-8";
		
		ServletContext context = getServletContext();
		String uploadFilePath = context.getRealPath(savePath);
		System.out.println("서버상의 실제 디렉토리 :");
		System.out.println(uploadFilePath);
		
		try {
			MultipartRequest multi = new MultipartRequest(request,uploadFilePath,uploadFileSizeLimit,encType,new DefaultFileRenamePolicy());
		String fileName = multi.getFilesystemName("uploadFile");
		
		if (fileName ==null) {
			System.out.print("파일 업로드 되지 않았음");
		}else {
			out.print("<br> 사번 : "multi.getParameter(empno));
			out.print("<br> 비밀번호 : "multi.getParameter(pwd));
		}
		}catch (Exception e) {
			System.out.println("예외 발생 :" + e);
		}
	}

}

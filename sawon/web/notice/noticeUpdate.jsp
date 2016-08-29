<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판</title>
<link rel="stylesheet" type="text/css" href="css/shopping.css">
<script type="text/javascript" src="js/notice.js"></script>
<link href="css/base.css" type="text/css" rel="stylesheet">
<link href="css/headfooter.css" type="text/css" rel="stylesheet">
<link href="css/aside.css" type="text/css" rel="stylesheet">
<!-- 제이쿼리 부분  -->
<script src="js/jquery.js"></script>
<script src="js/jquery-ui.min.js"></script>
<link rel="stylesheet" href="css/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="css/shopping.css">
</head>
<body>
	<div id="wrap" align="center">

		<div id="header">

			<jsp:include page="../base/header.jsp"></jsp:include>
		</div>

		<div id="rap">
			<h3>공지사항</h3>
			<div id="aside">
				<%@ include file="../base/aside.jsp"%>
			</div>

			<div id="content">

				<h1>게시글 수정</h1>
				<form name="frm" method="post" action="noticeServlet">
					<input type="hidden" name="command" value="notice_update">
					<input type="hidden" name="num" value="${notice.num }">
					<table>
						<tr>
							<th>제목</th>
							<td><input type="text" size="70" name="ntcnm"></td>
						</tr>
						<tr>
							<th>내용</th>
							<td><textarea cols="70" rows="15" name="ntcctt"></textarea>
							</td>
						</tr>
					</table>
					<br> <br> <input type="submit" value="등록"
						onclick="return noticeCheck()"> <input type="reset"
						value="다시 작성"> <input type="button" value="목록"
						onclick="location.href='noticeSevlet?command=notice_list'">
				</form>
			</div>
		</div>

		<div id="footer">
			<jsp:include page="../base/footer.jsp"></jsp:include>
		</div>

	</div>
</body>
</html>
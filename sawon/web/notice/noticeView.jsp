<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
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
	<div id="wrap">
		<h1>게시글 상세보기</h1>
		<div id="header">

			<jsp:include page="../base/header.jsp"></jsp:include>
		</div>

		<div id="rap">
			<div id="aside">
				<%@ include file="../base/aside.jsp"%>
			</div>
			<div id="content">
				<table>
					<tr>
						<th>작성자</th>
						<td>${ntc.ntcnm }</td>
						<th>사원번호</th>
						<td>${ntc.empno }</td>
					</tr>

					<tr>
						<th>작성일</th>
						<td><fmt:formatDate value="${ntc.ntcdt}" /></td>
						<th>조회수</th>
						<td>${ntc.hit }</td>
					</tr>
					<tr>
						<th>제목</th>
						<td colspan="3"><pre>${ntc.ntcctt }</pre></td>
					</tr>
				</table>
				<br> <br> <input type="button" value="게시글 수정"
					onclick="open_win('noticeServlet?command=notice_check_pass_form&num=${ntc.ntcno}',
		 'update')">
				<input type="button" value="게시글 삭제"
					onclick="open_win('noticeServlet?command=notice_check_pass_form&num=${ntc.ntcno}',
		 'delete')">
				<input type="button" value="게시글 리스트"
					onclick="location.href='noticeServlet?command=notice_list'">
				<input type="button" value="게시글 등록"
					onclick="location.href='noticeServlet?command=notice_write_form'">
			</div>
		</div>

		<div id="footer">
			<jsp:include page="../base/footer.jsp"></jsp:include>
		</div>

	</div>
</body>
</html>
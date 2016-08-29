<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판</title>
<link href="css/base.css" type="text/css" rel="stylesheet">
<link href="css/headfooter.css" type="text/css" rel="stylesheet">
<link href="css/aside.css" type="text/css" rel="stylesheet">
<link rel="stylesheet" href="css/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="css/shopping.css">
<!-- 제이쿼리 부분  -->
<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/paging.js"></script>
</head>
<body>
	<div id="wrap">

		<div id="header">

			<jsp:include page="../base/header.jsp"></jsp:include>
		</div>

		<div id="rap">
			<h3>공지사항</h3>
			<div id="aside">
				<%@ include file="../base/aside.jsp"%>
			</div>
			<div id="content">
				<h1>게시글 리스트</h1>
				<table class="list">
					<tr>
						<td colspan="5" style="border: white; text-align: right"><a
							href="noticeServlet?command=notice_write_form"
							style="color: white">게시글 등록</a></td>
					</tr>
					<thead>
						<tr style="color: white">
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
							<th>조회수</th>
						</tr>
					</thead>
					<%-- <c:forEach var="ntc" items="${noticeList}">
						<tr class="record">
							<td>${ntc.ntcno}</td>
							<td style="color: white"><a
								href="noticeServlet?command=notice_view&num=${ntc.ntcno}"
								style="color: white"> ${ntc.ntcnm}</a></td>
							<td>${ntc.empno}</td>
							<td><fmt:formatDate value="${ntc.ntcdt}" /></td>
							<td>${ntc.hit}</td>
						</tr>
					</c:forEach> --%>
						<tfoot>
							<tr>
								<td colspan="5">
									<input type="button" value="처음" id="firstPage">
									<input type="button" value="이전" id="preBlock">
									<input type="button" value="다음" id="nextBlock">
									<input type="button" value="끝" id="lastPage">
								</td>
							</tr>
						</tfoot>
						<tbody>
						</tbody>
				</table>
			</div>
		</div>

		<div id="footer">
			<jsp:include page="../base/footer.jsp" />
		</div>
	</div>
</body>
</html>
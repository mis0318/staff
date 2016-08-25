<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="../css/base.css" type="text/css" rel="stylesheet">
<link href="../css/headfooter.css" type="text/css" rel="stylesheet">
<link href="../css/aside.css" type="text/css" rel="stylesheet">
<!-- 제이쿼리 부분  -->
<script src="../js/jquery.js"></script>
<script src="../js/jquery-ui.min.js"></script>
<link rel="stylesheet" href="../css/jquery-ui.css">
</head>
<body>
	<div id="wrap">
		<div id="header">
			
			<jsp:include page="../base/header.jsp"></jsp:include>
		</div>
		<div id="rap">
			<div id="aside">
				<%@ include file="../base/aside.jsp" %>
			</div>
		
			<div id="content">
			<h3>공지사항</h3>
				<table border="1px solid black;">
					<tr>
						<th>순번</th>
						<th>제목</th>
						<th>등록일</th>
						<th>조회수</th>
					</tr>
					<tr>
						<td>1</td>
						<td><a href="notice_detail.jsp">1번 공지사항</a></td>
						<td>등록일</td>
						<td>0</td>
					</tr>
					<tr>
						<td>2</td>
						<td>2번 공지사항</td>
						<td>등록일</td>
						<td>0</td>
					</tr>
					<tr>
						<td>3</td>
						<td>3번 공지사항</td>
						<td>등록일</td>
						<td>0</td>
					</tr>
					<tr>
						<td>4</td>
						<td>4번 공지사항</td>
						<td>등록일</td>
						<td>0</td>
					</tr>
					<tr>
						<td>5</td>
						<td>5번 공지사항</td>
						<td>등록일</td>
						<td>0</td>
					</tr>
					<tr>
						<td>6</td>
						<td>6번 공지사항</td>
						<td>등록일</td>
						<td>0</td>
					</tr>
					<tr>
						<td>1</td>
						<td>1번 공지사항</td>
						<td>등록일</td>
						<td>0</td>
					</tr>
					<tr>
						<td>1</td>
						<td>1번 공지사항</td>
						<td>등록일</td>
						<td>0</td>
					</tr>
					<tr>
						<td>7</td>
						<td>7번 공지사항</td>
						<td>등록일</td>
						<td>0</td>
					</tr>
					<tr>
						<td>8</td>
						<td>8번 공지사항</td>
						<td>등록일</td>
						<td>0</td>
					</tr>
				</table>
			</div>
		</div>
		<div id="footer">
			<jsp:include page="../base/footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>
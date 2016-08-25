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
		<h3>공지사항</h3>
			<div id="aside">
				<%@ include file="../base/aside.jsp" %>
			</div>
			<div id="content">
				<table>
					<tr>
						<td>제목</td>
						<td colspan="5">공지사항입니다.</td>
					</tr>
					<tr>
						<td>작성자</td>
						<td>관리자</td>
						<td>작성일</td>
						<td>2014-02-18</td>
						<td>조회수</td>
						<td>0</td>
					</tr>
					<tr>
						<td colspan="6"><textarea rows="20" cols="40">안녕하세요 공지사항입니다.</textarea></td>
					</tr>
					<tr>
					<td colspan="6"><a href="notice.jsp">목록</a></td>
					<tr>
				</table>
			</div>
		</div>
	
		<div id="footer">
			<jsp:include page="../base/footer.jsp"></jsp:include>
		</div>
		
	</div>
</body>
</html>
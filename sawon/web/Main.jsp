<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${empty loginUser }">
<jsp:forward page="ls"/>
</c:if>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/base.css" type="text/css" rel="stylesheet">
<link href="css/headfooter.css" type="text/css" rel="stylesheet">
<link href="css/aside.css" type="text/css" rel="stylesheet">
<!-- 제이쿼리 부분  -->
<script src="js/jquery.js"></script>
<script src="js/jquery-ui.min.js"></script>
<link rel="stylesheet" href="css/jquery-ui.css">
</head>
<body>
	<div id="wrap">
		<div id="header">
			
			<jsp:include page="base/header.jsp"></jsp:include>
		</div>
		<div id="rap">
			<div id="aside">
				<%@ include file="base/aside.jsp" %>
			</div>
			<div id="content">
				<table>
					<p>공지사항<a href="../notice/notice.jsp">more</a></p>
						<ul>
							<li>이동철씨.................</li>
							<li>김지구씨 실제로 지구로 밝혀져....</li>
							<li>김나율씨 실제 일진으로 밝혀져....</li>
							<li>김나율씨 실제 일진으로 밝혀져....</li>
							<li>김나율씨 실제 일진으로 밝혀져....</li>
						
						</ul>
				</table>
			</div>
		</div>
	
		<div id="footer">
			<jsp:include page="base/footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>
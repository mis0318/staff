<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${empty loginUser }">
<jsp:forward page="ls"/>
    </c:if>
<!-- 제이쿼리 부분  -->
<script src="../js/jquery.js"></script>
<script src="../js/jquery-ui.min.js"></script>
<link rel="stylesheet" href="../css/jquery-ui.css">
<header>
	<div id="header">
		<a href="Main.jsp">헤더</a>
			<div id="headlogin">
				${loginUser.empnm }(${loginUser.empno })님 로그인 중 |
			</div>
		<div id="logout">
				<a href="index.jsp">로그아웃</a>
		</div>
	</div>
</header>
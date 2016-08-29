<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 제이쿼리 부분  -->
<script src="js/jquery.js"></script>
<script src="js/jquery-ui.min.js"></script>
<link rel="stylesheet" href="css/jquery-ui.css">
<title>로그인창</title>
</head>
<body>
	<form action ="ls" method="post" name = "mainlogin" id="mainlogin">
	<table>
	<TR>
		<td>아이디 :</td>
		<td>
			<input type="text" name="empno" size ="20" maxlength="12">
		</td>
	</TR>
	
	<tr>		
		<td>비밀번호:</td>
		<td>
		<input type="password" name="pwd" size ="20" maxlength="12">
		</td>
	
	</tr>
	<tr>
	<td>${message }</td>
	<td>
		<input type="submit" value="로그인">
	</table>
	</form>
		<input type="button" value="회원가입" class="cancel"
     	onclick="location='ss?command=join_form'">
</body>
</html>
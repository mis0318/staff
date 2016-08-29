<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판</title>
<link rel="stylsheet" href="../css/shopping.css">
<script type="text/javascript" src="../js/notice.js"></script>
<link href="../css/base.css" type="text/css" rel="stylesheet">
<link href="../css/headfooter.css" type="text/css" rel="stylesheet">
<link href="../css/aside.css" type="text/css" rel="stylesheet">

<!-- 제이쿼리 부분  -->
<script src="../js/jquery.js"></script>
<script src="../js/jquery-ui.min.js"></script>
<link rel="stylesheet" href="../css/jquery-ui.css">
</head>
<body>
	<div align="center">
		<h1>비밀번호 확인</h1>
		<form action = "noticeServlet" name="frm" method="get">
			<input type="hidden" name="command" value="notice_check_pass">
			<input type="hidden" name="num" value="${param.ntcno }">
			<table style="width: 80%">
				<tr>
					<th>사원번호</th>
					<td>
						<input type="password" name="pass" size="20">
					</td>
				</tr>
			</table>
			<br>
			<input type="submit" value=" 확 인 " onclick="return passCheck()">
			<br><BR>${message }
		</form>
	</div>
</body>
</html>
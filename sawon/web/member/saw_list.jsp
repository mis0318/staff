<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!--css 참조 부분 -->
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
			<h2>사원 정보 목록</h2>
			<form name="frm" method="post" action="ss">
				<input type = "hidden" name="command" value="member_list">
				<table>
					<tr>
						<td>사원번호 :
							<input type="text" size="10" maxlength="10"></td>
						<td>
							<label for="from">시작일 : </label>
							<input type="text" id="from" name="from" size="12">
							<label for="to">종료일 :</label>
							<input type="text" id="to" name="to" size="12">
						</td>
					</tr>
					<tr>
						<td>사원명
						<input type="text" size="10" maxlength="10"></td>
						<td><input type="submit" value="전송"></td>
					</tr>
				</table>
				<table>
					<tr>
						<th>순번</th>
						<th>사원명</th>
						<th>직급</th>
						<th>등록일</th>
					</tr>
					<tr>
						<td>1</td>
						<td><a href="saw_detail.jsp">홍길동</a></td>
						<td>사원</td>
						<td>1992.03.18</td>
					</tr>
				</table>
			</form>
			</div>
		</div>
	
		<div id="footer">
			<jsp:include page="../base/footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>
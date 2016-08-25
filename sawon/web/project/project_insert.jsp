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
				<table>
					<tr>
						<td>사번</td>
						<td><input type="text"></td>
					</tr>
					<tr>
						<td>프로젝트명</td>
						<td><input type="text"></td>
					</tr>
					<tr>
						<td>기간</td>
						<td>
							<input type="text" style="max-width: 50px" maxlength="4">년<input type="text"style="max-width: 50px" maxlength="2">월
							<input type="text" style="max-width: 50px" maxlength="2">일 ~ 
							<input type="text" style="max-width: 50px" maxlength="4">년<input type="text" style="max-width: 50px" maxlength="2">월
							<input type="text" style="max-width: 50px" maxlength="2">일
						</td>
					</tr>
					<tr>
						<td>사용스킬</td>
						<td><input type="text"></td>
					</tr>
					<tr>
						<td>상세내용</td>
						<td><input type="text"></td>
					</tr>
					<tr>
						<td>수행역할</td>
						<td>
							<select name="rank">
								<option value="">역할선택</option>
								<option value="10">PM</option>
								<option value="20">PL</option>
								<option value="30">디자이너</option>
								<option value="40">웹퍼블리셔</option>
								<option value="50">개발자</option>
							</select>
						</td>
					</tr>
					<tr>
					<td><input type="submit"></td>
					<td><a href="project_list.jsp">취소</a></td>
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
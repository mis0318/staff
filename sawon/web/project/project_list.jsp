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
			<h2>프로젝트 이력 목록</h2>
			<table>
				<tr>
					<td>사원번호 :
						<input type="text" size="10" maxlength="10"></td>
					<td>등록일 :
						<input type="text" size="8" maxlength="8"> ~ 
						<input type="text" size="8" maxlength="8">
					</td>
				</tr>
				<tr>
					<td>프로젝트명
					<input type="text" size="10" maxlength="10"></td>
					<td><input type="submit" value="전송"></td>
				</tr>
			</table>
			<table>
				<tr>
					<th>순번</th>
					<th>사원번호</th>
					<th>프로젝트명</th>
					<th>등록일</th>
				</tr>
				<tr>
					<td>1</td>
					<td>0123456789</td>
					<td><a href="project_detail.jsp">사원관리프로젝트</a></td>
					<td>1992.03.18</td>
				</tr>
				<tr>
					<td>2</td>
					<td>0123456789</td>
					<td><a href="project_detail.jsp">사원관리프로젝트</a></td>
					<td>1992.03.18</td>
				</tr>
				<tr>
					<td>3</td>
					<td>0123456789</td>
					<td><a href="project_detail.jsp">사원관리프로젝트</a></td>
					<td>1992.03.18</td>
				</tr>
				<tr>
					<td>4</td>
					<td>0123456789</td>
					<td><a href="project_detail.jsp">사원관리프로젝트</a></td>
					<td>1992.03.18</td>
				</tr>
				<tr>
					<td>5</td>
					<td>0123456789</td>
					<td><a href="project_detail.jsp">사원관리프로젝트</a></td>
					<td>1992.03.18</td>
				</tr>
				<tr>
					<td>6</td>
					<td>0123456789</td>
					<td><a href="project_detail.jsp">사원관리프로젝트</a></td>
					<td>1992.03.18</td>
				</tr>
				<tr>
					<td>7</td>
					<td>0123456789</td>
					<td><a href="project_detail.jsp">사원관리프로젝트</a></td>
					<td>1992.03.18</td>
				</tr>
				<tr>
					<td>8</td>
					<td>0123456789</td>
					<td><a href="project_detail.jsp">사원관리프로젝트</a></td>
					<td>1992.03.18</td>
				</tr>
				<tr>
					<td>9</td>
					<td>0123456789</td>
					<td><a href="project_detail.jsp">사원관리프로젝트</a></td>
					<td>1992.03.18</td>
				</tr>
				<tr>
					<td>10</td>
					<td><a href="saw_list.jsp">0123456789</a></td>
					<td><a href="project_detail.jsp">사원관리프로젝트</a></td>
					<td>1992.03.18</td>
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
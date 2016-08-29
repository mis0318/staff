<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link href="../css/base.css" type="text/css" rel="stylesheet">
<link href="../css/headfooter.css" type="text/css" rel="stylesheet">
<link href="../css/aside.css" type="text/css" rel="stylesheet">
<!-- 제이쿼리 부분  -->
<script src="../js/jquery.js"></script>
<script src="../js/jquery-ui.min.js"></script>
<link rel="stylesheet" href="../css/jquery-ui.css">
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
				<form>
					<table>
						<tr>
							<td rowspan="13">
								<form action ="" method="post" enctype="multipart/form-data" name="">
								<input type="file" name="FileNam">
							</td>
							<td>사원 번호</td>
							<td><input type="text" size="10" maxlength="10" readonly="readonly">${memeber.empno }</td>
						</tr>
						<tr>
							<td>부서 번호</td>
							<td>	
								<select name="deptno">
									<option value="">부서선택</option>
									<option value="0">개발부</option>
									<option value="1">관리부</option>
								</select>
							</td>
						</tr>
						<tr>
							<td>직급</td>
							<td>
								<select name="jobno">
									<option value="">직급선택</option>
									<option value="2">사원</option>
									<option value="3">주임</option>
									<option value="4">대리</option>
									<option value="5">과장</option>
									<option value="6">차장</option>
									<option value="7">부장</option>
									<option value="8">상무</option>
									<option value="9">대표이사</option>
								</select>
							</td>
						</tr>
						<tr>
							<td>이름</td>
							<td><input type="text" size="10" maxlength="10" name="empnm"></td>
						</tr>
						<tr>
							<td>민번</td>
							<td><input type="text" size="13" maxlength="13" name="jumin"></td>
						</tr>
						<tr>
							<td>전화</td>
							<td><input type="text" size="11" maxlength="11" name="phone"></td>
						</tr>
						<tr>
							<td>우편</td>
						<td><input type="text" size="7" maxlength="7" name="aadrno"></td>
						</tr>
						<tr>
							<td>주소</td>
							<td><input type="text"></td>
						</tr>
						<tr>
							<td>상세주소</td>
							<td><input type="text" name="address"></td>
						</tr>
						<tr>
							<td>급여</td>
							<td><input type="text" readonly="readonly"></td>
						</tr>
						<tr>
							<td>입사일</td>
							<td><input type="text" size="8" maxlength="8"></td>
						</tr>
						<tr>
							<td>퇴사일</td>
							<td><input type="text" size="8" maxlength="8"></td>
						</tr>
						<tr>
							<td>등록일</td>
							<td><input type="text" size="8" maxlength="8"></td>
						</tr>
					</table><br>
						<a href="saw_list.jsp">목록</a>
						<a href="saw_insert.jsp">수정</a>
				</form>
			</div>
		</div>
		<div id="footer">
			<jsp:include page="../base/footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>
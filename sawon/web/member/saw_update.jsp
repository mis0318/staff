<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
							<td><input type="text" size="10" maxlength="10" readonly="readonly"></td>
						</tr>
						<tr>
							<td>부서 번호</td>
							<td>	
								<select name="dept">
									<option value="">부서선택</option>
									<option value="00">개발부</option>
									<option value="01">관리부</option>
								</select>
							</td>
						</tr>
						<tr>
							<td>직급</td>
							<td>
								<select name="rank">
									<option value="">직급선택</option>
									<option value="02">사원</option>
									<option value="03">주임</option>
									<option value="04">대리</option>
									<option value="05">과장</option>
									<option value="06">차장</option>
									<option value="07">부장</option>
									<option value="08">상무</option>
									<option value="09">대표이사</option>
								</select>
							</td>
						</tr>
						<tr>
							<td>이름</td>
							<td><input type="text" size="10" maxlength="10"></td>
						</tr>
						<tr>
							<td>민번</td>
							<td><input type="text" size="13" maxlength="13"></td>
						</tr>
						<tr>
							<td>전화</td>
							<td><input type="text" size="11" maxlength="11"></td>
						</tr>
						<tr>
							<td>우편</td>
							<td><input type="text" size="7" maxlength="7"></td>
						</tr>
						<tr>
							<td>주소</td>
							<td><input type="text"></td>
						</tr>
						<tr>
							<td>상세주소</td>
							<td><input type="text"></td>
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="../css/base.css" type="text/css" rel="stylesheet">
<link href="../css/headfooter.css" type="text/css" rel="stylesheet">
<link href="../css/aside.css" type="text/css" rel="stylesheet">
<!-- 제이쿼리 부분  -->
<script src="../js/jquery.js"></script>
<script src="../js/jquery-ui.min.js"></script>
<link rel="stylesheet" href="../css/jquery-ui.css">
<script>
$(function(){
	$("#tabs").tabs();
});
</script>
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
			<div id= "tabs">
					<ul>
						<li><a href="#tabs-1">기본항목</a>
						<li><a href="#tabs-2">경력사항</a>
						<li><a href="#tabs-3">학력사항</a>
						<li><a href="#tabs-4">자격증</a>
						<li><a href="#tabs-5">스킬목록</a>
					</ul>
				<div id="tabs-1">
				<form>
					<table>
						<tr>
							<td rowspan="13">
								<form action ="" method="post" enctype="multipart/form-data" name=""/>
								<input type="file" name="FileName">
							</td>
							<td>사원 번호</td>
							<td><input type="text" size="10" maxlength="10"></td>
						</tr>
						<tr>
							<td>부서 번호</td>
							<td>	
								<select name="dept">
									<option value="">부서선택</option>
									<option value="1">개발부</option>
									<option value="2">관리부</option>
								</select>
							</td>
						</tr>
						<tr>
							<td>직급</td>
							<td>
								<select name="job">
									<option value="">직급선택</option>
									<option value="1">사원</option>
									<option value="2">주임</option>
									<option value="3">대리</option>
									<option value="4">과장</option>
									<option value="5">차장</option>
									<option value="6">부장</option>
									<option value="7">상무</option>
									<option value="8">대표이사</option>
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
							<td><input type="text"></td>
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
					<input type="submit" value="전송">
					<input type="reset" value="초기화">
				</form>
			</div>
				
				<div id="tabs-2">
					<p>경력사항 입력 폼</p>
				</div>
				
				<div id="tabs-3">
					<p>학력사항 입력 폼</p>
				</div>
				
				<div id="tabs-4">
					<p>자격증 입력 폼</p>
				</div>
				
				<div id="tabs-5">
					<table>
					<tr>
						<td>웹디자이너 스킬</td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" name="skill" value="100">웹디자인
							<input type="checkbox" name="skill" value="101">정보설계
							<input type="checkbox" name="skill" value="102">포토샵
							<input type="checkbox" name="skill" value="103">플래쉬
							<input type="checkbox" name="skill" value="104">HTML<br>
							<input type="checkbox" name="skill" value="105">드림위버
							<input type="checkbox" name="skill" value="106">나모
							<input type="checkbox" name="skill" value="107">파이어웍스
							<input type="checkbox" name="skill" value="108">자바스크립트
							<input type="checkbox" name="skill" value="109">스위시<br>
							<input type="checkbox" name="skill" value="110">XML
							<input type="checkbox" name="skill" value="111">UI디자인
							<input type="checkbox" name="skill" value="112">일러스트레이터
							<input type="checkbox" name="skill" value="113">아바타
							<input type="checkbox" name="skill" value="114">웹UI<br>
							<input type="checkbox" name="skill" value="115">모바일UI
							<input type="checkbox" name="skill" value="116">인터페이스디자인
							<input type="checkbox" name="skill" value="117">온라인광고디자인
							<input type="checkbox" name="skill" value="118">플래쉬액션스크립트
							<input type="checkbox" name="skill" value="119">UX디자인
							<input type="checkbox" name="skill" value="120">편집디자인
						</td>
					<tr>
						<td>
							웹프로그래머 스킬
						</td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" name="skill" value="200">웹프로그래머
							<input type="checkbox" name="skill" value="201">asp
							<input type="checkbox" name="skill" value="202">jsp
							<input type="checkbox" name="skill" value="203">java
							<input type="checkbox" name="skill" value="204">Servlet<br>
							<input type="checkbox" name="skill" value="205">CORBA
							<input type="checkbox" name="skill" value="206">php
							<input type="checkbox" name="skill" value="207">cgi
							<input type="checkbox" name="skill" value="208">xml
							<input type="checkbox" name="skill" value="209">SQL<br>
							<input type="checkbox" name="skill" value="210">MySQL
							<input type="checkbox" name="skill" value="211">wml
							<input type="checkbox" name="skill" value="212">hdml
							<input type="checkbox" name="skill" value="213">mHTML
							<input type="checkbox" name="skill" value="214">SCJP<br>
							<input type="checkbox" name="skill" value="215">.NET
							<input type="checkbox" name="skill" value="216">EJB
							<input type="checkbox" name="skill" value="217">VRML
							<input type="checkbox" name="skill" value="218">VB.NET
							<input type="checkbox" name="skill" value="219">APM<br>
							<input type="checkbox" name="skill" value="220">AJAX
							<input type="checkbox" name="skill" value="221">MS-SQL
							<input type="checkbox" name="skill" value="222">WinForm
							<input type="checkbox" name="skill" value="223">ASP.NET
							<input type="checkbox" name="skill" value="224">Miplatform
						</td>
					</tr>
					<tr>
						<td>
							웹 퍼블리셔 스킬
						</td>
					</tr>
					<tr>
						<td>
							<input type="checkbox" name="skill" value="300">HTML코딩
							<input type="checkbox" name="skill" value="301">웹퍼블리셔
							<input type="checkbox" name="skill" value="302">웹표준
							<input type="checkbox" name="skill" value="303">웹접근성
							<input type="checkbox" name="skill" value="304">CSS<br>
							<input type="checkbox" name="skill" value="305">HTML5
							<input type="checkbox" name="skill" value="306">컨텐츠개발
							<input type="checkbox" name="skill" value="307">e-Learning
							<input type="checkbox" name="skill" value="308">컨텐츠관리
							<input type="checkbox" name="skill" value="309">UI-UX<br>
							<input type="checkbox" name="skill" value="310">CSS3
						</td>
					</tr>
					</table>
				</div>
				
				</div>
			</div>
		</div>
		<div id="footer">
			<jsp:include page="../base/footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>
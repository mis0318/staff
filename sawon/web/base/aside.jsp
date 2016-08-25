<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 제이쿼리 부분  -->
<script src="../js/jquery.js"></script>
<script src="../js/jquery-ui.min.js"></script>
<link rel="stylesheet" href="../css/jquery-ui.css">
<div id="aside">
	<h2><a href="notice/notice.jsp"><input type="button" value="공지사항"></a></h2>
	<div>
		<p>프로젝트</p>
		<div id="ui_button">
	  		<a href="project/project_list.jsp"><input type="button" value="프로젝트 목록"></a><br/>
	    	<a href="project/project_insert.jsp"><input type="button" value="프로젝트 등록"></a>
		</div>
	</div>
	<div >
		<p>사원</p>
		<div>
			<a href="member/saw_list.jsp"><input type="button" value="사원목록"></a><br/>
			<a href="member/saw_insert.jsp"><input type="button" value="사원수정"></a>
		</div>
	</div>
</div>


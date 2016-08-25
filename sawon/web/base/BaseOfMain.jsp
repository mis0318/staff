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

<!--css 참조 부분 -->
<link href="../css/base.css" type="text/css" rel="stylesheet">
<link href="../css/headfooter.css" type="text/css" rel="stylesheet">
<link href="../css/aside.css" type="text/css" rel="stylesheet">
</head>
<body>
	<div id="wrap">
	
		<div id="header">
			
			<jsp:include page="header.jsp"></jsp:include>
		</div>
		
		<div id="rap">
			<div id="aside">
				<%@ include file="aside.jsp" %>
			</div>
			<div id="content">
				
			</div>
		</div>
	
		<div id="footer">
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
		
	</div>
</body>
</html>
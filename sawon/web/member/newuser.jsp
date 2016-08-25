<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<link href="../css/base.css" type="text/css" rel="stylesheet">
<link href="../css/headfooter.css" type="text/css" rel="stylesheet">
<link href="../css/aside.css" type="text/css" rel="stylesheet">
<!-- 제이쿼리 부분  -->
<script src="../js/jquery.js"></script>
<script src="../js/jquery-ui.min.js"></script>
<link rel="stylesheet" href="../css/jquery-ui.css">
<script>
$(function() {
	var dialog, form,
	name = $( "#name" ),
	password = $( "#password" ),
	allFields = $( [] ).add( name ).add( email ).add( password ),
	tips = $( ".validateTips" );

	function updateTips( t ) {
		tips
			.text( t )
			.addClass( "ui-state-highlight" );
		setTimeout(function() {
			tips.removeClass( "ui-state-highlight", 1500 );
		}, 500 );
	}
/* 길이 양식 맞추는것 */
	function checkLength( o, n, min, max ) {
		if ( o.val().length > max || o.val().length < min ) {
			o.addClass( "ui-state-error" );
			updateTips( n + "의 길이가 " +
					min + "자에서" + max + "자까지 입력해 주세요." );
			return false;
		} else {
			return true;
		}
	}
	
	function checkRegexp( o, regexp, n ) {
		if ( !( regexp.test( o.val() ) ) ) {
			o.addClass( "ui-state-error" );
			updateTips( n );
			return false;
		} else {
			return true;
		}
	}
	function addUser() {
		var valid = true;
		allFields.removeClass( "ui-state-error" );
		valid = valid && checkLength( name, "username", 3, 16 );
		valid = valid && checkLength( password, "password", 5, 16 );
		valid = valid && checkRegexp( name, /^[가-힣a-z]([가-힣0-9a-z_\s])+$/i, "유저명은 이중에서 선택되야합니다. a-z, 0-9, underscores, spaces and must begin with a letter." );
		valid = valid && checkRegexp( password, /^([0-9a-zA-Z])+$/, "비밀번호는 이중에서 선택되야합니다. : a-z 0-9" );
		if ( valid ) {
			$( "#users tbody" ).append( "<tr>" +
					"<td>" + name.val() + "</td>" +
					"<td>" + password.val() + "</td>" +
					"</tr>" );
			dialog.dialog( "close" );
		}
		return valid;
	}
	dialog = $( "#dialog-form" ).dialog({
		autoOpen: false,
		height: 300,
		width: 350,
		modal: true,
		buttons: {
			"아이디 생성": addUser,
			"취소": function() {
				dialog.dialog( "close" );
			}
		},
		close: function() {
			form[ 0 ].reset();
			allFields.removeClass( "ui-state-error" );
		}
	});
	form = dialog.find( "form" ).on( "submit", function( event ) {
		event.preventDefault();
		addUser();
	});
	$( "#create-user" ).button().on( "click", function() {
		dialog.dialog( "open" );
	});
});
</script>
<body>
				<form>
					<table>
						<tr>
							<td rowspan="13">
								<form action ="" method="post" enctype="multipart/form-data" name="empimg">
								<input type="file" name="FileNam">
							</td>
							<td>사원 번호</td>
							<td><input type="text" size="10" maxlength="10" readonly="readonly" name="empno"></td>
						</tr>
						<tr>
							<td>직급</td>
							<td>
								<input value="0" readonly="readonly">신입</p>
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
							<td><input type="text" size="7" maxlength="7" name="addrno"></td>
						</tr>
						<tr>
							<td>주소</td>
							<td><input type="text" name="address"></td>
						</tr>
						<tr>
							<td>상세주소</td>
							<td><input type="text" name="address"></td>
						</tr>
						<tr>
							<td>입사일</td>
							<td><input type="text" size="8" maxlength="8" name="indt"></td>
						</tr>
						<tr>
							<td>등록일</td>
							<td><input type="text" size="8" maxlength="8" name="empdt"></td>
						</tr>
					</table><br>
						<a href="../index.jsp">가입신청</a>
						<input type="reset" value="초기화">
				</form>
</body>
</html>
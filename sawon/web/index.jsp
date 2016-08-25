<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 제이쿼리 부분  -->
<script src="js/jquery.js"></script>
<script src="js/jquery-ui.min.js"></script>
<link rel="stylesheet" href="css/jquery-ui.css">
<title>로그인창</title>
  <script>
  $( function() {
    var dialog, form,
      name = $( "#name" ),
      password = $( "#password" ),
      allFields = $( [] ).add( password ),
      tips = $( ".validateTips" );
 
    function updateTips( t ) {
      tips
        .text( t )
        .addClass( "ui-state-highlight" );
      setTimeout(function() {
        tips.removeClass( "ui-state-highlight", 1500 );
      }, 500 );
    }
 
    function checkLength( o, n, min, max ) {
      if ( o.val().length > max || o.val().length < min ) {
        o.addClass( "ui-state-error" );
        updateTips( n + "은(는) " + min + "에서 " + max + "자까지 입력해 주세요." );
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
      valid = valid && checkLength( email, "email", 6, 80 );
      valid = valid && checkLength( password, "password", 5, 16 );
 
      valid = valid && checkRegexp( name, /^[가-힣a-z]([가-힣0-9a-z_\s])+$/i, "성명은 3자에서 16자 이내로 작성해 주세요" );
      valid = valid && checkRegexp( email, emailRegex, "이메일 형식은 ui@jquery.com처럼 되어야 합니다." );
      valid = valid && checkRegexp( password, /^([0-9a-zA-Z])+$/, "Password는 영문자 소문자, 숫자 5~16 허용합니다. : a-z 0-9" );
 
      if ( valid ) {
    	  $("#insertmember").submit();
        dialog.dialog( "close" );
      }
      return valid;
    }
 
    dialog = $( "#dialog-form" ).dialog({
      autoOpen: false,
      height: 800,
      width: 700,
      modal: true,
      buttons: {
        "회원등록": addUser,
        "취소": function() {
          dialog.dialog( "close" );
        }
      },
      close: function() {
        form[ 0 ].reset();
        allFields.removeClass( "ui-state-error" );
      }
    });
 
 
    $( "#create-user" ).button().on( "click", function() {
      dialog.dialog( "open" );
    });
  } );
  </script>
</head>
<body>
	<form action ="ls" method="post" name = "mainlogin" id="mainlogin">
	<table>
	<TR>
		<td>아이디 :</td>
		<td>
			<input type="text" name="empno" size ="20" maxlength="12">
		</td>
	</TR>
	
	<tr>		
		<td>비밀번호:</td>
		<td>
		<input type="password" name="pwd" size ="20" maxlength="12">
		</td>
	
	</tr>
	<tr>
	<td></td>
	<td>
		<input type="submit" value="로그인">
	</table>
	</form>
		<div id="dialog-form" title="회원등록">
		  <p class="validateTips">모든 필드에 입력해 주세요</p>
				<form action ="us" method="post" enctype="multipart/form-data" name="insetmember">
					<table>
						<tr>
							<td rowspan="13">
								<input type="image" name="FileName">
							</td>
							<td>사원 번호</td>
							<!-- <td><input type="text" size="10" maxlength="10" name="empno"></td> -->
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
				</form>
		</div> 
		<input type="button" id="create-user" value="회원가입">
		<a href="Main.jsp"><input type="button" value="강제로그인"></a> 
</body>
</html>
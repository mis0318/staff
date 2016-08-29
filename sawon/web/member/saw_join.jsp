<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<!-- 제이쿼리 부분  -->
<script src="../js/jquery.js"></script>
<script src="../js/jquery-ui.min.js"></script>
<link rel="stylesheet" href="../css/jquery-ui.css">
<!--css 참조 부분 -->
<link href="../css/base.css" type="text/css" rel="stylesheet">
<link href="../css/headfooter.css" type="text/css" rel="stylesheet">
<link href="../css/aside.css" type="text/css" rel="stylesheet">
<script>
  $( function() {
    var dialog, form,
 
      addrno = $( "#addrno" ),
      zipcode = $( "#zipcode" ),
      sido = $( "#sodi" ),
      sigungu = $( "#sigungu" ),
      dong = $( "#dong" ),
      ri = $( "#ri" ),
      bldg = $( "#bldg" ),
      bungi = $( "#bungi" ),
      allFields = $( [] ).add( addrno ).add( zipcode ).add( sido ).add( sogungu ).add( dong ).add( ri ).add( bldg ).add( bungi );

    function addUser() {
 
      if ( valid ) {
        $( "#adr" ).append( "<tr>" +
          "<td>" + addrno.val() + "</td>" +
          "<td>" + zipcode.val() + "</td>" +
          "<td>" + sido.val() + "</td>" +
        "</tr>" );
        dialog.dialog( "close" );
      }
      return valid;
    }
 
    dialog = $( "#dialog-form" ).dialog({
      autoOpen: false,
      height: 400,
      width: 350,
      modal: true,
      buttons: {
        "주소등록": addUser,
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
<!-- ------------------------------------------모달부분--------------------------------------------------- -->
	<div id="wrap">
		<div id="rap">
			<div id="content">
				<div id="dialog-form" title="주소찾기">
				  <p class="validateTips">모든 필드에 입력해 주세요</p>
				 
				  <form>
				    <fieldset>
				      <label for="name">주소검색</label>
				      <input type="text" name="adressdetail">
				      <input type="submit" value="완료">
				    </fieldset>
				  </form>
				</div>
				<!------------------------------------------------------모달부분 끝  ----------------------------------------->
					<table>
						<tr>
							<td rowspan="13">
								<input type="file" name="FileName">
							</td>
							<td><input type="hidden" size="10" maxlength="10" name="empno"></td>
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
							<td>
								<input type="text" id="adr">
								<button id="create-user">주소입력</button>
							</td>
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
							<td><input type="hidden" size="8" maxlength="8" name="empdt"></td>
						</tr>
					</table><br>
			</div> 
			</div>
		</div>
</body>
</html>
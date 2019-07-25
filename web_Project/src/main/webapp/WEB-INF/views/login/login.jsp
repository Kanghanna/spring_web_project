<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="../include/member_header.jsp" %>
<title>로그인</title>
<script>
	$(document).ready(function() {
		$("#btnLogin").click(function() {
			var userId = $("#userId").val();
			var userPw = $("#userPw").val();
			
			if(userId == ""){
				alert("아이디를 입력하세요");
				$("#userId").focus();
				return;
			}
			if(userPw == ""){
				alert("비밀번호를 입력하세요");
				$("#userPw").focus();
				return;
			}
			document.form1.action = "${path}/login/loginCheck.do";
			document.form1.submit();
			
			
		});
		
	});
</script>
</head>
<body>
<%@ include file="../include/member_menu.jsp" %>
<h2>로그인</h2>
<form name="form1">
	<table border="1">
		<tr>
			<td>아이디</td>
			<td><input name="userId" id="userId"></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="userPw" id="userPw"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<button type="button" id="btnLogin">로그인</button>
			</td>
		</tr>
	</table>
</form>
</body>
</html>
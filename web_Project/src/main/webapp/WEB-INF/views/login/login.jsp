<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="../include/member_header.jsp" %>
<title>�α���</title>
<script>
	$(document).ready(function() {
		$("#btnLogin").click(function() {
			var userId = $("#userId").val();
			var userPw = $("#userPw").val();
			
			if(userId == ""){
				alert("���̵� �Է��ϼ���");
				$("#userId").focus();
				return;
			}
			if(userPw == ""){
				alert("��й�ȣ�� �Է��ϼ���");
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
<h2>�α���</h2>
<form name="form1">
	<table border="1">
		<tr>
			<td>���̵�</td>
			<td><input name="userId" id="userId"></td>
		</tr>
		<tr>
			<td>��й�ȣ</td>
			<td><input type="password" name="userPw" id="userPw"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<button type="button" id="btnLogin">�α���</button>
			</td>
		</tr>
	</table>
</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>ȸ�� ��� ������</title>
	<%@ include file = "../include/member_header.jsp" %>
</head>
<body>
	<%@ include file = "../include/member_menu.jsp" %>
	<h2>ȸ�������</h2>
	<form name="form1" method="post" action="${path}/member/insert.do">
		<table border="1" width="400px">
			<tr>
				<td>���̵�</td>
				<td><input name="userId"></td>
			</tr>
			<tr>
				<td>��й�ȣ</td>
				<td><input type="password" name="userPw"></td>
			</tr>
			<tr>
				<td>�̸�</td>
				<td><input name="userName"></td>
			</tr>
			<tr>
				<td>�̸��� �ּ�</td>
				<td><input name="userEmail"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="Ȯ��">
					<input type="reset" value="���">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file = "../include/member_header.jsp" %>
<title>ȸ�� ���</title>
</head>

<body>

<%@ include file = "../include/member_menu.jsp" %>
<h2>ȸ�� ���</h2>
<input type = "button" value = "ȸ�����" onclick="location.href='${path}/member/write.do'">
<table border = "1" width = "700px">
	<tr>
		<th>���̵�</th>
		<th>�̸�</th>
		<th>�̸���</th>
		<th>ȸ������ ����</th>
	</tr>
	<c:forEach var = "row" items = "${list}">
	<tr>
		<td>${row.userId}</td>
		<td><a href="${path}/member/view.do?userId=${row.userId}">${row.userName}</a></td>
		<td>${row.userEmail}</td>
		<td>${row.userRegdate}</td>
	</tr>
	</c:forEach>
</table>
</body>
</html>
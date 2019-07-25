<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file = "../include/member_header.jsp" %>
<title>�Խñ� ���</title>

<script>
	$(document).ready(function() {
		$("#btnWrite").click(function() {
			location.href = "${path}/board/write.do";
		});
	});
</script>
</head>
<body>
<%@ include file = "../include/member_menu.jsp" %>
<h2>�Խñ� ���</h2>
<input id="btnWrite" type="button" value="�۾���">
<table border="1" width="700px">
	<tr>
		<th>�۹�ȣ</th>
		<th>�� ����</th>
		<th>�۾���</th>
		<th>�ۼ���</th>
		<th>��ȸ��</th>
	</tr>
	<c:forEach var="row" items="${list}">
	<tr>
		<td>${row.bno}</td>
		<td><a href="${path}/board/view.do?bno=${row.bno}">${row.title}</a></td>
		<td>${row.writer}</td>
		<td>${row.regdate}</td>
		<td>${row.viewcnt}</td>
	</tr>
	</c:forEach>
</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file = "../include/member_header.jsp" %>
<title>게시글 목록</title>

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
<h2>게시글 목록</h2>
<input id="btnWrite" type="button" value="글쓰기">
<table border="1" width="700px">
	<tr>
		<th>글번호</th>
		<th>글 제목</th>
		<th>글쓴이</th>
		<th>작성일</th>
		<th>조회수</th>
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
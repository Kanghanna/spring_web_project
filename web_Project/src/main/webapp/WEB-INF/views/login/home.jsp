<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="../include/member_header.jsp" %>
<title>Ȩ</title>
</head>
<body>
<%@ include file="../include/member_menu.jsp" %>
	
	<c:if test="${msg == 'success'}">
	<h2>${sessionScope.userName}(${sessionScope.userId})�� ȯ���մϴ�!</h2>
	</c:if>
</body>
</html>
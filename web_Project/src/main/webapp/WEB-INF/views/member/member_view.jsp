<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="../include/member_header.jsp" %>
<title>세부 정보</title>

<script>
	$(document).ready(function() {
		$("#btnUpdate").click(function() {
			document.form1.action="${path}/member/update.do";
			document.form1.submit();
		});
		$("#btnDelete").click(function() {
			if(confirm("삭제하시겠습니까?")){
				document.form1.action="${path}/member/delete.do";
				document.form1.submit();
			}
		});
	});

</script>
</head>
<body>
<%@ include file="../include/member_menu.jsp" %>
<h2>회원 상세 정보</h2>
<form name="form1" method="post">
	<table>
		<tr>
			<td>아이디</td>
			<td><input name="userId" value="${dto.userId}" readonly="readonly"></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input name="userPw" value="${dto.userPw}"></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input name="userName" value="${dto.userName}"></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input name="userEmail" value="${dto.userEmail}"></td>
		</tr>
		<tr>
			<td>가입일</td>
			<td><fmt:formatDate value="${dto.userRegdate}" pattern="yyyy-MM-dd"/></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input id="btnUpdate" type="button" value="수정">
				<input id ="btnDelete" type="button" value="삭제">
			</td>
		</tr>
		<tr>
			<td cospan="2" align="center">
			<span style="color:red;">${message}</span>
			</td>
		</tr>
	</table>
</form>
</body>

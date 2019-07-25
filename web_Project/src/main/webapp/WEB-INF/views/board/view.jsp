<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="../include/member_header.jsp" %>
<title>게시글 상세 내용</title>
<script>
	$(document).ready(function() {
		$("#btnDelete").click(function() {
			if(confirm("삭제하시겠습니까?")) {
				document.form1.action = "${path}/board/delete.do";
				document.form1.submit();
			}
		});
		
		$("#btnUpdate").click(function() {
			var title = $("#title").val();
			var content = $("#content").val();
			var writer = $("#writer").val();
			
			if(title == ""){
				alert("제목이 없습니다.");
				document.form1.title.focus();
				return;
			}
			if(content == ""){
				alert("내용이 없습니다.");
				document.form1.content.focus();
				return;
			}
			if(writer == ""){
				alert("글쓴이가 없습니다.");
				document.form1.writer.focus();
				return;
			}
			
			document.form1.action = "${path}/board/update.do";
			document.form1.submit();
		});
	});
</script>
</head>
<body>
<%@ include file="../include/member_menu.jsp" %>
<h2>게시글 상세 내용</h2>
<form name="form1" method="post">
	<table>
		<tr>
			<td colspan="4" align="right">
				<input type="hidden" name="bno" value="${dto.bno}">
				<input id="btnUpdate" type="button" value="수정">
				<input id="btnDelete" type="button" value="삭제">
			</td>
		</tr>
		<tr>
			<td>조회수</td>
			<td>${dto.viewcnt}</td>
			<td>글쓴이</td>
			<td><input id="writer" name="writer" value="${dto.writer}" placeholder="작성자"></td>
		</tr>
		<tr colspan="4">
			<td>작성일자</td>
			<td><fmt:formatDate value="${dto.regdate}" pattern="yyyy-MM-dd a HH:mm:ss"/>
			</td>
		</tr>
		
		<tr colspan="2">
			<td>글 제목</td>
			<td><input id="title" name="title" value="${dto.title}" placeholder="제목을 입력하세요."></td>
		</tr>
		<tr>
			<td>내용</td>
			<td colspan="3"><input id="content" name="content" value="${dto.content}"
				placeholder="내용을 입력하세요." style="width:400px; height:400px;">
			</td>
		</tr>
	</table>
</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file = "../include/member_header.jsp" %>
<title>게시글 쓰기</title>
<script>
	$(document).ready(function() {
		$("#btnSave").click(function() {
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
			document.form1.submit();
		});
	});
</script>
</head>
<body>
<%@ include file = "../include/board_menu.jsp" %>
<h2>게시글 작성</h2>

<form name="form1" method="post" action="${path}/board/insert.do">
	<div>
	이름
		<input name="writer" id="writer" placeholder="이름을 입력하세요">
	</div>
	<div>
	제목
		<input name="title" id="title" size="80" placeholder="제목을 입력하세요">
	</div>
	<div>
	내용
		<textarea name="content" id="content" rows="4" cols="80"
		placeholder="내용을 입력해주세요"></textarea>
	</div>
	<div style="width:650px; text-align:center">
		<button type="button" id="btnSave">확인</button>
		<button type="reset">취소</button>
	</div>
</form>
</body>
</html>
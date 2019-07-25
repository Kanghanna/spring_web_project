<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file = "../include/member_header.jsp" %>
<title>�Խñ� ����</title>
<script>
	$(document).ready(function() {
		$("#btnSave").click(function() {
			var title = $("#title").val();
			var content = $("#content").val();
			var writer = $("#writer").val();
			
			if(title == ""){
				alert("������ �����ϴ�.");
				document.form1.title.focus();
				return;
			}
			if(content == ""){
				alert("������ �����ϴ�.");
				document.form1.content.focus();
				return;
			}
			if(writer == ""){
				alert("�۾��̰� �����ϴ�.");
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
<h2>�Խñ� �ۼ�</h2>

<form name="form1" method="post" action="${path}/board/insert.do">
	<div>
	�̸�
		<input name="writer" id="writer" placeholder="�̸��� �Է��ϼ���">
	</div>
	<div>
	����
		<input name="title" id="title" size="80" placeholder="������ �Է��ϼ���">
	</div>
	<div>
	����
		<textarea name="content" id="content" rows="4" cols="80"
		placeholder="������ �Է����ּ���"></textarea>
	</div>
	<div style="width:650px; text-align:center">
		<button type="button" id="btnSave">Ȯ��</button>
		<button type="reset">���</button>
	</div>
</form>
</body>
</html>
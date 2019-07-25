<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="../include/member_header.jsp" %>
<title>�Խñ� �� ����</title>
<script>
	$(document).ready(function() {
		$("#btnDelete").click(function() {
			if(confirm("�����Ͻðڽ��ϱ�?")) {
				document.form1.action = "${path}/board/delete.do";
				document.form1.submit();
			}
		});
		
		$("#btnUpdate").click(function() {
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
			
			document.form1.action = "${path}/board/update.do";
			document.form1.submit();
		});
	});
</script>
</head>
<body>
<%@ include file="../include/member_menu.jsp" %>
<h2>�Խñ� �� ����</h2>
<form name="form1" method="post">
	<table>
		<tr>
			<td colspan="4" align="right">
				<input type="hidden" name="bno" value="${dto.bno}">
				<input id="btnUpdate" type="button" value="����">
				<input id="btnDelete" type="button" value="����">
			</td>
		</tr>
		<tr>
			<td>��ȸ��</td>
			<td>${dto.viewcnt}</td>
			<td>�۾���</td>
			<td><input id="writer" name="writer" value="${dto.writer}" placeholder="�ۼ���"></td>
		</tr>
		<tr colspan="4">
			<td>�ۼ�����</td>
			<td><fmt:formatDate value="${dto.regdate}" pattern="yyyy-MM-dd a HH:mm:ss"/>
			</td>
		</tr>
		
		<tr colspan="2">
			<td>�� ����</td>
			<td><input id="title" name="title" value="${dto.title}" placeholder="������ �Է��ϼ���."></td>
		</tr>
		<tr>
			<td>����</td>
			<td colspan="3"><input id="content" name="content" value="${dto.content}"
				placeholder="������ �Է��ϼ���." style="width:400px; height:400px;">
			</td>
		</tr>
	</table>
</form>
</body>
</html>
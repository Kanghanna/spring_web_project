<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!-- context ��� -->
<c:set var="path" value="${pageContext.request.contextPath}"/>

	<div style="text-align : center;">
		<a href="${path}/">Ȩ</a>&nbsp;&nbsp;
		<a href="${path}/member/list.do">ȸ�� ����</a>&nbsp;&nbsp;
		<a href="${path}/board/list.do">�Խñ� ���</a>
	</div>
	
	<c:choose>
		<c:when test="${sessionScope.userId==null}">
			<a href="${path}/login/login.do">�α���</a>
		</c:when>
		<c:otherwise>
			${sessionScope.userName}���� �α��� ���Դϴ�.
			<a href="${path}/login/logout.do">�α׾ƿ�</a>
		</c:otherwise>
	</c:choose>
	<hr>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!-- context 경로 -->
<c:set var="path" value="${pageContext.request.contextPath}"/>
	<div style="text-align : center;">
		<a href="${path}/member/list.do">회원 관리</a>&nbsp;&nbsp;
		<a href="${path}/board/list.do">게시글 목록</a>
	</div>
	<hr>   
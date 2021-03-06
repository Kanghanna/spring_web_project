<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!-- context 경로 -->
<c:set var="path" value="${pageContext.request.contextPath}"/>

	<div style="text-align : center;">
		<a href="${path}/">홈</a>&nbsp;&nbsp;
		<a href="${path}/member/list.do">회원 관리</a>&nbsp;&nbsp;
		<a href="${path}/board/list.do">게시글 목록</a>
	</div>
	
	<c:choose>
		<c:when test="${sessionScope.userId==null}">
			<a href="${path}/login/login.do">로그인</a>
		</c:when>
		<c:otherwise>
			${sessionScope.userName}님이 로그인 중입니다.
			<a href="${path}/login/logout.do">로그아웃</a>
		</c:otherwise>
	</c:choose>
	<hr>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Home</title>
</head>
<script>
	
</script>
<body>
	<h1>main</h1>
	<div>
		<c:if test="${member != null }">
			<p>${member.userName}님환영합니다.</p>
			<form action="<c:url value='/user/signout'/>">
				<button type="submit">로그아웃</button>
			</form>
			<a href="<c:url value='/post/insert'/>"> 글쓰기 </a>
		</c:if>

	</div>
	<div>
		<c:if test="${member == null}">
			<a href="<c:url value='/user/signin'/>">로그인</a>
			<a href="<c:url value='/user/signup'/>">회원가입</a>
		</c:if>
	</div>
	<a href="<c:url value='/post/list'/>">글 목록</a>

</body>
</html>

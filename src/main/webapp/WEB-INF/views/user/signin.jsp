<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>sign in</h1> 
	<form method="post" action="<c:url value='/user/signin/'/>">
		<p>아이디</p>
		<input type="text" name="userName" />
		<p>비밀번호</p>
		<input type="text" name="userPass" />
		<c:if test="${msg == false}">
			<p>로그인에 실패했습니다.</p>
		</c:if>
		<input type="submit" value="로그인">
	</form>
</body>
</html>

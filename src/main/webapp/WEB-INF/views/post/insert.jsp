<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>insert</h1>
	<form method="POST" action="<c:url value='/post/insert'/>">
		<p>제목</p>
		<hr />
		<input type="text" name="postTitle" />
		<p>내용</p>
		<hr />
		<textarea name="postContent"></textarea>
		<input type="hidden" name="userId" value="${member.userId}"  />
		<p>질병</p>

		<hr />
		<input type="text" name="postDisease" />

		<p>카테고리</p>
		<hr />
		<input type="text" name="postSubject" />
		<input type="submit" value="글쓰기">
	</form>
</body>
</html>

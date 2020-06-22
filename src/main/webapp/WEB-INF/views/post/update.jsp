<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>update</h1>
	<form method="POST" action="<c:url value='/post/update'/>">
		<input type="hidden" name="postId" value="${post.postId}" />
		<p>제목</p>
		<hr />
		<input type="text" name="postTitle" value="${post.postTitle}" />
		<p>내용</p>
		<hr />
		<textarea name="postContent">${post.postContent}</textarea> 
		<p>질병</p>
		<hr />
		<input type="text" name="postDisease" value="${post.postDisease}" /> 
		<p>카테고리</p>
		<hr />
		<input type="text" name="postSubject" value="${post.postSubject}" />
		<input type="submit" value="글수정">
	</form>
</body>
</html>

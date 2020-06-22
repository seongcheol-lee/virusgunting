<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>detail</h1>
	<p>${post.postTitle}</p>
	<textarea>${post.postContent}</textarea>

	<a href="<c:url value='/post/update/${post.postId}'/>">수정</a>
	<a href="<c:url value='/post/delete/${post.postId}'/>">삭제하기</a>
</body>
</html>

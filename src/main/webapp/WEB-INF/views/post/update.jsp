<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Home</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="../nav.jsp" flush="true" />
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

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" contentType="text/html; charset=UTF-8"%>

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
	<div class="container">
	<br> <br>
		<form method="POST" action="<c:url value='/post/insert'/>">
			<p>제목</p>
			<hr />
			<input type="text" name="postTitle" />
			<p>내용</p>
			<hr />
			<textarea name="postContent"></textarea>
			<input type="hidden" name="userId" value="${member.userId}" />
			<p>질병</p>

			<hr />
			<input type="text" name="postDisease" />

			<p>카테고리</p>
			<hr />
			<input type="text" name="postSubject" /> <input type="submit"
				value="글쓰기">
		</form>
	</div>
</body>
</html>

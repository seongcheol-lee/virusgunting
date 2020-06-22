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
	<div class='container'>
		<a href="<c:url value='/post/insert'/>"> 글쓰기 </a>
		<table border="1">
			<c:forEach var="post" items="${postList}">
				<tr>
					<td><a href="<c:url value='/post/${post.postId}'/>">${post.postId}</a></td>
					<td>${post.postTitle}</td>
					<td>${post.postDateTime}</td>
					<td>${post.postDisease}</td>
					<td>${post.postSubject}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>

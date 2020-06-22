<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>list</h1>
	<a href="<c:url value='/post/insert'/>"> 글쓰기 </a>
	<table border="1">
		<c:forEach var="post" items="${postList}">
			<tr>
				<td><a href="<c:url value='/post/${post.postId}'/>">${post.postId}</a></td>
				<td>${post.postTitle}</td>
				<td>${post.postContent}</td>
				<td>${post.postDateTime}</td>
				<td>${post.postDisease}</td>
				<td>${post.postSubject}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>

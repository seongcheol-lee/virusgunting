<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" contentType="text/html; charset=UTF-8"%> 

<html>
<head>
<title>Home</title>
<script type="text/javascript" src="<c:url value='/js/post/view.js'/>"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="../nav.jsp" flush="true" />
	<div class="container">
		<p>${post.postTitle}</p>
		<p>${post.postContent}</p>

		<c:if test="${member != null }">
			<form action="<c:url value='/post/like'/>">
				<input type="hidden" value="${member.userId}" name="userId" />
				<input type="hidden" value="${post.postId}" name="postId" />
				<input type="submit" value="좋아요" />
			</form>
			<form action="<c:url value='/post/dislike'/>">
				<input type="hidden" value="${member.userId}" name="userId" />
				<input type="hidden" value="${post.postId}" name="postId" />
				<input type="submit" value="싫어요" />
			</form>
		</c:if>
		<p>좋아요 수 : ${post.postLikes}</p>
		<p>싫어요 수 : ${post.postDisLikes}</p>
		<c:if test="${member.userId == post.userId}">
			<a href="<c:url value='/post/update/${post.postId}'/>">수정</a>
			<a href="<c:url value='/post/delete/${post.postId}'/>">삭제하기</a>
		</c:if>
	</div>
</body>
</html>

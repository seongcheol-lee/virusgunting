<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" contentType="text/html; charset=UTF-8"%>

<html>
<head>
<title>Home</title>
<link rel="stylesheet" href="<c:url value='/css/post/view.css'/>">
<script type="text/javascript" src="<c:url value='/js/post/view.js'/>"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="../nav.jsp" flush="true" />
	<div class="container mt-5">
		<span class="subtitle">여러분의 따뜻한 말 한마디가 ${post.postUserName} 님에게 힘이 됩니다!</span>
		<hr>
		<div>
			<span class="category">${post.postDisease}-${post.postSubject}</span>
			<h1 class="title">${post.postTitle}</h1>
			<div>
				<span class="user">${post.postUserName} </span>
				<span class="date">ㆍ ${post.postDateTime}</span>
			</div>

		</div>
		<hr>
		<div class="content-wrap">
			<p>${post.postContent}</p>
		</div>
		<hr>
		<div></div>
		<c:if test="${member != null }">
			<form action="<c:url value='/post/like'/>">
				<input type="hidden" value="${member.userId}" name="userId" />
				<input type="hidden" value="${post.postId}" name="postId" />
				<div class="input-group input-group-sm mb-3">
					<button class="btn btn-primary btn-lg" type="submit">
						<i class="fa fa-circle-o-notch fa-spin"></i>${post.postLikes}
					</button>
				</div>
			</form>
			<form action="<c:url value='/post/dislike'/>">
				<input type="hidden" value="${member.userId}" name="userId" />
				<input type="hidden" value="${post.postId}" name="postId" />
				<input type="submit" value="싫어요" />
			</form>
		</c:if>
		<p>싫어요 수 : ${post.postDisLikes}</p>
		<c:if test="${member.userId == post.userId}">
			<a href="<c:url value='/post/update/${post.postId}'/>">수정</a>
			<a href="<c:url value='/post/delete/${post.postId}'/>">삭제하기</a>
		</c:if>
	</div>
</body>
<style>
.subtitle {
	font-size: 25px;
	color: grey;
	font-family: 'Do Hyeon', sans-serif;
}
</style>
</html>

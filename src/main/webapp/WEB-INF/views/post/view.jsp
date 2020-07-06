<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<link rel="shortcut icon" href="<c:url value='/images/favicon.png'/>">
<link rel="icon" href="<<c:url value='/images/favicon.png'/>>">
<title>야관문 : 게시판</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="<c:url value='/js/post/view.js'/>"></script>
<link rel="stylesheet" href="<c:url value='/css/post/view.css'/>">
</head>
<body>
	<jsp:include page="../nav.jsp" flush="true" />
	<div class="container mb-5 font-nanum">
		<div>
			<span class="subtitle">
				여러분의 따뜻한 말 한마디가
				<span style="color: rgb(23, 162, 184); font-weight: 700">${post.postUserName} </span>
				님에게 힘이 됩니다!
			</span>
		</div>
		<div class="fixed-top btn-back"> 
			<a style="font-size: 3rem;" href="<c:url value='/post/list'/>">
			
				<button class="bttn-material-circle bttn-md bttn-default">
					<i class="fas fa-long-arrow-alt-left"></i>
				</button>
			</a>
		</div>
		<hr>
		<div>
			<span class="category">${post.postDisease}-${post.postSubject}</span>
			<h1 class="title">${post.postTitle}</h1>
			<div>
				<span class="user">${post.postUserName}&nbsp;&nbsp;</span>
				<span class="date">${post.postDateTime}</span>
			</div>

		</div>
		<hr>
		<div class="content-wrap">
			<p>${post.postContent}</p>
		</div>
		<hr>
		<div class="d-flex bd-highlight align-items-center">
			<div class=" p-2 bd-highlight">
				<c:if test="${member != null }">
					<form style="display: inline" onSubmit="return false;" id="like-form">
						<input type="hidden" value="${member.userId}" name="userId" />
						<input type="hidden" value="${post.postId}" name="postId" />
						<div style="display: inline" class="input-group input-group-sm mb-3">
							<c:choose>
								<c:when test="${like_check == 0}">
									<button id="like-btn" onclick="clickLike()" class="btn btn-outline-primary btn-lg">
										<i class="far fa-thumbs-up"></i>
										<span id="like-count">&nbsp;${post.postLikes}</span>
									</button>
								</c:when>
								<c:otherwise>
									<button onclick="clickLike()" class="btn btn-primary btn-lg">
										<i class="far fa-thumbs-up"></i>
										<span id="like-count">&nbsp;${post.postLikes}</span>
									</button>
								</c:otherwise>
							</c:choose>
						</div>
					</form>
					<form style="display: inline" onSubmit="return false;" id="dislike-form">
						<input type="hidden" value="${member.userId}" name="userId" />
						<input type="hidden" value="${post.postId}" name="postId" />
						<div style="display: inline" class="input-group input-group-sm mb-3">
							<c:choose>
								<c:when test="${dislike_check == 0}">
									<button id="dislike-btn" onclick="clickDisLike()" class="btn btn-outline-danger btn-lg" type="submit">
										<i class="far fa-thumbs-down"></i>
										<span id="dislike-count"> &nbsp;${post.postDisLikes} </span>
									</button>
								</c:when>
								<c:otherwise>
									<button onclick="clickDisLike()" class="btn btn-danger btn-lg" type="submit">
										<i class="far fa-thumbs-down"></i>
										<span id="dislike-count"> &nbsp;${post.postDisLikes} </span>
									</button>
								</c:otherwise>
							</c:choose>
						</div>
					</form>
				</c:if>
				<c:if test="${member == null }">
					<div style="display: inline" class="input-group input-group-sm mb-3">
						<button class="btn btn-outline-primary btn-lg" disabled>
							<i class="far fa-thumbs-up"></i>
							&nbsp;${post.postLikes}
						</button>
					</div>
					<div style="display: inline" class="input-group input-group-sm mb-3">
						<button class="btn btn-outline-danger btn-lg" disabled>
							<i class="far fa-thumbs-down"></i>
							&nbsp;${post.postDisLikes}
						</button>
					</div>
				</c:if>
			</div>
			<div class="ml-auto p-2 bd-highlight ">
				<c:if test="${member.userId == post.userId || member.userAdmin == 1}">
					<form style="display: inline" method="POST" onsubmit="return validate();" action="<c:url value='/post/delete/${post.postId}'/>">
						<!-- <button type="submit" class="btn btn-outline-danger btn-sm"> -->
						<button class="bttn-fill bttn-sm bttn-danger">
							삭제하기
							<i class="fas fa-trash"></i>
						</button>
					</form>
					<form style="display: inline" action="<c:url value='/post/update/${post.postId}'/>">
						<!-- <button type="submit" class="btn btn-outline-warning btn-sm"> -->
						<button class="bttn-fill bttn-sm bttn-warning">
							수정하기
							<i class="fas fa-edit"></i>
						</button>
					</form>
				</c:if>
				<c:if test="${member.userId == post.userId}">
					<c:if test="${post.postSubject  eq '질문' && post.postResponded eq 0}">
						<form method="POST" style="display: inline" action="<c:url value='/post/responded/${post.postId}'/>">
							<button class="bttn-fill bttn-sm bttn-success">
								해결 완료
								<i class="far fa-check-circle"></i>
							</button>
						</form>
					</c:if>
				</c:if>

			</div>
		</div>
		<div class="comment-wrap">
			<div class="comment-label">
				<span style="font-weight: 700">댓글쓰기</span>
				<hr>
			</div>
			<c:forEach var="comment" items="${commentList}">
				<div class="comment">
					<div class="mb-2 d-flex bd-highlight">
						<div>
							<span style="font-size: 1.3rem; font-weight: 700">${comment.commentUserName}&nbsp; </span>
							<span style="font-size: 0.7rem; color: #888888;">
								<fmt:parseDate value="${comment.commentDateTime}" var="noticePostDate" pattern="yyyy-MM-dd" />
								<fmt:formatDate value="${noticePostDate}" pattern="MM.dd" />
							</span>
						</div>
						<c:if test="${comment.userId == member.userId || member.userAdmin == 1}">
							<div class="ml-auto">
								<form onsubmit="return validate();" action="<c:url value='/comment/delete'/>" method="post">
									<input type="hidden" name="commentId" value="${comment.commentId}">
									<input type="hidden" name="postId" value="${post.postId}">
									<button class="btn btn-sm" type="submit">
										<i class="fas fa-times"></i>
									</button>
								</form>
							</div>
						</c:if>
					</div>
					<p>${comment.commentContent}</p>
					<hr>
				</div>
			</c:forEach>

			<c:if test="${member != null }">
				<form class="form" action="<c:url value='/comment/insert'/>" method="post">
					<div class="input-group mb-3 ">
						<input type="text" name="commentContent" class="form-control" placeholder="${member.userName} 님 따뜻한 말을 남겨주세요.">
						<input type="hidden" name="postId" value="${post.postId}">
						<input type="hidden" name="userId" value="${member.userId}">
						<input type="hidden" name="commentUserName" value="${member.userName}">
						<div class="input-group-append">
							<button class="btn btn-dark" type="submit" id="button-addon2">
								<i class="fas fa-pen"></i>
							</button>
						</div>
					</div>
				</form>
			</c:if>
		</div>
	</div>
	<jsp:include page="../footer.jsp" flush="true" />
</body>
</html>

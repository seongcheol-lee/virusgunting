<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" contentType="text/html; charset=UTF-8"%>

<html>
<head>
<title>Home</title>
<script src="https://kit.fontawesome.com/5ac56ffa94.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="<c:url value='/css/post/view.css'/>">
<script type="text/javascript" src="<c:url value='/js/post/view.js'/>"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="../nav.jsp" flush="true" />
	<div class="container mt-5 mb-5">
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
		<div class="d-flex bd-highlight align-items-center">
			<div class=" p-2 bd-highlight">
				<c:if test="${member != null }">
					<form style="display: inline" action="<c:url value='/post/like'/>">
						<input type="hidden" value="${member.userId}" name="userId" />
						<input type="hidden" value="${post.postId}" name="postId" />
						<div style="display: inline" class="input-group input-group-sm mb-3">
							<button class="btn btn-outline-primary btn-lg" type="submit">
								<i class="far fa-thumbs-up"></i>
								&nbsp;${post.postLikes}
							</button>
						</div>
					</form>
					<form style="display: inline" action="<c:url value='/post/dislike'/>">
						<input type="hidden" value="${member.userId}" name="userId" />
						<input type="hidden" value="${post.postId}" name="postId" />
						<div style="display: inline" class="input-group input-group-sm mb-3">
							<button class="btn btn-outline-danger btn-lg" type="submit">
								<i class="far fa-thumbs-down"></i>
								&nbsp;${post.postDisLikes}
							</button>
						</div>
					</form>
				</c:if>
			</div>
			<div class="ml-auto p-2 bd-highlight ">
				<c:if test="${member.userId == post.userId}">
					<form style="display: inline" onsubmit="return validate();" action="<c:url value='/post/delete/${post.postId}'/>">
						<button type="submit" class="btn btn-outline-danger btn-sm">
							<i class="fas fa-trash"></i>
							삭제하기
						</button>
					</form>
					<form style="display: inline" action="<c:url value='/post/update/${post.postId}'/>">
						<button type="submit" class="btn btn-outline-warning btn-sm">
							<i class="fas fa-edit"></i>
							수정하기
						</button>
					</form>
					<c:if test="${post.postSubject  eq '질문' && post.postResponded eq 0}">
						<form method="POST" style="display: inline" action="<c:url value='/post/responded/${post.postId}'/>">
							<button type="submit" class="btn btn-outline-success btn-sm">
								<i class="far fa-check-circle"></i>
								해결 완료
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
			<div class="comment">
				<h6 style="font-weight: 700">작성자</h6>
				<p>내용내용내용내용내용내용내용내용</p>
				<hr>
			</div>
			<div class="comment">
				<h6 style="font-weight: 700">작성자</h6>
				<p>내용내용내용내용내용내용내용내용</p>
				<hr>
			</div>
			<div class="comment">
				<h6 style="font-weight: 700">작성자</h6>
				<p>내용내용내용내용내용내용내용내용</p>
				<hr>
			</div>
			<div class="comment">
				<h6 style="font-weight: 700">작성자</h6>
				<p>내용내용내용내용내용내용내용내용</p>
				<hr>
			</div>

			<div class="comment">
				<h6 style="font-weight: 700">작성자</h6>
				<p>내용내용내용내용내용내용내용내용</p>
				<hr>
			</div>
			<div class="comment">
				<h6 style="font-weight: 700">작성자</h6>
				<p>내용내용내용내용내용내용내용내용</p>
				<hr>
			</div>
			<div class="comment">
				<h6 style="font-weight: 700">작성자</h6>
				<p>내용내용내용내용내용내용내용내용</p>
				<hr>
			</div>
			<c:if test="${member != null }">
				<form class="form">
					<div class="input-group mb-3 ">
						<input type="text" class="form-control" placeholder="따뜻한 말을 남겨주세요.">
						<div class="input-group-append">
							<button class="btn btn-dark" type="button" id="button-addon2">
								<i class="fas fa-pen"></i>
							</button>
						</div>
					</div>
				</form>
			</c:if>
		</div>
	</div>
</body>
<style>
.form {
	padding-left: 1.5rem;
	padding-right: 1.5rem;
}

.subtitle {
	font-size: 25px;
	color: grey;
	font-family: 'Do Hyeon', sans-serif;
}

.comment-wrap {
	margin-top: 1.5rem;
	background-color: rgba(23, 162, 184, 0.1);
	padding-bottom: 0.5rem;
	background-color: rgba(23, 162, 184, 0.1);
}

.comment-label {
	padding-top: 1rem;
	padding-left: 1.5rem;
	padding-right: 1.5rem;
}

.comment {
	padding-top: 0.5rem;
	padding-bottom: 0.5rem;
	padding-left: 1.5rem;
	padding-right: 1.5rem;
}
</style>
<script>
	function validate() {
		var input = confirm('정말 삭제하시겠습니까?');
		if (input) {
			return ture;
		}
		return false;
	}
</script>
</html>

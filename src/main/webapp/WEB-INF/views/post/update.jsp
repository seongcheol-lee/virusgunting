<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>야관문</title>
<script type="text/javascript" src="<c:url value='/js/post/insert.js'/>"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="../nav.jsp" flush="true" />
	<div class="container mt-5">
		<span class="subtitle">경험과 지식을 공유하면 빨리 치유할 수 있습니다!</span>
		<hr>
		<form method="POST" onsubmit="return validate()" action="<c:url value='/post/update'/>">
			<input type="hidden" name="postId" value="${post.postId}" />
			<div class="form-group">
				<label for="exampleFormControlSelect1">질병 선택</label>
				<select name="postDisease" class="form-control" id="exampleFormControlSelect1">
					<option value="탈모">탈모</option>
					<option value="치질">치질</option>
					<option value="여드름">여드름</option>
					<option value="변비">변비</option>
					<option value="무좀">무좀</option>
				</select>
			</div>
			<div class="form-group">
				<label for="exampleFormControlSelect1">주제 선택</label>
				<select name="postSubject" class="form-control" id="exampleFormControlSelect1">
					<option value="경험">경험</option>
					<option value="질문">질문</option>
					<option value="정보">정보</option>
				</select>
			</div>
			<div class="form-group">
				<label for="Title">제목</label>
				<input type="text" value="${post.postTitle}" class="form-control" id="Title" name="postTitle" required>
			</div>

			<div class="form-group">
				<label for="postContent">내용</label>
				<textarea class="form-control" name="postContent" id="postContent" rows="15">${post.postContent}</textarea>
			</div>
			<input type="submit" class="btn btn-danger btn-lg" value="글수정">
		</form>
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

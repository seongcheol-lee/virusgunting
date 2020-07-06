<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" contentType="text/html; charset=UTF-8"%>

<html>
<head>
<link rel="shortcut icon" href="<c:url value='/images/favicon.png'/>">
<link rel="icon" href="<<c:url value='/images/favicon.png'/>>">
<title>야관문 : 게시판</title>
</head>
<body>
	<jsp:include page="../nav.jsp" flush="true" />
	<div class="container font-nanum">
		<span class="subtitle">경험과 지식을 공유하면 빨리 치유할 수 있습니다!</span>
		<hr>
		<form class="d-flex flex-column" method="POST" onsubmit="return validate()" action="<c:url value='/post/insert'/>">
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
					<option value="정보">정보</option>
					<option value="경험">경험</option>
					<option value="질문">질문</option>
					<option value="자유">자유</option>
				</select>
			</div>
			<div class="form-group">
				<label for="Title">제목</label>
				<input type="text" class="form-control" id="Title" name="postTitle" required>
			</div>
			<div class="form-group">
				<label for="postContent">내용</label>
				<textarea class="form-control" name="postContent" id="postContent" rows="15"></textarea>
			</div>

			<input type="hidden" name="postUserName" value="${member.userName}" required />
			<input type="hidden" name="userId" value="${member.userId}" required />
			<button class="bttn-material-flat bttn-md bttn-success">
				글쓰기
				<i class="fas fa-plus"></i>
			</button> 
		</form>
	</div>
	<jsp:include page="../footer.jsp" flush="true" />

</body>
</html>

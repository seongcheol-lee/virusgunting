<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" contentType="text/html; charset=UTF-8"%>

<html>
<head>
<link rel="shortcut icon" href="<c:url value='/images/favicon.png'/>">
<link rel="icon" href="<c:url value='/images/favicon.png'/>">
<script src="https://cdn.ckeditor.com/ckeditor5/20.0.0/classic/ckeditor.js"></script>
<title>야관문 : 게시판</title>
</head>
<body>
	<jsp:include page="../nav.jsp" flush="true" />
	<div class="container mt-5 mb-5">
		<span class="subtitle ">경험과 지식을 공유하면 빨리 치유할 수 있습니다!</span>
		<hr>
		<form class="d-flex flex-column" method="POST" onSubmit="return validate()" action="<c:url value='/post/insert'/>">
			<div class="form-group ">
				<label for="exampleFormControlSelect1">질병 선택</label>
				<select name="postDisease" class="form-control" id="exampleFormControlSelect1">
					<option value="탈모">탈모</option>
					<option value="치질">치질</option>
					<option value="여드름">여드름</option>
					<option value="변비">변비</option>
					<option value="무좀">무좀</option>
				</select>
			</div>
			<div class="form-group ">
				<label for="exampleFormControlSelect1">주제 선택</label>
				<select name="postSubject" class="form-control" id="exampleFormControlSelect1">
					<option value="정보">정보</option>
					<option value="경험">경험</option>
					<option value="질문">질문</option>
					<option value="자유">자유</option>
				</select>
			</div>
			<div class="form-group ">
				<label for="Title">제목</label>
				<input type="text" class="form-control" id="Title" name="postTitle" required>
			</div>
			<div class="form-group">
				<label for="postContent">내용</label>
				<textarea class="form-control editor" name="postContent" id="Content"></textarea>
			</div>

			<input type="hidden" name="postUserName" value="${member.userName}" required />
			<input type="hidden" name="userId" value="${member.userId}" required />
			<div class="d-flex justify-content-center font-nanum">
				<a href="<c:url value='/post/list'/>">
					<button class="bttn-material-flat bttn-md bttn-default" type="button">취소</button>
				</a>
				<button class="bttn-material-flat bttn-md bttn-success ml-5">작성 완료</button>
			</div>
		</form>
	</div>
	<jsp:include page="../footer.jsp" flush="true" />
</body>
<script>
	let theEditor;
	ClassicEditor
    .create( document.querySelector( '#Content' ) )
    .then( editor => {
        theEditor = editor; // Save for later use.
    } )
    .catch( error => {
        console.error( error );
    } );
	function validate() {
		var Title = $('#Title');
		if (Title.val().length > 30) {
			alert("제목은 30자까지 입력해주세요.");
			Title.val("");
			return false;
		}
		Content = theEditor.getData();
		if(Content.length === 0){
			alert("내용을 입력해주세요.");
			return false;
		} 
		return true;
	}
</script>
<style>
.ck-editor__editable_inline {
	min-height: 500px;
}
</style>
</html>

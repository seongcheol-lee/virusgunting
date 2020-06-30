<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" contentType="text/html; charset=UTF-8"%>
<html>

<head>
<title>야관문</title> 
<script type="text/javascript" src="<c:url value='/js/user/signup.js'/>"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script> 
</head>

<body>
	<jsp:include page="../nav.jsp" flush="true" />
	<div class="container" >
		<form class="form-group font-nanum"  method="post" onsubmit="return validate()" action="<c:url value='/user/signup'/>">
			<div class="form-group">
				<div class="row">
					<div class="col-6 offset-3">
						<label for="username">아이디</label>
						<input class="form-control" id="signup-name" type="text" name="userName" required placeholder="영문 소문자로 시작하는 6~16자의 영문 소문자,숫자를 입력해주세요." />
						<span id="username-explain" class="explain">&nbsp;</span>
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="row">
					<div class="col-6 offset-3">
						<label for="password1">비밀번호</label>
						<input class="form-control" id="password1" type="password" name="userPass" required placeholder="영문 소문자로 시작하는 8~16자의 영문 소문자,숫자를 입력해주세요." />
						<span id="password1-explain" class="explain">&nbsp;</span>
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="row">
					<div class="col-6 offset-3">
						<label for="password2">비밀번호 확인</label>
						<input class="form-control" id="password2" type="password" required placeholder="영문 소문자로 시작하는 8~16자의 영문 소문자,숫자를 입력해주세요." />
						<span id="password2-explain" class="explain">&nbsp;</span>
					</div>
				</div>
			</div>
			<div align="center">
				<c:if test="${msg=='signupfail'}">
					<p class="font-weight-bold font-nanum" style="color: red;">동일한 아이디가 있습니다.</p>
				</c:if>
				<input class="btn btn-outline-info" type="submit" value="회원가입" />
			</div>
		</form>
	</div>
	<jsp:include page="../footer.jsp" flush="true" />
</body>
<style>
.explain {
	font-size: 0.7em;
	color: red;
}
</style>
</html>
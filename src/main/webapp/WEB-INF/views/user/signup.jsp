<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" contentType="text/html; charset=UTF-8"%>
<html> 
<head>
	<title>Home</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
		integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
		integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
		crossorigin="anonymous"></script>
	<script type="text/javascript" src="<c:url value='/js/user/signup.js'/>"></script>
</head> 
<body>
	<div class="container">
		<form class="form-group" method="post" onsubmit="return validate();" action="<c:url value='/user/signup'/>">
			<div class="form-group">
				<div class="row">
					<div class="col-6">
						<input class="form-control" id="username" type="text" name="userName" placeholder="USER NAME"
							required />
					</div>
					<div class="col-6">
						<span class="align-middle">6~16자의 영문 소문자,숫자를 넣어주세요.</span>
					</div>
				</div>
			</div>
			<div class="form-group">
				<label for="password1">비밀번호</label>
				<div class="row">
					<div class="col-6">
						<input class="form-control" id="password1" type="password" name="userPass" required />
					</div>
					<div class="col-6">
						<span class="align-middle">8~16자의 영문 소문자,대문자,숫자를 넣어주세요.</span>
					</div>
				</div>
			</div>
			<div class="form-group">
				<label for="password2">비밀번호 확인</label>
				<div class="row">
					<div class="col-6">
						<input class="form-control" id="password2" type="password" required />
					</div>
					<div class="col-6">
						<span></span>
					</div>
				</div>
			</div>

			<c:if test="${msg == false}">
				<p>동일한 아이디가 있습니다.</p>
			</c:if>
			<input type="submit" value="회원가입" />
		</form>
	</div> 
</body>

</html>
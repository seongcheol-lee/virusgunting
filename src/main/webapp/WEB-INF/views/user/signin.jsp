<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" contentType="text/html; charset=UTF-8"%>
<html>
<
<head>
<title>Home</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
	integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
	crossorigin="anonymous"></script>
<script type="text/javascript" src="<c:url value='/js/user/signin.js'/>"></script>
<link rel="stylesheet" href="<c:url value='/css/user/signin.css'/>">
</head>
<body>
	<div class="container">
		<form method="post" action="<c:url value='/user/signin/'/>">
			<div class="form-group">
				<div class="row">
					<div class="col-6 offset-3">
						<label for="username">아이디</label> 
						<input class="form-control "
							id="username" type="text" name="userName" required />
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="row">
					<div class="col-6 offset-3">
						<label for="password">비밀번호</label> 
						<input class="form-control"
							id="password" type="password" name="userPass" required />
					</div>
				</div>
			</div>
			<div align="center">
				<c:if test="${msg == false}">
					<p class="font-weight-bold" style="color: red;">로그인에 실패했습니다</p>
				</c:if>
				<input class="btn btn-outline-info" type="submit" value="로그인" />
			</div>
		</form>
	</div>
</body>
</html>

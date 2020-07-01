<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" contentType="text/html; charset=UTF-8"%>
<html>

<head>
<title>야관문</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>

<body>
	<jsp:include page="../nav.jsp" flush="true" />
	<div class="container" style="min-height: 100%;">
		<form class="form-group font-nanum" method="post"  action="<c:url value='/user/withdrawal'/>">
			<div class="form-group">
				<div class="row"> 
					<div class="col-6 offset-3">
						<input type="text" name="userId" required value="${member.userId}" />
						<input type="text" name="userName" required value="${member.userName}" />
						<label for="password1">비밀번호</label>
						<input class="form-control" id="password1" type="password" name="userPass" required placeholder="영문 소문자로 시작하는 8~16자의 영문 소문자,숫자를 입력해주세요." />
					</div>
				</div>
			</div>
			<div align="center">
				<input class="btn btn-outline-info" type="submit" value="회원가입" />
			</div>
		</form>
	</div>
	<jsp:include page="../footer.jsp" flush="true" />
</body>
<style>
</style>
</html>
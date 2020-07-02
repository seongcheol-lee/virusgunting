<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" contentType="text/html; charset=UTF-8"%>
<html>

<head>
<title>야관문</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<script>
	function validate() {
		var input = confirm('정말 탈퇴하시겠습니까? 복구가 불가능 합니다.');
		if (input) {
			return ture;
		}
		return false;
	}
</script>
<body>
	<jsp:include page="../nav.jsp" flush="true" />
	<div class="container mt-5" style="min-height: 100%;">
		<form class="form-group font-nanum" method="post" onsubmit="return validate();" action="<c:url value='/user/withdrawal'/>">
			<div class="form-group">
				<div class="row">
					<div class="col-6 offset-3">
						<input type="hidden" name="userId" required value="${member.userId}" />
						<input type="hidden" name="userName" required value="${member.userName}" />
						<label for="password1">비밀번호 확인</label>
						<input class="form-control" id="password1" type="password" name="userPass" required placeholder="확인을 위한 비밀번호를 입력해주세요." />
					</div>
				</div>
			</div>
			<div align="center">
				<c:if test="${msg=='withdrawalfail'}">
					<p class="font-weight-bold font-nanum" style="color: red;">비밀번호가 틀렸습니다.</p>
				</c:if>
				<button class="bttn-minimal bttn-md bttn-danger" type="submit">회원탈퇴</button>
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
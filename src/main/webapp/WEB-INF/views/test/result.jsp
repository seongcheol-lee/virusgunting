<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>야관문 : 자가진단</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
	<jsp:include page="../nav.jsp" flush="true" />
	<div class="container mb-5 ">
		<span class="subtitle">${msg}</span>
		<hr>
		<div align="center">
			<img src="<c:url value='/images/test/${url}'/>" class="card-img" alt="...">
			<button onclick="location.href='<c:url value='/test/start'/>'" type="button" class="btn btn-outline-secondary btn-lg btn-block mt-3">다른 자가진단 하러가기</button>
			<button onclick="location.href='<c:url value='/post/list/${type}'/>'" type="button" class="btn btn-outline-secondary btn-lg btn-block mt-3">${type}게시판으로이동</button>
		</div>
		<hr>
	</div>
	<jsp:include page="../footer.jsp" flush="true" />
</body>
<style>
.subtitle {
	font-size: 25px;
	color: grey;
	font-family: 'Do Hyeon', sans-serif;
}
</style>
</html>
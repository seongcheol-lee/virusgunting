<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>야관문</title>
</head>
<body>
	<jsp:include page="../nav.jsp" flush="true" />
	<div class="container ">
		<span class="subtitle">늦기전에 스스로 확인하세요!</span>
		<hr>
		<button onclick="location.href='<c:url value='/test/bbT'/>'" type="button" class="btn btn-outline-secondary btn-lg btn-block">변비 자가진단</button>
		<button onclick="location.href='<c:url value='/test/tmT'/>'" type="button" class="btn btn-outline-secondary btn-lg btn-block mt-3">탈모 자가진단</button>
		<button onclick="location.href='<c:url value='/test/cjT'/>'" type="button" class="btn btn-outline-secondary btn-lg btn-block mt-3">치질 자가진단</button>
		<button onclick="location.href='<c:url value='/test/mjT'/>'" type="button" class="btn btn-outline-secondary btn-lg btn-block mt-3">무좀 자가진단</button>
		<button onclick="location.href='<c:url value='/test/ydT'/>'" type="button" class="btn btn-outline-secondary btn-lg btn-block mt-3">여드름 자가진단</button>
	</div>
</body> 
</html>
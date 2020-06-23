<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>야관문</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

</head>
<body>
	<jsp:include page="../nav.jsp" flush="true" />
	<div class="container mt-5 mb-5">
		<span class="subtitle">늦기전에 스스로 확인하세요!</span>
		<hr>
		<button onclick="location.href='<c:url value='/test/bbT'/>'" type="button" class="btn btn-outline-secondary btn-lg btn-block">변비 자가진단</button>
		<button onclick="location.href='<c:url value='/test/tmT'/>'" type="button" class="btn btn-outline-secondary btn-lg btn-block mt-3">탈모 자가진단</button>
		<button onclick="location.href='<c:url value='/test/cjT'/>'" type="button" class="btn btn-outline-secondary btn-lg btn-block mt-3">치질 자가진단</button>
		<button onclick="location.href='<c:url value='/test/mjT'/>'" type="button" class="btn btn-outline-secondary btn-lg btn-block mt-3">무좀 자가진단</button>
		<button onclick="location.href='<c:url value='/test/ydT'/>'" type="button" class="btn btn-outline-secondary btn-lg btn-block mt-3">여드름 자가진단</button>
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
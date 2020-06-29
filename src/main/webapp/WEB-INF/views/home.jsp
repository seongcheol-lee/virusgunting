<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>야관문</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="<c:url value='/css/home.css'/>">
</head>
<body>
	<jsp:include page="./nav.jsp" flush="true" />
	<div class="container" style="margin-top: 5rem;" align="center">
		<p style="font-size: 4rem; font-family: times new roman; font-weight: 700;">minjae ear is donkey ear</p>
		<img src="<c:url value='/images/home/donkey.gif'/>" style="max-width: 65%; height: auto;">
	</div>
</body>
</html>

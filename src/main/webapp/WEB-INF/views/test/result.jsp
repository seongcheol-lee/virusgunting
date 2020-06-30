<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>야관문</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
 
</head>
<body>
	<jsp:include page="../nav.jsp" flush="true" />
	<div class="container  ">
		<span class="subtitle">${msg}</span>
		<hr>
		<div align="center">
			<img src="<c:url value='/images/test/${url}'/>">
		</div>
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
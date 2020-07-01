<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>야관문</title>
<style>
</style>
</head>
<body>
	<jsp:include page="./nav.jsp" flush="true" />
	<div class="container" align="center">
		<p style="font-size: 4rem; font-weight: 700;" class="font-shadow">
			After
			<span style="color: red;">
				Hell
				<i class="fas fa-bomb"></i>
			</span>
			, The
			<span style="color:#31B2A1;">
				Doctor
				<i class="fas fa-user-nurse"></i>
			</span>
		</p>
		<img src="<c:url value='/images/home/donkey.gif'/>" style="max-width: 65%; height: auto;">
	</div>
	<jsp:include page="./footer.jsp" flush="true" />
</body>
</html>

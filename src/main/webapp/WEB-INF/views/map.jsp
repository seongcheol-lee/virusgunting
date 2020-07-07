<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" contentType="text/html; charset=UTF-8"%>
<html>
<head> 
<link rel="shortcut icon" href="<c:url value='/images/favicon.png'/>">
<link rel="icon" href="<c:url value='/images/favicon.png'/>">
<title>야관문</title>
</head>
<body>
	<jsp:include page="./nav.jsp" flush="true" /> 
	<div class="mt-5 mb-5" align="center">
		<iframe src="https://map.naver.com/v5/search/${category}" height="100%" width="95%"></iframe>
		</div>
	<jsp:include page="./footer.jsp" flush="true" />
</body>
</html>

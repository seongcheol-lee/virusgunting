<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="http://localhost:8088/myapp/images/home/ico.png">
<link rel="icon" href="http://localhost:8088/myapp/images/home/ico.png">
<meta charset="UTF-8">
<title>야관문</title>
</head>
<body>
<h1>에러 페이지</h1>
<p>애플리케이션에 오류가 발생했습니다. 담당자에게 문의하세요.</p>
<!--
	Failed URL: ${url}
	Exception: ${exception.message}
	<c:forEach items="${exception.stackTrace}" var="ste">    ${ste} 
	</c:forEach>
-->
</body>
</html>
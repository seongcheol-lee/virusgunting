<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" contentType="text/html; charset=UTF-8"%>

<html>
<head>
<link rel="shortcut icon" href="<c:url value='/images/favicon.png'/>">
<link rel="icon" href="<<c:url value='/images/favicon.png'/>>">
<title>야관문 : 상담</title>
<script src="https://kit.fontawesome.com/5ac56ffa94.js"></script>
<link rel="stylesheet" href="<c:url value='/css/post/view.css'/>">
</head>
<body>
	<jsp:include page="../nav.jsp" flush="true" />
	<div class="container font-nanum" style="min-height: 100%;">
		<span class="subtitle">
			<span class="subtitle font-do">전문가에게 상담받아보세요!</span>
		</span>
		<hr>
		<div>
			<h1 class="title">${consult.consultTitle}</h1>
			<c:choose>
				<c:when test="${member.userAdmin == 1 || member.userId == consult.userId}">
					<div>
						<span class="user">${consult.consultUserName} </span>
						<span class="date">ㆍ ${consult.consultEmail} </span>
					</div>
				</c:when>
				<c:otherwise>
					<div>
						<span class="user">&nbsp;</span>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
		<hr>
		<div class="content-wrap">
			<p>${consult.consultContent}</p>
		</div>
	</div>
	<jsp:include page="../footer.jsp" flush="true" />
</body>
</html>

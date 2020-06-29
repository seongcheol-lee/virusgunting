<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" contentType="text/html; charset=UTF-8"%>

<html>
<head>
<title>야관문</title>
<script src="https://kit.fontawesome.com/5ac56ffa94.js"></script>
<link rel="stylesheet" href="<c:url value='/css/post/view.css'/>">
<script type="text/javascript" src="<c:url value='/js/post/view.js'/>"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="../nav.jsp" flush="true" />
	<div class="container mt-5 mb-5">
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
</body>
</html>

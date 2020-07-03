<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" contentType="text/html; charset=UTF-8"%>

<html>
<head>
<title>야관문</title> 
<script type="text/javascript" src="<c:url value='/js/post/view.js'/>"></script> 
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

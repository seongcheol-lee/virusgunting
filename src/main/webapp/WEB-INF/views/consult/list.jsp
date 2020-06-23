<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="true" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Home</title>
<script type="text/javascript" src="<c:url value='/js/post/list.js'/>"></script>
<link rel="stylesheet" href="<c:url value='/css/post/list.css'/>">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="../nav.jsp" flush="true" />
	<div class="container">
		<br>
		<br>
		<div class="row">
			<div class="col-8">
				<span class="subtitle">전문가에게 상담받아보세요!</span>
			</div>
		</div>
		<hr>
		<form method="POST" action="<c:url value='/consult/insert'/>">
			<p>제목</p>
			<input type="text" id="consultTitle" name="consultTitle" required />
			<hr />
			<p>내용</p>
			<hr />
			<textarea name="consultContent"></textarea>
			<input type="hidden" name="userId" value="${member.userId}" required />
			<p>이메일</p>
			<hr />
			<input type="text" name="consultEmail" required>
			<input type="submit" value="글쓰기">
		</form>
		<c:if test="${member.userAdmin == 1}">
			<table class="table">
				<thead class="head">
					<tr>
						<th width="20%">번호</th>
						<th width="30%">제목</th>
						<th width="30%">내용</th>
						<th width="20%">이메일</th>
					</tr>
				</thead>
				<tbody class="body">
					<c:forEach var="consult" items="${consultList}">
						<tr>
							<td>${consult.consultId}</td>
							<td>${consult.consultTitle}</td>
							<td>${consult.consultContent}</td>
							<td>${consult.consultEmail}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>
	</div>
</body>
</html>

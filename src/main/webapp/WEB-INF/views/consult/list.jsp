<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="true" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>야관문</title>
<script type="text/javascript" src="<c:url value='/js/post/insert.js'/>"></script>
<link rel="stylesheet" href="<c:url value='/css/post/list.css'/>">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="../nav.jsp" flush="true" />
	<div class="container mt-5 mb-5">
		<div class="row">
			<div class="col-8">
				<span class="subtitle font-do">전문가에게 상담받아보세요!</span>
			</div>
		</div>
		<hr>
		<form method="POST" action="<c:url value='/consult/insert'/>">
			<div class="form-group">
				<label for="consultEmail">이메일</label>
				<input type="email" class="form-control" id="consultEmail" name="consultEmail" required>
			</div>
			<div class="form-group">
				<label for="Title">제목</label>
				<input type="text" class="form-control" id="Title" name="consultTitle" required>
			</div>
			<div class="form-group">
				<label for="consultContent">상담 내용</label>
				<textarea class="form-control" name="consultContent" rows="5"></textarea>
			</div>
			<input type="hidden" name="consultUserName" value="${member.userName}" required />
			<input type="hidden" name="userId" value="${member.userId}" required />
			<input type="submit" class="btn btn-outline-info btn-lg font-do" value="상담 남기기">
		</form>
		<c:if test="${member.userAdmin == 1}">
			<table class="table">
				<thead class="head">
					<tr>
						<th width="20%">글 번호</th>
						<th width="60%">제목</th> 
						<th width="20%">이메일</th>
					</tr>
				</thead>
				<tbody class="body">
					<c:forEach var="consult" items="${consultList}">
						<tr>
							<td>${consult.consultId}</td>
							<td>
								<a href="<c:url value='/consult/${consult.consultId}'/>">${consult.consultTitle}</a>
							</td>
							<td>${consult.consultEmail}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>
	</div>
</body>
</html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="true" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<link rel="shortcut icon" href="<c:url value='/images/favicon.png'/>">
<link rel="icon" href="<c:url value='/images/favicon.png'/>">
<title>야관문 : 상담</title>
<script type="text/javascript" src="<c:url value='/js/post/insert.js'/>"></script>
</head>
<body>
	<jsp:include page="../nav.jsp" flush="true" />
	<div class="container mb-5 mt-5 font-nanum" style="min-height: 100%;">
		<div class="row">
			<div class="col-8">
				<span class="subtitle font-do">전문가에게 상담받아보세요!</span>
			</div>
		</div>
		<hr>
		<form class="d-flex flex-column" method="POST" action="<c:url value='/consult/insert'/>">
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
			<button class="bttn-material-flat bttn-md bttn-success ml-auto">
				상담 남기기
				<i class="fas fa-hands-helping"></i>
			</button>
		</form>
		<div class="table-responsive-sm">
			<table class="table table-hover">
				<thead align="center">
					<tr>
						<th width="20%">글 번호</th>
						<th width="60%">제목</th>
						<th width="20%">이메일</th>
					</tr>
				</thead>
				<tbody class="body">
					<c:forEach var="consult" items="${consultList}">
						<tr>
							<td align="center">${consult.consultId}</td>
							<td align="center">
								<a href="<c:url value='/consult/${consult.consultId}'/>">${consult.consultTitle}</a>
							</td>
							<c:choose>
								<c:when test="${member.userAdmin == 1 || member.userId == consult.userId}">
									<td align="center">${consult.consultEmail}</td>
								</c:when>
								<c:otherwise>
									<td></td>
								</c:otherwise>
							</c:choose>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<nav aria-label="Page navigation example">
			<ul class="pagination justify-content-center">
				<c:if test="${paging.startPage != 1 }">
					<li class="page-item">
						<a class="page-link" href="<c:url value='/consult/list?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}'/>">&lt;</a>
					</li>
				</c:if>
				<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
					<c:choose>
						<c:when test="${p == paging.nowPage }">
							<li class="page-item">
								<b class="page-link page-now">${p }</b>
							</li>
						</c:when>
						<c:when test="${p != paging.nowPage }">
							<li class="page-item">
								<a class="page-link" href="<c:url value='/consult/list?nowPage=${p }&cntPerPage=${paging.cntPerPage}'/>">${p }</a>
							</li>
						</c:when>
					</c:choose>
				</c:forEach>
				<c:if test="${paging.endPage != paging.lastPage}">
					<li class="page-item">
						<a class="page-link" href="<c:url value='/consult/list?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}'/>">&gt;</a>
					</li>
				</c:if>
			</ul>
		</nav>
	</div>
	<jsp:include page="../footer.jsp" flush="true" />
</body>
</html>

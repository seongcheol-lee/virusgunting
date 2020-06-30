<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="true" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>야관문</title>
</head>
<body>
	<jsp:include page="../nav.jsp" flush="true" />
	<div class="container ">
		<div class="row">
			<div class="col-7">
				<span class="subtitle">경험과 지식을 공유하면 빨리 치유할 수 있습니다!</span>
			</div>
			<div class="col-5 d-flex justify-content-end align-items-end">
				<a class="ml-3" href="<c:url value='/post/list'/>">전체</a>
				<a class="ml-3" href="<c:url value='/post/list/자유'/>">자유</a>
				<a class="ml-3" href="<c:url value='/post/list/무좀'/>">무좀</a>
				<a class="ml-3" href="<c:url value='/post/list/여드름'/>">여드름</a>
				<a class="ml-3" href="<c:url value='/post/list/탈모'/>">탈모</a>
				<a class="ml-3" href="<c:url value='/post/list/변비'/>">변비</a>
				<a class="ml-3" href="<c:url value='/post/list/치질'/>">치질</a>
			</div>
		</div>
		<hr>
		<div class="table-responsive-sm">
			<table class="table table-hover">
				<thead align="center">
					<tr>
						<th width="8%">글 번호</th>
						<th width="8%">질병</th>
						<th width="30%">제목</th>
						<th width="14%">작성자</th>
						<th width="8%">작성일</th>
						<th width="8%">조회수</th>
						<th width="10%">추천수</th>
						<th width="14%">답변상황</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="post" items="${postList}">
						<tr>
							<td align="center">${post.postId}</td>
							<td align="center">${post.postDisease}</td>
							<td>
								<a href="<c:url value='/post/${post.postId}'/>">[${post.postSubject}] ${post.postTitle}</a>
							</td>
							<td align="center">${post.postUserName}</td>
							<td align="center">
								<fmt:parseDate value="${post.postDateTime}" var="noticePostDate" pattern="yyyy-MM-dd" />
								<fmt:formatDate value="${noticePostDate}" pattern="MM.dd" />
							</td>
							<td align="center">${post.postViews}</td>
							<td align="center">${post.postLikes-post.postDisLikes}</td>
							<c:if test="${post.postSubject eq '질문'}">
								<c:if test="${post.postResponded == '1'}">
									<td>답변완료</td>
								</c:if>
								<c:if test="${post.postResponded == '0'}">
									<td>답변미완료</td>
								</c:if>
							</c:if>
							<c:if test="${post.postSubject ne '질문'}">
								<td>&nbsp;</td>
							</c:if>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>

		<div class="d-flex justify-content-end">
			<form action="<c:url value='/post/search'/>" class="mr-4">
				<select name="category">
					<option value="POST_TITLE">제목</option>
					<option value="POST_CONTENT">내용</option>
					<option value="POST_USERNAME">글쓴이</option>
				</select>
				<input type="text" name="text">
				<input type="submit" value="검색">
			</form>
			<a href="<c:url value='/post/insert'/>">
				<button class="btn btn-outline-info btn-sm">글쓰기</button>
			</a>

		</div>
	</div>
</body> 
</html>

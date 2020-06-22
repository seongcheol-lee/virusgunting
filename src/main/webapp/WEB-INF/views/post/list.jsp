<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" contentType="text/html; charset=UTF-8"%>
<html>
<head>

<title>Home</title>
<link rel="stylesheet" href="<c:url value='/css/post/list.css'/>">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="../nav.jsp" flush="true" />
	<div class="container">
		<!-- <h1>
			<span class="boardtitle">5대 질병 자유게시판</span>
		</h1> -->
		<br> <br> <span class="subtitle">경험과 지식을 공유하면 빨리 치유할
			수 있습니다!</span>
		<hr>
		<table class="bbsList">
			<caption>5대 질병별 자유게시판</caption>
			<thead class="head">
				<tr>
					<th>번호</th>
					<th><select class="disease">
							<option selected>질병</option>
							<option value="1">탈모</option>
							<option value="2">치질</option>
							<option value="3">여드름</option>
							<option value="4">변비</option>
							<option value="5">무좀</option>
					</select></th>

					<th><select class="category">
							<option selected>카테고리</option>
							<option value="1">질문</option>
							<option value="2">경험</option>
							<option value="3">정보</option>
					</select></th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조회수</th>
					<th>좋아요</th>
					<th>싫어요</th>
					<th>해결상황</th>
				</tr>
			</thead>
			<tbody class="body">
				<c:forEach var="post" items="${postList}">
					<tr>
						<td class="">${post.postId}</td>
						<td class="">${post.postDisease}</td>
						<td class="">${post.postSubject}</td>
						<td class=""><a href="<c:url value='/post/${post.postId}'/>">${post.postTitle}</a></td>
						<td class="">${post.userId}</td>
						<td class="">${post.postDateTime}</td>
						<td class="">${post.postViews}</td>
						<td class="">${post.postLikes}</td>
						<td class="">${post.postDisLikes}</td>
						<c:if test="${post.postSubject eq '질문'}">
							<c:if test="${post.postResponded == '1'}">
								<td class="">답변완료</td>
							</c:if>
							<c:if test="${post.postResponded == '0'}">
								<td class="">답변미완료</td>
							</c:if>
						</c:if>
						<c:if test="${post.postSubject ne '질문'}">
							<td class="">&nbsp;</td>
						</c:if>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="btn_wrap">
			<a class="btn_org" href="<c:url value='/post/insert'/>"><span
				class="txt_white">글쓰기</span></a>
		</div>
	</div>
</body>
</html>

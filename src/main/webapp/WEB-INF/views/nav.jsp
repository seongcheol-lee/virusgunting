<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" contentType="text/html; charset=UTF-8"%>
<link rel="stylesheet" href="<c:url value='/css/home.css'/>">

<nav class="navbar navbar-light bg-light">
	<div class="container">
		<a class="navbar-brand" href="<c:url value='/'/>"
			style="margin-rigth: auto; font-size: 2rem;"> <img
			src="<c:url value='/images/home/logo.jpg'/>" id="logotop" width="100" height="100"
			class="d-inline-block align-top"> <span class="logotitle">야
				관 문</span>
		</a>
		<div style="margin-left: auto;">
			<c:if test="${member == null}">
				<form style="display: inline;"
					action="<c:url value='/user/signup'/>">
					<input class="btn btn-light font-do " type="submit" value="회원가입">
				</form>
				<form style="display: inline;"
					action="<c:url value='/user/signin'/>">
					<input class="btn btn-outline-info font-do" type="submit"
						value="로그인">
				</form>
			</c:if>
			<c:if test="${member != null }">
				<span>${member.userName} 님환영합니다.</span>
				<form action="<c:url value='/user/signout'/>"
					style="display: inline;">
					<button class="btn btn-outline-danger font-do" type="submit">로그아웃</button>
				</form>
			</c:if>
		</div>
	</div>
</nav>


<nav class="navbar navbar-expand-md navbar-dark bg-dark"
	style="height: 100px">
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav" style="margin: auto">
			<li class="nav-item active"><a class="nav-link font-do">5대
					기피 질병 진단검사</a></li>
			<li class="nav-item active"><a
				href="<c:url value='/post/list'/>" class="nav-link font-do"
				style="margin-left: 7rem">게시판</a></li>

			<li class="nav-item active"><a class="nav-link font-do"
				style="margin-left: 7rem">펀딩하기</a></li>

			<li class="nav-item active"><a class="nav-link font-do"
				style="margin-left: 7rem">상담사 찾기</a></li>
		</ul>
	</div>
</nav>

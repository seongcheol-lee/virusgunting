<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" contentType="text/html; charset=UTF-8"%>
<link rel="stylesheet" href="<c:url value='/css/home.css'/>">

<nav class="navbar navbar-light bg-light">
	<div class="container">
		<a class="navbar-brand" href="<c:url value='/'/>" style="margin-rigth: auto; font-size: 2rem;">
			<img src="<c:url value='/images/home/logo.jpg'/>" id="logotop" width="50px" height="50px" class="d-inline-block align-top">
			<span class="logotitle">야 관 문</span>
		</a>
		<div style="margin-left: auto;">
			<c:if test="${member == null}">
				<form style="display: inline;" action="<c:url value='/user/signup'/>">
					<input class="btn btn-light font-do " type="submit" value="회원가입">
				</form>
				<form style="display: inline;" action="<c:url value='/user/signin'/>">
					<input class="btn btn-light font-do" type="submit" value="로그인">
				</form>
			</c:if>
			<c:if test="${member != null }">

				<form action="<c:url value='/user/signout'/>" style="display: inline;">
					<button class="btn btn-light font-do" type="submit">로그아웃</button>
				</form>
			</c:if>
		</div>
	</div>
</nav>


<nav class="navbar navbar-expand-md navbar-dark bg-info">
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav" style="margin: auto">
			<li class="nav-item active">
				<a class="nav-link font-do" href="<c:url value='/test/start'/>">자가진단</a>
			</li>
			<li class="nav-item active">
				<a href="<c:url value='/post/list'/>" class="nav-link font-do" style="margin-left: 12rem">게시판</a>
			</li>
			<li class="nav-item active">
				<a href="<c:url value='/consult/list'/>" class="nav-link font-do" style="margin-left: 12rem">상담하기</a>
			</li>
		</ul>
	</div>
</nav>

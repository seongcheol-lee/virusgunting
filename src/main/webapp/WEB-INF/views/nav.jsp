<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" contentType="text/html; charset=UTF-8"%>
<link rel="stylesheet" href="<c:url value='/css/home.css'/>">
<script src="https://kit.fontawesome.com/5ac56ffa94.js"></script> 


<nav class="navbar navbar-expand-md navbar-dark bg-info">
	<div class="container">
		<a class="navbar-brand" href="<c:url value='/'/>" style="margin-rigth: auto; font-size: 2rem;">
			<img src="<c:url value='/images/home/logo.jpg'/>" id="logotop" width="50px" height="50px" class="d-inline-block align-top">
			<span class="logotitle">야 관 문</span>
		</a>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav" style="margin: auto">
				<li class="nav-item active">
					<a class="nav-link font-do" href="<c:url value='/test/start'/>">자가진단</a>
				</li>
				<li class="nav-item active ">
					<a href="<c:url value='/post/list'/>" class="nav-link font-do ml-3">게시판</a>
				</li>
				<li class="nav-item active">
					<a href="<c:url value='/consult/list'/>" class="nav-link font-do ml-3">상담하기</a>
				</li>
			</ul>
		</div>
		<div class="dropdown ml-auto">
			<button class="btn btn-outline-dark" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<i class="fas fa-user"></i>
			</button>
			<c:if test="${member == null}">
				<div class="dropdown-menu dropdown-menu-right p-4" style="width: 19em; height: 19em;">
					<form class="form-group mt-2" method="post" action="<c:url value='/user/signin/'/>">
						<div class="form-group">
							<label for="username">아이디</label>
							<input class="form-control " id="username" type="text" name="userName" required />
						</div>
						<div class="form-group">
							<label for="password">비밀번호</label>
							<input class="form-control" id="password" type="password" name="userPass" required />
						</div>
						<div class="d-flex justify-content-center">
							<c:if test="${msg == false}">
								<p class="font-weight-bold" style="color: red;">로그인에 실패했습니다</p>
							</c:if>
							<c:if test="${msg != false}">
								<p class="font-weight-bold" style="color: gray;">환영합니다. 야관문 입니다.</p>
							</c:if>
						</div>
						<div class="d-flex justify-content-center">
							<input class="btn btn-outline-info" type="submit" value="로그인" />
							<a href="<c:url value='/user/signup'/>">
								<button type="button" class="btn btn-outline-info ml-4">회원가입</button>
							</a>
						</div>
					</form>
				</div>
			</c:if>
			<c:if test="${member != null }">
				<div class="dropdown-menu dropdown-menu-right p-4" style="width: 10em; height: 7em;">
					<div class="d-flex justify-content-center">
						<p>${member.userName}</p>
					</div>
					<div class="d-flex justify-content-center">
						<form class="form-group" action="<c:url value='/user/signout'/>">
							<button class="btn font-do" type="submit">로그아웃</button>
						</form>
					</div>
				</div>
			</c:if>
		</div>
	</div>
</nav>


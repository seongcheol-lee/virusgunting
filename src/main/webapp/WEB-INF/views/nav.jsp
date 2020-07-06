<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" contentType="text/html; charset=UTF-8"%>
<link rel="stylesheet" href="<c:url value='/css/main.css'/>">
<link rel="stylesheet" href="<c:url value='/css/btn.css'/>">
<script src="https://kit.fontawesome.com/5ac56ffa94.js"></script>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<nav class="navbar navbar-expand-md navbar-dark bg-dark font-nanum mb-1">
	<a class="navbar-brand ml-3" href="<c:url value='/'/>">
		<img src="<c:url value='/images/home/donkey.png'/>" id="logotop" width="50px" height="50px" class="d-inline-block align-top">
		<span class="logotitle">YAGWANMOON</span>
	</a>
	<div class="collapse navbar-collapse ml-5" id="navbarSupportedContent">
		<ul class="navbar-nav font-nav">
			<li class="nav-item active">
				<div class="mt-2" align="center">
					<a class="nav-link" href="<c:url value='/test/start'/>">
						<i class="fas fa-file-signature nav-icon"></i>
						<span class="nav-text">자가진단</span>
					</a>
				</div>
				<%-- <a class="nav-link " href="<c:url value='/test/start'/>">Test</a> --%>
			</li>
			<li class="nav-item active ml-5">
				<div class="mt-2" align="center">
					<a class="nav-link" href="<c:url value='/post/list'/>">
						<i class="fas fa-chalkboard nav-icon"></i>
						<span class="nav-text">게시판</span>
					</a>
				</div>
				<%-- <a href="<c:url value='/post/list'/>" class="nav-link ml-3">Board</a> --%>
			</li>
			<li class="nav-item active ml-5">
				<div class="mt-2" align="center">
					<a class="nav-link" href="<c:url value='/consult/list'/>">
						<i class="fas fa-hands-helping nav-icon"></i>
						<span class="nav-text">상담하기</span>
					</a>
				</div>
				<%-- <a href="<c:url value='/consult/list'/>" class="nav-link ml-3">Consult</a> --%>
			</li>
		</ul>
	</div>
	<div class="dropdown ml-auto mr-4 ">
		<button class="bttn-material-circle bttn-md bttn-warning" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
						<c:choose>
							<c:when test="${msg=='loginfail'}">
								<p class="font-weight-bold font-nanum" style="color: red;">로그인에 실패했습니다</p>
							</c:when>
							<c:when test="${member != false}">
								<p class="font-weight-bold font-nanum" style="color: gray;">환영합니다. 야관문 입니다.</p>
							</c:when>
						</c:choose>
					</div>
					<div class="d-flex justify-content-center">
						<button class="bttn-minimal bttn-sm bttn-success">로그인</button>
						<a href="<c:url value='/user/signup'/>">
							<button type="button" class="bttn-minimal bttn-sm bttn-success ml-4" type="button">회원가입</button>
						</a>
					</div>
				</form>
			</div>
		</c:if>
		<c:if test="${member != null }">
			<div class="dropdown-menu dropdown-menu-right p-4" style="width: 19em; height: 7em;">
				<div class="d-flex justify-content-center">
					<p>${member.userName}님안녕하세요</p>
				</div>
				<div class="d-flex justify-content-center">
					<form class="form-group" action="<c:url value='/user/signout'/>">
						<button class="bttn-minimal bttn-sm bttn-success">로그아웃</button>
					</form>
					<form class="form-group" action="<c:url value='/user/withdrawal'/>">

						<button class="bttn-minimal bttn-sm bttn-success">회원탈퇴</button>
					</form>
				</div>
			</div>
		</c:if>
	</div>
</nav>

<div aria-live="polite" aria-atomic="true" style="position: relative; min-height: 7rem;" align="center">
	<div class="toast" data-delay="1500" >
		<c:choose>
			<c:when test="${msg=='loginfail'}">
				<div class="toast-header">
					<strong class="mr-auto">야관문</strong>
					<button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="toast-body">로그인에 실패했습니다.</div>
			</c:when>
			<c:when test="${msg=='loginsuccess'}">
				<div class="toast-header">
					<strong class="mr-auto">야관문</strong>
					<button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="toast-body">로그인에 성공했습니다.</div>
			</c:when>
			<c:when test="${msg=='signupsuccess'}">
				<div class="toast-header">
					<strong class="mr-auto">야관문</strong>
					<button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="toast-body">회원가입에 성공했습니다.</div>
			</c:when>
			<c:when test="${msg=='signupfail'}">
				<div class="toast-header">
					<strong class="mr-auto">야관문</strong>
					<button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="toast-body">회원가입에 실패했습니다.</div>
			</c:when>
			<c:when test="${msg=='logout'}">
				<div class="toast-header">
					<strong class="mr-auto">야관문</strong>
					<button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="toast-body">로그아웃 했습니다.</div>
			</c:when>
			<c:when test="${msg=='withdrawalsuccess'}">
				<div class="toast-header">
					<strong class="mr-auto">야관문</strong>
					<button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="toast-body">회원탈퇴를 성공했습니다.</div>
			</c:when>
			<c:when test="${msg=='withdrawalfail'}">
				<div class="toast-header">
					<strong class="mr-auto">야관문</strong>
					<button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="toast-body">회원탈퇴를 실패했습니다.</div>
			</c:when>
			<c:when test="${msg=='loginplease'}">
				<div class="toast-header">
					<strong class="mr-auto">야관문</strong>
					<button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="toast-body">로그인 해주세요.</div>
			</c:when>
		</c:choose>
	</div>
</div>

<script>
	window.addEventListener("load", function() {
		$('.toast').toast('show')
	})
</script>


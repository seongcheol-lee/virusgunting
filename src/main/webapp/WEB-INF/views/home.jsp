<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>야관문</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="<c:url value='/css/home.css'/>">
</head>
<script>
	
</script>
<body>

	<jsp:include page="./nav.jsp" flush="true" />
	<div class="container" style="margin-top: 1.5rem;">
		<img src="<c:url value='/images/home/donkey.gif'/>" class="img-fluid" >
		<%-- <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel" data-interval="1500">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
				<li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
				<li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
				<li data-target="#carouselExampleCaptions" data-slide-to="3"></li>
				<li data-target="#carouselExampleCaptions" data-slide-to="4"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="<c:url value='/images/home/foot1.jpg'/>" class="d-block w-100">
					<div class="carousel-caption d-none d-md-block">
						<!--  <h1>무좀</h1>
						<h2>세계 인구의 15%, 지긋지긋한 무좀균</h2>-->
					</div>
				</div>
				<div class="carousel-item">
					<img src="<c:url value='/images/home/hemor1.jpg'/>" class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<!-- <h1>치질</h1>
						<h2>말할 수 없는 비밀, 이젠 터놓으세요</h2>-->
					</div>
				</div>
				<div class="carousel-item">
					<img src="<c:url value='/images/home/bb1.jpg'/>" class="d-block w-100">
					<div class="carousel-caption d-none d-md-block">
						<!--<h1>변비</h1>
						<h2>전세계 3명중 1명이 변비로 고생하고 있습니다.</h2>-->
					</div>
				</div>
				<div class="carousel-item">
					<img src="<c:url value='/images/home/face1.jpg'/>" class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<!--<h1 style="font-size: 50">여드름</h1>
						<h2>남성분들 더이상 여드름으로 속앓이 마세요!</h2>-->
					</div>
				</div>
				<div class="carousel-item">
					<img src="<c:url value='/images/home/hairloss1.jpg'/>" class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<!--<h1>탈모</h1>
						<h2>늘어나는 20·30대 탈모 고민 함께해요!</h2>-->
					</div>
				</div>
			</div> 
		</div> --%>
	</div>
	<br>
	<br>

</body>
</html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<link rel="shortcut icon" href="<c:url value='/images/favicon.png'/>">
<link rel="icon" href="<<c:url value='/images/favicon.png'/>>">
<title>야관문</title>
</head>
<body>
	<jsp:include page="../nav.jsp" flush="true" />
	<div class="container mb-5 font-nanum">
		<span class="subtitle">늦기전에 스스로 확인하세요!</span>
		<hr>
		<div class="row mb-5">
			<div class="col-4" align="center">
				<div class="card  border-light" style="width: 18rem;">
					<img src="<c:url value='/images/home/bb.jpg'/>" class="d-block w-100">
					<div class="card-body">
						<button onclick="location.href='<c:url value='/test/bbT'/>'" class="bttn-material-flat bttn-md bttn-success">
							변비 자가진단
							<i class="fas fa-file-signature"></i>
						</button>
						<%-- <button onclick="location.href='<c:url value='/test/bbT'/>'" type="button" class="btn btn-outline-secondary btn-lg btn-block mt-3">
							변비 자가진단
							<i class="fas fa-file-signature"></i>
						</button> --%>
					</div>
				</div>
			</div>
			<div class="col-4" align="center">
				<div class="card  border-light" style="width: 18rem;">
					<img src="<c:url value='/images/home/hairloss.jpg'/>" class="d-block w-100" alt="...">
					<div class="card-body">
						<button onclick="location.href='<c:url value='/test/tmT'/>'" class="bttn-material-flat bttn-md bttn-success">
							탈모 자가진단
							<i class="fas fa-file-signature"></i>
						</button>
						<%-- <button onclick="location.href='<c:url value='/test/tmT'/>'" type="button" class="btn btn-outline-secondary btn-lg btn-block mt-3">
							탈모 자가진단
							<i class="fas fa-file-signature"></i>
						</button> --%>
					</div>
				</div>
			</div>
			<div class="col-4" align="center">
				<div class="card border-light" style="width: 18rem;">
					<img src="<c:url value='/images/home/hemor.jpg'/>" class="d-block w-100" alt="...">

					<div class="card-body">
						<button onclick="location.href='<c:url value='/test/cjT'/>'" class="bttn-material-flat bttn-md bttn-success">
							치질 자가진단
							<i class="fas fa-file-signature"></i>
						</button>
						<%-- <button onclick="location.href='<c:url value='/test/cjT'/>'" type="button" class="btn btn-outline-secondary btn-lg btn-block mt-3">
							치질 자가진단
							<i class="fas fa-file-signature"></i>
						</button> --%>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-6" align="center">
				<div class="card  border-light" style="width: 18rem;">
					<img src="<c:url value='/images/home/foot2.jpg'/>" class="d-block w-100">
					<div class="card-body">
						<%-- <button onclick="location.href='<c:url value='/test/mjT'/>'" class="bttn-material-flat bttn-md bttn-success">
							무좀 자가진단
							<i class="fas fa-file-signature"></i>
						</button> --%>
						<button onclick="location.href='<c:url value='/test/mjT'/>'" type="button" class="btn btn-outline-secondary btn-lg btn-block mt-3">
							무좀 자가진단
							<i class="fas fa-file-signature"></i>
						</button>
					</div>
				</div>
			</div>
			<div class="col-6" align="center">
				<div class="card  border-light" style="width: 18rem;">
					<img src="<c:url value='/images/home/face.jpg'/>" class="d-block w-100" alt="...">

					<div class="card-body">
						<button onclick="location.href='<c:url value='/test/ydT'/>'" class="bttn-bordered bttn-md bttn-success">
							여드름 자가진단
							<i class="fas fa-file-signature"></i>
						</button>
						<%-- <button onclick="location.href='<c:url value='/test/ydT'/>'" type="button" class="btn btn-outline-secondary btn-lg btn-block mt-3">
							여드름 자가진단
							<i class="fas fa-file-signature"></i>
						</button> --%>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp" flush="true" />
</body>
</html>
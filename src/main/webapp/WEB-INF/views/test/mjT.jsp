<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<link rel="shortcut icon" href="<c:url value='/images/favicon.png'/>">
<link rel="icon" href="<c:url value='/images/favicon.png'/>">
<title>야관문</title>
</head>
<body>
	<jsp:include page="../nav.jsp" flush="true" />
	<div class="container mt-5 mb-5  "  style="min-height: 100%;"align="center">
		<form action="<c:url value='/test/mjT/result'/>">
			<h1 class="font-nanum">무좀 자가진단</h1>
			<table class="table mt-5">
				<thead align="center">
					<tr>
						<th scope="col">번호</th>
						<th scope="col">증상</th>
						<th scope="col">여부</th>
					</tr>
				</thead>
				<tbody align="center">
					<tr>
						<th scope="row">1</th>
						<td>3, 4, 5번째 발가락 사이가 가렵고 붉게 변했다.</td>
						<td>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="q1" value="opt1" required>
								<label class="form-check-label" for="inlineRadio1">예</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="q1" value="opt2">
								<label class="form-check-label" for="inlineRadio1">아니오</label>
							</div>
						</td>
						<td></td>
					</tr>
					<tr>
						<th scope="row">2</th>
						<td>발바닥이나 발 옆면의 피부가 건조하거나 각질이 생겼다.</td>
						<td>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="q2" value="opt1" required>
								<label class="form-check-label" for="inlineRadio1">예</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="q2" value="opt2">
								<label class="form-check-label" for="inlineRadio1">아니오</label>
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>증상 부위가 가렵거나 아프다.</td>
						<td>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="q3" value="opt1" required>
								<label class="form-check-label" for="inlineRadio1">예</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="q3" value="opt2">
								<label class="form-check-label" for="inlineRadio1">아니오</label>
							</div>
						</td>

					</tr>
					<tr>
						<th scope="row">4</th>
						<td>증상 부위가 작은 물집으로 덮여있다.</td>
						<td>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="q4" value="opt1" required>
								<label class="form-check-label" for="inlineRadio1">예</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="q4" value="opt2">
								<label class="form-check-label" for="inlineRadio1">아니오</label>
							</div>
						</td>

					</tr>
					<tr>
						<th scope="row">5</th>
						<td>발톱의 색깔이 변했다.</td>
						<td>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="q5" value="opt1" required>
								<label class="form-check-label" for="inlineRadio1">예</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="q5" value="opt2">
								<label class="form-check-label" for="inlineRadio1">아니오</label>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
			<button type="submit" class="bttn-fill bttn-md bttn-success">
					결과확인
					<i class="fas fa-external-link-alt"></i>
				</button>
		</form>
	</div>
	<jsp:include page="../footer.jsp" flush="true" />
</body>
</html>
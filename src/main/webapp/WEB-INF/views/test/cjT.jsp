<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>야관문 : 자가진단</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Document</title>
</head>
<body>
	<jsp:include page="../nav.jsp" flush="true" />
	<div class="container mb-5 " align="center">
		<form action="<c:url value='/test/cjT/result'/>">
			<h1 class="font-nanum">치질 자가진단</h1>
			<table class="table mt-5">
				<thead>
					<tr>
						<th scope="col">번호</th>
						<th scope="col">증상</th>
						<th scope="col">여부</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">1</th>
						<td>변비가 있다.</td>
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
						<td>변을 누면 선홍색 피가 난다.</td>
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
						<td>항문 주변이 가렵다.</td>
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
						<td>변을 눌때 아프다.</td>
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
						<td>항문 주변에 덩어리가 만져진다.</td>
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
					<tr>
						<th scope="row">6</th>
						<td>과음 후 배변시 출혈이 발생한다.</td>
						<td>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="q6" value="opt1" required>
								<label class="form-check-label" for="inlineRadio1">예</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="q6" value="opt2">
								<label class="form-check-label" for="inlineRadio1">아니오</label>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
			<input type="submit" class="btn btn-outline-info" value="결과보기">
		</form>
	</div>
	<jsp:include page="../footer.jsp" flush="true" />
</body>
</html>
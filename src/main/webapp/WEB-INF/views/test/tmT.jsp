
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>야관문</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Document</title>

</head>
<body>
	<jsp:include page="../nav.jsp" flush="true" />
	<div class="container " align="center">
		<form action="<c:url value='/test/tmT/result'/>">
			<h1 class="font-do">탈모 자가진단</h1>
			<table class="table">
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
						<td>이마가 점점 넓어지는 느낌이다.</td>
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
						<td>가늘고 힘없는 머리가 많이 빠진다.</td>
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
						<td>하루에 80개 이상 모발이 빠진다.</td>
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
						<td>비듬이 많아지거나 두피가 가렵다.</td>
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
						<td>모발이 가늘고 부드러워진다.</td>
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
						<td>두피를 눌러보면 가벼운 통증이 느껴진다.</td>
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
					<tr>
						<th scope="row">7</th>
						<td>앞머리와 뒷머리의 굵기 차이가 많이 난다.</td>
						<td>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="q7" value="opt1" required>
								<label class="form-check-label" for="inlineRadio1">예</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="q7" value="opt2">
								<label class="form-check-label" for="inlineRadio1">아니오</label>
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row">8</th>
						<td>몸의 털이 갑자기 굵어진다.</td>
						<td>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="q8" value="opt1" required>
								<label class="form-check-label" for="inlineRadio1">예</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="q8" value="opt2">
								<label class="form-check-label" for="inlineRadio1">아니오</label>
							</div>
						</td>

					</tr>
					<tr>
						<th scope="row">9</th>
						<td>이마와 정수리 부분이 유난히 번들거린다.</td>
						<td>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="q9" value="opt1" required>
								<label class="form-check-label" for="inlineRadio1">예</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="q9" value="opt2">
								<label class="form-check-label" for="inlineRadio1">아니오</label>
							</div>
						</td>

					</tr>
					<tr>
						<th scope="row">10</th>
						<td>두피에 피지량이 갑자기 늘어난 것 같다.</td>
						<td>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="q10" value="opt1" required>
								<label class="form-check-label" for="inlineRadio1">예</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="q10" value="opt2">
								<label class="form-check-label" for="inlineRadio1">아니오</label>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
			<input type="submit" class="btn btn-outline-info" value="결과보기">
		</form>
	</div>
</body>

</html>
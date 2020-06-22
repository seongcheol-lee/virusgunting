
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>CSS Template</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Document</title>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
	<jsp:include page="../nav.jsp" flush="true" />
	<div class="container mt-5" align="center">
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
						<td>ì´ë§ê° ì ì  ëì´ì§ë ëëì´ë¤.</td>
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
						<td>ê°ëê³  íìë ë¨¸ë¦¬ê° ë§ì´ ë¹ ì§ë¤.</td>
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
						<td>íë£¨ì 80ê° ì´ì ëª¨ë°ì´ ë¹ ì§ë¤.</td>
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
						<td>ë¹ë¬ì´ ë§ìì§ê±°ë ëí¼ê° ê°ë µë¤.</td>
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
						<td>ëª¨ë°ì´ ê°ëê³  ë¶ëë¬ìì§ë¤.</td>
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
						<td>ëí¼ë¥¼ ëë¬ë³´ë©´ ê°ë²¼ì´ íµì¦ì´ ëê»´ì§ë¤.</td>
						<td>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="q6" value="opt1" required>
								<label class="form-check-label" for="inlineRadio1">예</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="q65" value="opt2">
								<label class="form-check-label" for="inlineRadio1">아니오</label>
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row">7</th>
						<td>ìë¨¸ë¦¬ì ë·ë¨¸ë¦¬ì êµµê¸° ì°¨ì´ê° ë§ì´ ëë¤.</td>
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
						<td>ëª¸ì í¸ì´ ê°ìê¸° êµµì´ì§ë¤.</td>
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
						<td>ì´ë§ì ì ìë¦¬ ë¶ë¶ì´ ì ëí ë²ë¤ê±°ë¦°ë¤.</td>
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
						<td>ëí¼ì í¼ì§ëì´ ê°ìê¸° ëì´ë ê² ê°ë¤.</td>
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
			<input type="submit" class="btn btn-outline-secondary" value="결과보기">
		</form>
	</div>
</body>

</html>
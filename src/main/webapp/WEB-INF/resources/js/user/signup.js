function validate() {
	var flag = true;
	var idJ = /^[a-z]{1}[a-z0-9]{5,15}$/;
	var pwJ = /^[a-z]{1}[a-z0-9]{7,15}$/;

	var username = $('#signup-name');
	var password1 = $('#password1');
	var password2 = $('#password2');
	console.log(username.val())
	if (!idJ.test(username.val())) {
		$('#username-explain').text("아이디를 확인해주세요.");
		username.removeClass('border-info');
		username.addClass('border-danger');
		flag = false;
	}
	else {
		$('#username-explain').text(" ");
		username.removeClass('border-danger');
		username.addClass('border-info');
	}
	if (password1.val() === password2.val()) {
		$('#password2-explain').text(" "); 
		if (!pwJ.test(password1.val())) {
			$('#password1-explain').text("비밀번호를 확인해주세요.");
			$('#password2-explain').text("비밀번호를 확인해주세요.");

			password1.removeClass('border-info');
			password1.addClass('border-danger');
			password2.removeClass('border-info');
			password2.addClass('border-danger');
			flag = false;
		}
		else {
			$('#password1-explain').text(" ");
			$('#password2-explain').text(" ");

			password1.removeClass('border-danger');
			password1.addClass('border-info');
			password2.removeClass('border-danger');
			password2.addClass('border-info');
		}
	}
	else {
		$('#password2-explain').text("비밀번호가 다릅니다.");
		password1.removeClass('border-info');
		password1.addClass('border-danger');
		password2.removeClass('border-info');
		password2.addClass('border-danger');
		flag = false; 
	} 
	if (flag == true) {
		return true;
	}
	else {
		return false;
	} 
}

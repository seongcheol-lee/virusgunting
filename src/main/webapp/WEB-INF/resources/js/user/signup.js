
function validate() {
	var idJ = /^[a-z0-9]{6,16}$/;
	var pwJ = /^[A-Za-z0-9]{8,16}$/;
		
	var username = $('#username').val();
	var password1 = $('#password1').val();
	var password2 = $('#password2').val();

	if (!idJ.test(username)) {
		alert("username을 확인해주세요.")
		return false;
	}
	if (!pwJ.test(password1)) {
		alert("password를 확인해주세요.")
		return false;
	} 
}

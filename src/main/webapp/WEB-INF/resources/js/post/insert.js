
function validate() { 
	var postTitle = $('#postTitle');
	console.log(postTitle.val()); 
	console.log(postTitle.val().length);
	if(postTitle.val().length > 30){
		alert("제목은 30자까지 입력해주세요.");
		postTitle.val("");
		return false;	
	} 
	return true;
}

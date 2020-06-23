
function validate() { 
	var Title = $('#Title'); 
	if(Title.val().length > 30){
		alert("제목은 30자까지 입력해주세요.");
		Title.val("");
		return false;	
	} 
	return true;
}

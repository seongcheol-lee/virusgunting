
function validate() {
		var input = confirm('정말 삭제하시겠습니까?');
		if (input) {
			return ture;
		}
		return false;
	}
	

function clickLike(){
	var userId=$('#userId')
	var postId=$('#postId')  
	$.ajax({
    url: "like",
    type: "GET",
    cache: false,
    dataType: "json",
    data: $('#like-form').serialize(),
    success: function(data) {
		var check = data.check;
		if(check == 0){
			$('#like-btn').removeClass("btn-primary");
			$('#like-btn').addClass("btn-outline-primary");
		} 
		else{
			$('#like-btn').removeClass("btn-outline-primary");
			$('#like-btn').addClass("btn-primary");
			
		}
		$('#like-btn').blur();
		$('#like-count').html("&nbsp;" + data.like_count);
		
    },
    error: function(request, status, error){
		console.log(error) 
	}
  });
}

function clickDisLike(){
	var userId=$('#userId')
	var postId=$('#postId')  
	$.ajax({
    url: "dislike",
    type: "GET",
    cache: false,
    dataType: "json",
    data: $('#dislike-form').serialize(),
    success: function(data) {
	var check = data.check;
		if(check == 0){	
			$('#dislike-btn').removeClass("btn-danger");
			$('#dislike-btn').addClass("btn-outline-danger");
		} 
		else{
			$('#dislike-btn').removeClass("btn-outline-danger");
			$('#dislike-btn').addClass("btn-danger");
		}
		$('#dislike-btn').blur();
		$('#dislike-count').html("&nbsp;" + data.dislike_count);
    },
    error: function(request, status, error){
		console.log(error) 
	}
  });
}
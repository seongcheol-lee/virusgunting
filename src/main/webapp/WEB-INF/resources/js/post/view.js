
function validate() {
	var input = confirm('정말 삭제하시겠습니까?');
	if (input) {
		return ture;
	}
	return false;
}
function autosize(e) {
	e.style.height = '1px';
	e.style.height = (e.scrollHeight + 12) + 'px';
}

function clickLike() {
	var userId = $('#userId')
	var postId = $('#postId')
	$.ajax({
		url: "like",
		type: "GET",
		cache: false,
		dataType: "json",
		data: $('#like-form').serialize(),
		success: function(data) {
			var check = data.check;
			if (check == 0) {
				$('#like-btn').removeClass("fas");
				$('#like-btn').addClass("far");
			}
			else {
				$('#like-btn').removeClass("far");
				$('#like-btn').addClass("fas");

			}
			$('#like-btn').blur();
			$('#like-count').html("&nbsp;" + data.like_count);

		},
		error: function(error) {
			console.log(error)
		}
	});
}

function clickDisLike() {
	var userId = $('#userId')
	var postId = $('#postId')
	$.ajax({
		url: "dislike",
		type: "GET",
		cache: false,
		dataType: "json",
		data: $('#dislike-form').serialize(),
		success: function(data) {
			var check = data.check;
			if (check == 0) {
				$('#dislike-btn').removeClass("fas");
				$('#dislike-btn').addClass("far");
			}
			else {
				$('#dislike-btn').removeClass("far");
				$('#dislike-btn').addClass("fas");
			}
			$('#dislike-btn').blur();
			$('#dislike-count').html("&nbsp;" + data.dislike_count);
		},
		error: function(request, status, error) {
			console.log(error)
		}
	});
}
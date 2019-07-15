$(document).ready(function() {
	$('#reg_btn').click(function(event) {
		$('.reg').toggle('slow');
		$('.login_form').css('display', 'none');
	});

	$('#login_btn').click(function(event) {
		$('.login_form').toggle('slow');
		$('.reg').css('display', 'none');
	});
	
	$('#cd').click(function(event) {
		alert("hey");
	});
});
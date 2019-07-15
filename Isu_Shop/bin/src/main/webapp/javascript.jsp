<body>
<script type="text/javascript">
	$(document).ready(function() {
	$('#reg_btn').click(function(event) {
		$('.reg').toggle('slow');
		$('.login_form').css('display', 'none');
	});

	$('#login_btn').click(function(event) {
		$('.login_form').toggle('slow');
		$('.reg').css('display', 'none');
	});
	
	
});
	
	function showImg(img){
		var i="ProductImg?id="+img;
		$('.fullimg').attr('src', i);
		$('.showPic').css('display', 'block');
	}

	

	$('#c_img').click(function(event) {
		$('.showPic').css('display', 'none');
	});	
	
	$('#order').click(function(event) {
		var tt='<%@include file="footer.jsp"%>';
		$('.tt').html(tt);
	});
	
	
	
	function prod(){
	
		$.ajax({
			url:'ShowAllProduct',
			type:'get',
			success:function(data,sta){
				$('#prod').html(data);
			}
		});
	}
</script>
</body>

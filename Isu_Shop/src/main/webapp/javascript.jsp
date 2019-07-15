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
	
	
	
	function prodctsss(){
		
		
		$.ajax({
			url:'ShowAllProducts',
			type:'get',
			success:function(data,sta){
				$('#prod').html(data);
				 onCart();

			}
		});
	}
	
	function love(lid){
		
		var v=lid;
		var uid=$('#u_id').val();
		var v=document.getElementById(lid).innerHTML;
		v++;
		document.getElementById(lid).innerHTML=v;
		if(uid==''){
			
			$('#login_model').modal(1);
		}else{
			$.ajax({
				url:'LikeRatingLove',
				type:'get',
				data:{
					pid:lid,
					love:v
				},
				success:function(data,sta){
				}
			});
		}
		
	}
	

	/* Set Cart uncart function start */
	
	function cart(lid){
		var v=lid;
		var id="#"+v+"ba";
		var cart="#"+v+"cart";
		var cart_val=$(cart).val();
		var uid=$('#u_id').val();
		var nav_cart=$('#cart_val').html();
		
		
		/* Set  uncart function start */
		if((cart_val==1) && (uid!="")){
			
			$.ajax({
				url:'RemoveCartProduct',
				type:'post',
				data:{
					uid:uid,
					pid:v
				},
				success:function(data,sta){
				
					if(data=='done'){
						nav_cart--;
						if(nav_cart==0){
							$('#cart_val').html('');
							$('#cart_product').attr('class', 'nav-link');
						}else{
							$('#cart_val').html(nav_cart);
						}
					
						
						
						
						
						$(id).attr({
							class: 'btn btn-sm text-white btn-outline-warning ml-2 btn-like',
							title: 'Cart'
						});
						$(cart).val('0');
					}
				}

			});
			/* Set uncart  function end */
			
/* Set Cart  function start */
		}else if((cart_val==0) && (uid!="")){
			
			$.ajax({
				url:'CartProduct',
				type:'post',
				data:{
					uid:uid,
					pid:v
				},
				success:function(data,sta){
					
					if(data=='done'){
						$(cart).val('1');
						nav_cart++;
						$('#cart_val').html(nav_cart);
						$('#cart_product').attr('class', 'nav-link text-white');
						
						
						$(id).attr({
							class: 'btn btn-sm text-white btn-warning ml-2 btn-like',
							title: 'Remov Cart'
						});
						
					}
				}

			});
			
		}
		/* Set Cart function end */
		
	}
	/* Set Cart uncart function end */
	
	
	/* Show Cart in onload */
	
	function onCart(){
		
		var uid=$('#u_id').val();
		
		if(uid!=''){
			$('#account').attr('class', 'nav-link text-white');
			
		}
		
		$.ajax({
			url:'CartProduct?uid='+uid,
			type:'get',
			
			success:function(data,sta){
				var arr=data;
				var id='';
				var cart="";
				var totalcart='';
				for(j in arr){
					totalcart=j;
					id="#"+arr[j].pid+"ba";
					cart="#"+arr[j].pid+"cart";
					$(cart).val('1');
					$(id).attr({
						class: 'btn btn-sm text-white btn-warning ml-2 btn-like',
						title: 'Remov Cart'
					});
				}
				if(totalcart==''){
					$('#cart_product').attr('class', 'nav-link');
				}else{
					totalcart++;
					$('#cart_val').html(totalcart);
					$('#cart_product').attr('class', 'nav-link text-white');
					
				}
				
				
			}
		});
		onloadlike();
	}
	/* Show Cart in onload End */
	/* Like btn Process start */
	function likebtn(piddd){
		var pid=piddd;
		var uid=$('#u_id').val();
		var like_id="#"+pid+"a";
		var l_icon="#"+pid+"i";
		var l_val=$(like_id).val();
		
		if(uid!=''){
		
	
		/* Like Process start */
		if(l_val==0){	
			$(l_icon).attr('class', 'fa fa-thumbs-o-up');
			$(like_id).attr('class', 'btn btn-sm btn-primary btn-like');
			$(like_id).val('1');

				$.ajax({
						url:'ProductLikes',
						type:'post',
						data:{
							pid:pid,
							uid:uid
						},

						success:function(data,sta){
							alert(sta);
						}


				});

		}
		/* Like Process end */
		/* unLike Process start */
		if(l_val==1){
			
			$(l_icon).attr('class', 'fa fa-thumbs-o-down');
			$(like_id).attr('class', 'btn btn-sm btn-secondary btn-like');
			$(like_id).val('0');
			
			$.ajax({
				url:'ProductLikes',
				type:'get',
				data:{
					uid:uid,
					pid:pid
				},

				success:function(data,sta){
					alert(sta);
				}


		});
		}
		/* unLike Process end */
		
		}else{
			$('#login_model').modal(1);
		}
		
	}
	/* Like btn Process end */
	
	/*Like On Load start*/
	function onloadlike(){
		var uid=$('#u_id').val();
		
		$.ajax({
			url:'ShowLikes?uid='+uid,
			type:'get',

			success:function(data,sta){
				
				var jobj=data;
				
				for(x in jobj){
					var like_id="#"+jobj[x].like_pid+"a";
					var l_icon="#"+jobj[x].like_pid+"i";
				
				if(jobj[x].like_val==1){
					$(l_icon).attr('class', 'fa fa-thumbs-o-up');
					$(like_id).attr('class', 'btn btn-sm btn-primary btn-like');
					$(like_id).val('1');
					}
				if(jobj[x].like_val==0){
					$(l_icon).attr('class', 'fa fa-thumbs-o-down');
					$(like_id).attr('class', 'btn btn-sm btn-secondary btn-like');
					$(like_id).val('0');
				}
				}
			}

		});
	}
	/*Like On Load end*/
	
</script>
</body>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">
.acc_name{
	font-size: 12px;
}
</style>
</head>
<body onload="onCart()">
	<%-- navbar Start --%>
	<input type="hidden" id="u_id" value="${email}">
	<nav class="navbar navbar-expand-lg  bg-dark navbar-dark">
		
			<a href="#" class="navbar-brand"> <img
				src="ProfileDisplay?email=${email}" alt="Plese Login" class="imgs">
				<span class="ml-2"><span class="acc_name">${email}</span></span>
			</a>
			<button class="navbar-toggler">
				<span class="navbar-toggler-icon" data-toggle="collapse"
					data-target="#menu_link"></span>
			</button>
			<div class="collapse navbar-collapse text-center" id="menu_link">
				<ul class="navbar-nav ml-auto">
					<li class="navbar-item"><a href="home.jsp" title=""
						class="nav-link "><i class="fa fa-home mr-1"></i>Home</a></li>
					<li class="navbar-item"><a href="javascript:void(0)" title=""
						class="nav-link " data-toggle="modal" data-target="#login_model"><i class="fa fa-unlock mr-1"></i>Login</a></li>
					<li class="navbar-item"><a href="javascript:void(0)" title=""
						class="nav-link " data-toggle="modal" data-target="#reg_model"><i class="fa fa-user-plus mr-1"></i>Add User</a></li>
					<li class="navbar-item"><a href="SignOut" title=""
						class="nav-link " id="signout_btn"><i class="fa fa-user-times mr-1"></i>SignOut</a></li>
					<li class="navbar-item"><a href="newproduct.jsp" title=""
						class="nav-link " id="add_product"><i class="fa fa-plus-circle mr-1"></i> AddProducts</a></li>
					<li class="navbar-item"><a href="#" title=""
						class="nav-link " id="order"><i class="fa fa-wpforms mr-1" ></i>Orders</a></li>
					
					<li class="navbar-item">
						<a href="#" title="" class="nav-link" id="cart_product">
						<span class="badge" id="cart_val"></span>
						<i class="fa fa-shopping-cart fa-1x mr-1"></i>Cart</a>
					</li>
					
					<li class="navbar-item"><a href="account.jsp" title=""
						class="nav-link " id="account"><i class="fa fa-user-circle-o mr-1"></i>Account</a></li>

						
				</ul>
			</div>
		
	</nav>
	<%-- navbar end --%>
</body>
</html>
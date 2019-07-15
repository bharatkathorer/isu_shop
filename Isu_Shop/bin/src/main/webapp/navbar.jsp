<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

</head>
<body>
	<%-- navbar Start --%>
	<nav class="navbar navbar-expand-lg  bg-dark navbar-dark">
		<div class="container">
			<a href="#" class="navbar-brand"> <img
				src="ProfileDisplay?email=${email}" alt="Plese Login" class="imgs">
				<span class="m-auto">${email}</span>
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
					<li class="navbar-item"><a href="#" title=""
						class="nav-link " id="add_product"><i class="fa fa-shopping-cart mr-1"></i>Cart</a></li>
					<li class="navbar-item"><a href="#" title=""
						class="nav-link " id="add_product"><i class="fa fa-user-circle-o mr-1"></i>Account</a></li>

						
				</ul>
			</div>
		</div>
	</nav>
	<%-- navbar end --%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>AccountDetails</title>
		<%@include file="links.jsp" %>
		<%@include file="javascript.jsp" %>
		<%@include file="style.jsp" %>
	</head>
	<body>
		<%@include file="navbar.jsp"%>
		<%@include file="models.jsp"%>
		<br>
		<div class="card card-body m-3">
			
			<div class="row">
				<div class="col-lg-4 col-xl-4 col-md-4 col-sm-4">
					<img alt="profle" src="ProductImg?id=${pid.getId()}" class="img-thumbnail mt-3 ml3">
				</div>
				<div class="col-lg-8 col-xl-8 col-md-8 col-sm-8">
					<div class="col-lg-12 col-xl-12 col-md-12 col-sm-12">
						<h2>Product Details</h2>
						<table>
							<tbody>
								<tr><td><span>Price </span></td><td>: ${pid.getPrice()} Rs</td></tr><br>
								<tr><td><span>Discount </span></td><td>: ${pid.getDiscount()} %</td></tr>
								<tr><td><span>Product Name </span></td><td>: ${pid.getP_name()}</td></tr>
								<tr><td><span>Brand </span></td><td>: ${pid.getBrand()}</td></tr>
								<tr><td><span>Avauilable Color </span></td><td>: ${pid.getColor()}</td></tr>
							</tbody>
						</table>
						
					</div>
				</div>
			</div>
			<br><br>
			<div class="card card-body">
				<h4 class="text-center text-primary">Full Details Of Product</h4>

			</div>
		
		</div>
		<br><br>
	<div class="buyJumtrone">
		<div class="f-btn d-flex justify-content-center pt-3 btn btn-outline-warning">
			<h5 class="text-black">Buy</h5>
		</div>
		<div class="s-btn d-flex justify-content-center pt-3 btn btn-outline-warning">
			<h5 class="text-black"><i class="fa fa-shopping-cart mr-1"></i>Cart</h5>
		</div>
	</div>

	</body>
</html>
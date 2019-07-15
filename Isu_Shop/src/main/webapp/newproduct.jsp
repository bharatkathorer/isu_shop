<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New Products</title>

<%@include file="links.jsp" %>
<%@include file="javascript.jsp" %>
<%@include file="style.jsp" %>
</head>
<body style="background-color: #666">

	<%@include file="navbar.jsp"%>
	<%@include file="models.jsp"%>
	
	<!-- product details form start -->
<br><br><br><br>
	<div class="container">
	<div class="card card-body " style="background-color: #999;color: white;">
	
		<form action="AddProduct" method="post" enctype="multipart/form-data">
			<h2 class="text-center text-danger">Add New Product</h2><br>
			<div class="row d-flex d-block">
			<div class="form-group ml-3">
				<label for="img">Product Picture</label><br> <input type="file"
					name="p_pic" multiple="multiple">
			</div>
			<div class="form-group">
				<label for="img">Product Category</label><br> <select
					name="category">
					<option value="Other">Other</option>
					<option value="Mobile">Mobile</option>
					<option value="cloths">cloths</option>
					<option value="watches">watches</option>
					<option value="computer">computer</option>
					<option value="HomeAccessories">HomeAccessories</option>
					<option value="electrical">electrical</option>
					<option value="speakers">speakers</option>
					<option value="Tv">Tv</option>
					<option value="Home therters">Home therters</option>
					<option value="freez">freez</option>
					<option value="gadeds">gadeds</option>
					<option value="tablet">tablet</option>
					<option value="laptop">laptop</option>
				</select>
			</div>
			</div>
			<br>
			<div class="form-group">
				<label for="p_name">Prodeuct Name</label> <input type="text"
					name="p_name" id="p_name" class="form-control"
					placeholder="Product Display Name">
			</div>
			<div class="form-group">
				<label for="price">Price</label> <input type="text" name="price"
					id="price" class="form-control" placeholder="Product Price">
			</div>
			<div class="form-group">
				<label for="p_modal">Model_ID</label> <input type="text"
					name="p_modal" id="p_modal" class="form-control"
					placeholder="Product Model_ID">
			</div>
			<div class="form-group">
				<label for="discount">How Many Discount</label> <input type="text"
					name="discount" id="discount" class="form-control"
					placeholder="Discount in %">
			</div>
			<div class="form-group">
				<label for="brand">Brand_Name</label> <input type="text"
					name="brand" id="brand" class="form-control"
					placeholder="Product Brand Name">
			</div>
			<div class="form-group">
				<label for="brand">Available Colors</label>
				<div class="form-inline">
					<input type="checkbox" class="ml-2 brand_color" id="red" name="red"
						value="red"><span>Red</span> <input type="checkbox"
						class="ml-2 brand_color" id="black" name="black" value="black"><span>black</span>
					<input type="checkbox" class="ml-2 brand_color" id="blue"
						name="blue" value="blue"><span>blue</span> <input
						type="checkbox" class="ml-2 brand_color" id="green" name="green"
						value="green"><span>green</span> <input type="checkbox"
						class="ml-2 brand_color" id="pink" name="pink" value="pink"><span>pink</span>
					<input type="checkbox" class="ml-2 brand_color" id="gold"
						name="gold" value="Gold"><span>Gold</span>
				</div>
			</div>
			<div class="form-group">
				<label for="">Waranty of product</label>
				<div class="form-inline">
					<input type="text" class="form-control" name="warranty"
						id="warranty" placeholder="How Many Waranty"> <select
						name="warranty_years" class="mr-2 p-1">
						<option value="day">day</option>
						<option value="month">month</option>
						<option value="year">year</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="more_info">More_Info</label>
				<textarea name="more_info" id="more_info"
					placeholder="information About Product" class="form-control"></textarea>
			</div>
			
			<div class="form-group">
				<label for="more_info">Description</label>
				<textarea name="description" id="description"
					placeholder="Description About Product" class="form-control"></textarea>
			</div>
			
			<button type="submit" class="btn btn-success">AddProduct</button>

		</form>
	</div>
</div>
	<!-- product details form end -->
	<%@include file="footer.jsp"%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New Products</title>

</head>
<body style="background-color: #666">

	
	<!-- product details form start -->

	<div class="card card-body ml-1 mr-1">
	
	
		<form action="AddProduct" method="post" enctype="multipart/form-data">
			<h2 class="text-center text-danger">Add New Product</h2><br>
			
		
		<div class="custom-control-inline">	
			
			<div class="custom-file mb-3 ">
			
      			<input type="file" class="custom-file-input" id="p_pic" name="p_pic" multiple="multiple">
      			<label class="custom-file-label overflow-hidden" for="p_pic">Choose Image</label>
    		</div>
			
			
			
				
				 <select
					name="category" class="custom-select mb-3 ml-2">
					<option >Category of Your Product</option>
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
				
					<div class="custom-control custom-checkbox mr-1">
     					 <input type="checkbox" class="custom-control-input" id="red" name="red" value="red">
      					<label class="custom-control-label" for="red">Red</label>
    				</div>

    				<div class="custom-control custom-checkbox mr-1">
    					<input type="checkbox" class="custom-control-input" id="blue" name="blue" value="blue">
    					<label class="custom-control-label" for="blue">Blue</label>
    				</div>

    				<div class="custom-control custom-checkbox mr-1">
    					<input type="checkbox" class="custom-control-input" id="green" name="green" value="green">
    					<label class="custom-control-label" for="green">Green</label>
    				</div>

    				<div class="custom-control custom-checkbox mr-1">
    					<input type="checkbox" class="custom-control-input" id="pink" name="pink" value="pink">
    					<label class="custom-control-label" for="pink">Pink</label>
    				</div>

    				<div class="custom-control custom-checkbox mr-1">
    					<input type="checkbox" class="custom-control-input" id="gold" name="gold" value="gold">
    					<label class="custom-control-label" for="gold">Gold</label>
    				</div>
					
					<div class="custom-control custom-checkbox mr-1">
    					<input type="checkbox" class="custom-control-input" id="black" name="black" value="black">
    					<label class="custom-control-label" for="black">Black</label>
    				</div>
					
				</div>
			</div>
			<div class="form-group">
				<label for="">Waranty of product</label>
				<div class="form-inline">
					<input type="text" class="form-control" name="warranty"
						id="warranty" placeholder="How Many Waranty"> 
						<select name="warranty_years" class="custom-select mr-2 p-1">
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
	<!-- product details form end -->

</body>
</html>
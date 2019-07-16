<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Full Registration</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
		<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<div class="container">
	<br>${email}
		<form action="FullReg" method="post" enctype="multipart/form-data">
			<input type="hidden" name="user_email" id="user_email" value="${email}">
			<div class="container">
				<div class="form-group">
					<h2 class="text-center text-primary">Complete Your Registration</h2>
				</div>
				
				
				
				<label for="img">Profile Picture</label><br>
    <div class="custom-file mb-3">
      <input type="file" class="custom-file-input" id="img" name="img">
      <label class="custom-file-label" for="customFile" multiple="multiple" >Choose Profile Picture</label>
    </div>
    
				<div class="form-group">
					<label for="address">Address</label>
					<textarea name="address" id="address" class="form-control" placeholder="Address"></textarea>			
				</div>
				<div class="form-group">
					<label for="pincode">Pincode</label>
					<input type="text" class="form-control" name="pincode" id="pincode" placeholder="PinCode">
				</div>
				<div class="form-group">
					<label for="state">State</label>
					<input type="text" class="form-control" name="state" id="state" placeholder="State">
				</div>
				<div class="form-group">
					<label for="city">City</label>
					<input type="text" class="form-control" name="city" id="city" placeholder="City">
				</div>
				<div class="form-group">
					<label for="phone">Mobile No</label>
					<input type="text" class="form-control" name="phone" id="phone" placeholder="Mobile no">
				</div>
				
				<button class="btn btn-sm btn-success" type="submit">
					Submit
				</button>
			</div>
		</form>
	</div>
</body>
</html>
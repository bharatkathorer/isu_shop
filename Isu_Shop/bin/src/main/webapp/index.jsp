<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script src="style.js" type="text/javascript" charset="utf-8" async defer></script>
		<link rel="stylesheet" type="text/css" href="style.css">
		<link rel="stylesheet" type="text/css" href="home.css">
</head>
<body>

	<div class="container">
		<br><br>
	<div class="container">
		<div class="reg">
		<form action="Registration" method="get">
			<div class="form-group">
				<label for="fname">First_name</label>
				<input type="text" name="fname" id="fname" class="form-control" placeholder="Enter First_name">
			</div>
			<div class="form-group">
				<label for="mname">Middle_name</label>
				<input type="text" name="mname" id="mname" class="form-control" placeholder="Enter Middle_name">
			</div>
			<div class="form-group">
				<label for="lname">Last_name</label>
				<input type="text" name="lname" id="lname" class="form-control" placeholder="Enter Last_name">
			</div>
			<div class="form-group">
				<label for="email">Email</label>
				<input type="email" name="email" id="email" class="form-control" placeholder="Enter email">
			</div>
			<div class="form-group">
				<label for="password">Password</label>
				<input type="password" name="password" id="password" class="form-control" placeholder="Enter password">
			</div>
			<div class="form-group">
				<label for="con_password">Conform_Password</label>
				<input type="con_password" name="con_password" id="con_password" class="form-control" placeholder="Enter Conform_password">
			</div>
			<button class="btn btn-sm btn-success" type="submit">
				Register.
			</button>


		</form>
		</div>
		</div>

		<div class="container">
			<div class="login_form2">
				
				<form action="LogIn" method="get">
					<div class="form-group">
						<label for="u_name">Username</label>
						<input type="email" name="u_name" id="u_name" class="form-control" placeholder="Username">
					</div>
					<div class="form-group">
						<label for="Log_password">Password</label>
						<input type="password" name="Log_password" id="Log_password" class="form-control" placeholder="Password">
					</div>
					<button class="btn btn-success" type="submit">
						Login
					</button>
				</form>
			</div>
		</div>
	</div>
	
</body>
</html>
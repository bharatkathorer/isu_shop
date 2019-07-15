<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

</head>
<body>
	<%-- Registration model start --%>
	<div class="container mt-5">
		<div class="modal fade" id="reg_model">
			<div class="modal-dialog modal-dialog-scrollable">
				<div class="modal-content">
					<div class="modal-header">
						<div class="d-flex justify-content-center">
							<h3 class="modal-title text-primary">New Registration</h3>
						</div>
						<a href="javascript:void(0)" class="close" data-dismiss="modal">&times;</a>
					</div>
					<div class="modal-body">
						<div class="container pb-4">

							<form action="Registration" method="get">
								<div class="form-group">
									<label for="fname">First_name</label> <input type="text"
										name="fname" id="fname" class="form-control"
										placeholder="Enter First_name">
								</div>
								<div class="form-group">
									<label for="mname">Middle_name</label> <input type="text"
										name="mname" id="mname" class="form-control"
										placeholder="Enter Middle_name">
								</div>
								<div class="form-group">
									<label for="lname">Last_name</label> <input type="text"
										name="lname" id="lname" class="form-control"
										placeholder="Enter Last_name">
								</div>
								<div class="form-group">
									<label for="email">Email</label> <input type="email"
										name="email" id="email" class="form-control"
										placeholder="Enter email">
								</div>
								<div class="form-group">
									<label for="password">Password</label> <input type="password"
										name="password" id="password" class="form-control"
										placeholder="Enter password">
								</div>
								<div class="form-group">
									<label for="con_password">Conform_Password</label> <input
										type="con_password" name="con_password" id="con_password"
										class="form-control" placeholder="Enter Conform_password">
								</div>
								<button class="btn btn-sm btn-success" type="submit">
									Register.</button>
							</form>

						</div>
					</div>
					<div class="modal-footer">
						<button class="btn btn-danger" data-dismiss="modal">
							Close</button>
					</div>
				</div>
			</div>
		</div>
		<%-- Registration model end --%>
		<%-- Login Model start --%>
		<div class="modal fade" id="login_model">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<div class="d-flex justify-content-center">
							<h3 class="modal-title text-primary">Login</h3>
						</div>
						<a href="javascript:void(0)" class="close" data-dismiss="modal">&times;</a>
					</div>
					<div class="modal-body">
						<div class="container pb-4">

							<form action="LogIn" method="get">
								<div class="form-group">
									<label for="u_name">Username</label> <input type="email"
										name="u_name" id="u_name" class="form-control"
										placeholder="Username">
								</div>
								<div class="form-group">
									<label for="Log_password">Password</label> <input
										type="password" name="Log_password" id="Log_password"
										class="form-control" placeholder="Password">
								</div>
								<button class="btn btn-success" type="submit">Login</button>
							</form>

						</div>
					</div>
					<div class="modal-footer">
						<button class="btn btn-danger" data-dismiss="modal">
							Close</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%-- Login Model End --%>

</body>
</html>
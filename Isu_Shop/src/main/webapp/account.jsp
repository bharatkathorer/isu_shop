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
		<input type="hidden" id="u_iid" value="${user.getEmail()}">
		<div class="card card-body mt-4">
			
			<div class="row d-flex justify-content-center d-block">
				
				<div class="col xl-8 col-lg-10 col-md-10 col-sm-12 col-12" >
					<img src="ProfileDisplay?email=${user.getEmail()}" alt="Plese Login" class="Account_img img-fluid" >
				</div>

				<div class="row col-lg-10 col-md-10 col-sm-10 col-12 d-flex d-block justify-content-center mt-5">
				
					<div class=" col-lg-5 col-md-10 col-sm-10 " >
						
						<div class="row">
							<h5  class="pb-3 col-12 col-sm-12  col-md-12 col-lg-12 mb-3 text-primary">${user.getEmail()}</h5>
							<div class="col-3 col-sm-4  col-md-4 col-lg-4 mb-3">Name</div><div class="col-8 col-sm-6 col-md-8 col-lg-8 mb-3">: ${user.getFname()} ${user.getMname()} ${user.getLname()}</div>
							<div class="col-3 col-sm-4 col-md-4 col-lg-4 mb-3">Address</div><div class="col-8 col-sm-8 col-md-8 col-lg-8 mb-3">: ${user.getAddress()}</div>
							<div class="col-3 col-sm-4 col-md-4 col-lg-4 mb-3">Pincode</div><div class="col-8 col-sm-8 col-md-8 col-lg-8 mb-3">: ${user.getPincode()}</div>
							<div class="col-3 col-sm-4  col-md-4 col-lg-4 mb-3">State</div><div class="col-8 col-sm-8 col-md-8 col-lg-8 mb-3">: ${user.getState()}</div>
							<div class="col-3 col-sm-4 col-md-4 col-lg-4 mb-3">City</div><div class="col-8 col-sm-8 col-md-8 col-lg-8 mb-3">: ${user.getCity()}</div>
							<div class="col-3 col-sm-4 col-md-4 col-lg-4 mb-3">Phone</div><div class="col-8 col-sm-8 col-md-8 col-lg-8 mb-3">: ${user.getPhone()}</div>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		
			
		
		<%@include file="footer.jsp"%>
		<br><br>

	</body>
</html>
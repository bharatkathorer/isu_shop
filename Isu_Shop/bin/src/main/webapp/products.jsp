<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<%@include file="links.jsp" %>
		<%@include file="javascript.jsp" %>
		<%@include file="style.jsp" %>
	</head>
	<body>
		<div class="container-fluid">
			<div class="card card-body">
				<div class="row d-flex justify-content-center">
					
					<c:forEach items="${product}" var="pro">
					
					
					<div class="card col-xl-3 col-lg-3 col-md-6 col-sm-6 col-10 ">
						<div class="card-header">
							<strong>${pro.getP_name()}</strong>
						</div>
						<div class="card-body">
								
							<div class="d-flex justify-content-end mb-2">
								<button class="btn btn-sm btn-outline-danger btn-like">
								<span><i class="fa fa-heart"></i></span>
								</button>
								<button class="btn btn-sm text-white btn-outline-warning ml-2 btn-like"title="Cart"><span>
								<i class="fa fa-shopping-cart text-secondary"></i>
							</span></button>
							</div>
							
							<span onclick="showImg(${pro.getId()})"><img src="ProductImg?id=${pro.getId()}" alt="Plese Login"
							class="img"> </span>
							<div class="text-center p-2">
								<strong>Price :</strong>${pro.getPrice()} Rs.<br>
							</div>
							
							<p class="bg-success text-white text-center">${pro.getDiscount()} % Discounts</p>
							
							<div class="d-flex justify-content-around justify-content-center">
								<button class="btn btn-sm btn-outline-secondary">
								<span><i class="fa fa-thumbs-o-up"></i></span>
								</button>
								<button class="btn-sm btn btn-outline-success">
								View Details</button>
								<button class="btn btn-sm btn-outline-secondary">
								<span><i class="fa fa-thumbs-o-down"></i></span>
								</button>
							</div>
							
						</div>
						<div class="card-footer d-flex justify-content-center justify-content-around">
							
							<button class="btn text-white btn-warning ml-2" title="Buy">Buy Item</button>
							
						</div>
					</div>
					
					
					</c:forEach>
					

					
					

				</div>
			</div>
		</div>
		<div class="showPic">
						<a class="close mt-2 m-r-5 p-5 text-white" id="c_img">&times;</a>
						<img src="" alt="Plese Login"
							class="fullimg">
					</div>
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
	<div class="container-fluid">
			<div class="row d-flex justify-content-center">
				<input type="hidden" id="u_id" value="${user.getEmail()}">
				<c:forEach items="${product}" var="pro">
					<input type="hidden" id="${pro.getId()}cart" value="0">

					<div class="card col-xl-3 col-lg-3 col-md-6 col-sm-6 col-10 mb-1">
						<div class="card-header bg-white">
							<strong class="text-primary text-capitalize">${pro.getP_name()}</strong>
						</div>

						<div class="card-body">

							<div class="d-flex justify-content-end mb-2">
								<button class="btn btn-sm btn-outline-danger btn-like"
									onclick="love(${pro.getId()})">
									<span><i class="fa fa-heart" id="${pro.getId()}">${pro.getLove()}</i></span>
								</button>
							</div>
							<span onclick="show_product_Img(${pro.getId()})"><img
								src="ProductImg?id=${pro.getId()}" alt="Plese Login" class="img">
							</span>

							<div class="text-center p-2">
								<strong>Price :</strong>${pro.getPrice()} Rs.<br>
							</div>

							<p class="bg-success text-white text-center">${pro.getDiscount()}
								% Discounts</p>

							<div class="d-flex justify-content-around justify-content-center">

								<button class="btn btn-sm btn-outline-secondary btn-like"
									id="${pro.getId()}a" onclick="likebtn(${pro.getId()})"
									value="0">
									<span><i class="fa fa-thumbs-o-up" id="${pro.getId()}i"></i></span>
								</button>

								<a href="javascript:void(0)" onclick="showprod(${pro.getId()})" class="btn-sm btn btn-outline-success" title="View Full Details" data-placement="bottom">
									 View Details
								</a>

								<button
									class="btn btn-sm text-white btn-outline-warning ml-2 btn-like"
									title="Cart" onclick="cart(${pro.getId()})"
									id="${pro.getId()}ba">
									<span> <i class="fa fa-shopping-cart text-secondary"></i>
									</span>
								</button>
							</div>
						</div>
						<div
							class="card-footer d-flex justify-content-center justify-content-around bg-white">

							<button class="btn text-white btn-warning ml-2" title="Buy">Buy
								Item</button>
						</div>
					</div>
				</c:forEach>

			
		</div>
	</div>
	


</body>
</html>
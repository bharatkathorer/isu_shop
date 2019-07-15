<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="javascript.jsp"%>
<%@include file="style.jsp"%>
</head>
<body>
	<div class="container-fluid">
		<div class="card card-body">
			<div class="row d-flex justify-content-center">
				<input type="hidden" id="u_id" value="${email}">
				<c:forEach items="${product}" var="pro">
					<input type="hidden" id="${pro.getId()}cart" value="0">

					<div class="card col-xl-3 col-lg-3 col-md-6 col-sm-6 col-10 ">
						<div class="card-header">
							<strong>${pro.getP_name()}</strong>
						</div>

						<div class="card-body">

							<div class="d-flex justify-content-end mb-2">
								<button class="btn btn-sm btn-outline-danger btn-like"
									onclick="love(${pro.getId()})">
									<span><i class="fa fa-heart" id="${pro.getId()}">${pro.getLove()}</i></span>
								</button>



							</div>

							<span onclick="showImg(${pro.getId()})"><img
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

								<a href="ShowProdById?pid=${pro.getId()}"
									class="btn-sm btn btn-outline-success"> View Details</a>

								<button
									class="btn btn-sm text-white btn-outline-warning ml-2 btn-like"
									title="Cart" onclick="cart(${pro.getId()})"
									id="${pro.getId()}ba" value="34" onload="ok()">
									<span> <i class="fa fa-shopping-cart text-secondary"></i>
									</span>
								</button>
							</div>
						</div>
						<div
							class="card-footer d-flex justify-content-center justify-content-around">

							<button class="btn text-white btn-warning ml-2" title="Buy">Buy
								Item</button>
						</div>
					</div>
				</c:forEach>

			</div>
		</div>
	</div>
	<div class="showPic">
		<a class="close mt-1 m-r-5 p-5 text-white" id="c_img">&times;
			Close</a> <img src="" alt="something went to wrong" class="fullimg">gfsd

	</div>


</body>
</html>
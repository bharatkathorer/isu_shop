<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		
	</head>
	<body>
		<div class="card-body">
			<div class="row">
				<div class="col-xl-9 col-lg-8 col-md-7 mb-3 ">
					<div class="card">
						<div class="card-header bg-dark text-white">
							<div class="d-flex row">
								<p class="text-left d-flex col-lg-4 col-xl-4 colmd-4 col-sm-4 col-4 justify-content-start mt-3"><strong id="cart_head">Cart()</strong></p>
								<span class="d-flex col-lg-8 col-xl-8 colmd-8 col-sm-8 col-8 justify-content-end mt-2"><strong><i class="fa fa-map-marker mr-2 text-primary fa-2x"></i>Deliver to</strong>
								
									<select name="" class="ml-2 mt-2 bg-secondary text-white" style="width: 40%;height: 30px; ">
										<option value="address" style="overflow: auto;"">${user.getAddress()}</option>
										
									</select>
								
								
								</span>
							</div>
						</div>
						<div class="card-body" style="height: 400px; overflow: auto;">
							
							 <c:set var="total" value="0"/>
							<c:set var="totaldis" value="0"/>
							
						
							<c:forEach items="${product}" var="cm1">
							<c:forEach items="${cart_items}" var="cm">
							
							<c:if test="${cm.getPid()==cm1.getId()}">
							
							
							<input type="hidden" id="${cm.getPid()}cart" value="1">
							
							<fmt:parseNumber var = "i" type = "number" value = "${cm1.getPrice()}" />
							<fmt:parseNumber var = "dis" type = "number" value = "${cm1.getDiscount()}" />
							
							<fmt:parseNumber var = "dis" type = "number" integerOnly = "true" value = "${i*dis/100}" />
							<c:set var="totaldis" value="${dis+totaldis}"/>
							<fmt:parseNumber var = "dis" type = "number" integerOnly = "true" value = "${i-dis}" />
							<c:set var="total" value="${total+i}"/> 
							
							
							<div class="card bg-muted  mb-2" >
								<div class="row">
									<div class="colxl-2 col-lg-2 col-md-3 col-sm-3 col-6 d-flex justify-content-center align-items-center mt-2 mb-2">
										<img src="ProductImg?id=${cm.getPid()}" alt="Plese Login" id="card_prod_img" onclick="show_account_Img()" style="width: 60%;height: 80%;">
									</div>
									<div class="colxl-6 col-lg-6 col-md-6 col-sm-6 col-6 d-flex justify-content-start align-items-center mb-2"onclick="showprod(${cm1.getId()})">
										<p class="small"><span class="font-weight-bold">${cm1.getP_name()}.</span><br>
										<span class="font-italic">${cm1.getBrand()}</span><br>
										<span class="text-secondary">Rs : ${dis}  <strike>${cm1.getPrice()}</strike>  ,</span><span class="text-success small">Discount : ${cm1.getDiscount()}% Off</span></p>
										
									</div>
									<div class="colxl-4 col-lg-4 col-md-3 col-sm-3 col-12 d-flex justify-content-center align-items-center mb-2">
										<p class="small text-secondary">Delivery by, Wed Jul 24  Free 40 Rs.<br> 10 Days Replacement Policy</p>
										
									</div>
								</div>
							</div>
							
							<div class="card bg-muted  mb-2">
								<div class="row">
									<div class="colxl-12 col-lg-12 col-md-12 col-sm-12 col-12 d-flex justify-content-between align-items-center mt-2 mb-2">
									<div>
										<button type="" class="btn btn-sm btn-outline-info ml-3" style="border-radius: 100%;">-
										</button>
										<input type="text" id="pro_val" style="height: 35px;width: 40px; " value="1">
										<button type="" class="btn btn-sm btn-outline-info" style="border-radius: 100%;">+
										</button>
									</div>
									<div>
									<input type="hidden" id="c_r" value="2">
										<button type="" class="btn btn-sm btn-danger "onclick="Cart_remove(${cm.getPid()})"
									id="${cm.getPid()}ba">
											Remove Cart
										</button>
										<button type="" class="btn btn-sm btn-success mr-5">
											Purches_Item
										</button>
									</div>

									</div>
								
								</div>
							</div>
							</c:if>
							</c:forEach>
							</c:forEach>
						</div>
						<div class="card-footer d-flex justify-content-end bg-secondary">
							<button class="btn btn-warning">Place-In-Order-All</button>
						</div>
					</div>
				</div>
				<div class="col-xl-3 col-lg-4 col-md-5 ">
					<div class="card">
						<div class="card-header bg-white">
							<h6 class="m-2 font-weight-bold text-primary">Price Details</h6>
						</div>
						<div class="card-body">
							<div class="row">
								<h6 id="carted_price_item" class="small text-secondary col-xl-5 col-lg-5 col-md-5 col-sm-5 col-5 font-weight-bold">Price ( items) </h6>
									<p class=" col-xl-7 col-lg-7 col-md-7 col-sm-7 col-7 d-flex justify-containt-start">: <strong>${total} Rs.</strong></p>
								<h6 class="small text-secondary col-xl-5 col-lg-5 col-md-5 col-sm-5 col-5 font-weight-bold">Delivery </h6>
									<p class="text-success col-xl-7 col-lg-7 col-md-7 col-sm-7 col-7">: Free.</p>
							
							</div>
						</div>
						<div class="card-footer bg-white">
							<h6 class="m-2 text-success ">You Will Save <strong>${totaldis} Rs.</strong> on This Order</h6>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="card-footer">
			
		</div>
	</body>
</html>
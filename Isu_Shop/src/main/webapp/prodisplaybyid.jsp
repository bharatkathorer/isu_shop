<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

</head>
<body>
	<div class="card card-body m-1">
		<div class="row">
			<div class="col-lg-5 col-xl-4 col-md-6 col-sm-12 col-12 mb-3">
				<img alt="profle" src="ProductImg?id=${pid.getId()}"
					class="img-thumbnail mt-3 ml3 pimgid">
			</div>
			<div class="col-lg-7 col-xl-8 col-md-6 col-sm-12 col-12">
				<div class="col-lg-12 col-xl-12 col-md-12 col-sm-12">
					<h2 class="text-primary">Product Details</h2>
					<table>
						<tbody>
							<tr>
								<td class="pb-2"><span>Price </span></td>
								<td class="pb-2">: ${pid.getPrice()} Rs</td>
							</tr>
							<br>
							<tr>
								<td class="pb-2"><span>Discount </span></td>
								<td class="pb-2">: ${pid.getDiscount()} %</td>
							</tr>
							<tr>
								<td class="pb-2"><span>Product Name </span></td>
								<td class="pb-2">: ${pid.getP_name()}</td>
							</tr>
							<tr>
								<td class="pb-2"><span>Brand </span></td>
								<td class="pb-2">: ${pid.getBrand()}</td>
							</tr>
							<tr>
								<td class="pb-2"><span>Avauilable Color </span></td>
								<td class="pb-2">: ${pid.getColor()}</td>
							</tr>
						</tbody>
					</table>

				</div>
			</div>
		</div>
		<br>
		<br>
		<div class="card card-body">
			<h4 class="text-center text-primary">Full Details Of Product</h4>
			<div class="justify-content-center d-flex pt-3 pb-3">
				<div class="col-sm-12 col-lg-12 col-xl-12 col-md-12 col-12">
					<ul class="nav-tabs nav m-auto">

						<li class="nav-item col-xl-4 col-lg-4 col-md-4 col-sm-4 ">
							<a href="#description" class="nav-link" data-toggle="tab">Description</a>
						</li>
						<li class="nav-item col-xl-4 col-lg-4 col-md-4 col-sm-4 ">
							<a href="#specification" class="nav-link" data-toggle="tab">Specification</a>
						</li>
						<li class="nav-item col-xl-4 col-lg-4 col-md-4 col-sm-4 ">
							<a href="#moreinfo" class="nav-link" data-toggle="tab">MoreInfo</a>
						</li>


						<div class="tab-content mb-5">

							<div class="tab-pane " id="moreinfo">
								<br>
								<br>

								<p class="text-primary">MoreInfo</p>
								<table>${pid.getMore_info()}

								</table>
							</div>

							<div class="tab-pane" id="specification">
								<br>
								<br>

								<h1 class="text-primary ">Specification</h1>
								<table>
									<tbody>
										<tr>
											<td><h6 class="text-primary pb-3 pt-3">Details</h6>
											<td>
										</tr>
										<tr>
											<td><span>Price </span></td>
											<td>: ${pid.getPrice()} Rs</td>
										</tr>
										<br>
										<tr>
											<td><span>Discount </span></td>
											<td>: ${pid.getDiscount()} %</td>
										</tr>
										<tr>
											<td><span>Product Name </span></td>
											<td>: ${pid.getP_name()}</td>
										</tr>
										<tr>
											<td><span>Brand </span></td>
											<td>: ${pid.getBrand()}</td>
										</tr>
										<tr>
											<td><span>Color </span></td>
											<td>: ${pid.getColor()}</td>
										</tr>
										<tr>
											<td><h6 class="text-primary pb-3 pt-3">Warranty Type</h6>
											<td>
										</tr>
										<tr>
											<td ><span>Warranty </span></td>
											<td>: ${pid.getWarranty()}</td>
										</tr>
										<tr>
											<td><h6 class="text-primary pb-3 pt-3">Product Model</h6>
											<td>
										</tr>
										<tr>
											<td><span>Model No </span></td>
											<td>: ${pid.getP_modal()}</td>
										</tr>
										<tr>
											<td><h6 class="text-primary pb-3 pt-3">Product Category</h6>
											<td>
										</tr>
										<tr>
											<td><span>Product Category </span></td>
											<td>: ${pid.getCategory()}</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="tab-pane active " id="description">
								<br>
								<br>

								<h1 class="text-primary ">Description</h1>
								${pid.getDescription()}
							</div>

						</div>
					</ul>
				</div>


			</div>
		</div>

	</div>
	<br>
	<br>
	<br>
	<br>	
	<input type="hidden" id="${pid.getId()}cart" value="0">
	<div class="buyJumtrone">
		<div
			class="f-btn d-flex justify-content-center pt-3 btn btn-outline-warning">
			<h5 class="text-black">Buy</h5>
		</div>
		<div
		
			class="s-btn d-flex justify-content-center pt-3 btn btn-outline-warning" onclick="cart(${pid.getId()})" id="${pid.getId()}iba">
			<h5 class="text-black" >
				<i class="fa fa-shopping-cart mr-1"></i>Cart
			</h5>
						
		</div>
	</div>

</body>
</html>
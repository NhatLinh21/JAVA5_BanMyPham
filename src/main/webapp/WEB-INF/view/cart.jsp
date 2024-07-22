<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
			<!DOCTYPE html>
			<html>

			<head>
				<meta charset="UTF-8">
				<title>Giỏ hàng của bạn</title>
			</head>
			<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
			<link rel="stylesheet" href="style.css">
<style>
.nav-item {
	position: relative;
}

.nav-link {
	color: aliceblue;
	cursor: pointer;
	font-size: 1.2rem;
	text-decoration: none;
}

.search-form {
	display: none;
	position: absolute;
	top: 100%;
	right: 0;
	background: white;
	padding: 0.5rem;
	border: 1px solid #ccc;
	border-radius: 4px;
	z-index: 1;
}

.search-form input {
	padding: 0.5rem;
	margin: 0.5rem;
	border: 1px solid #ccc;
	border-radius: 4px;
	color: black;
	background-color: white; /* Đặt màu nền thành trắng */
}

.search-form button {
	padding: 0.5rem;
	border: none;
	color: white;
	border-radius: 4px;
	cursor: pointer;
}

.search-form button:hover {
	background-color: #a8915f;
}

.page-link {
	color: black; /* Màu chữ đen */
	text-decoration: none;
}

.page-link:hover {
	color: #a8915f; /* Đổi màu chữ khi di chuột qua */
	text-decoration: none; /* Loại bỏ gạch chân */
}
</style>
			<body>
				<!-- header -->
				<jsp:include page="layout/_header.jsp"></jsp:include>
				<!-- end header -->

				<!-- Navbar -->
				<jsp:include page="layout/_nav.jsp"></jsp:include>
				<!--End Nav -->

				<!-- cart -->
				<div class="cart">
					<div class="container">
						<h3 class="text-center mt-5 mb-0">GIỎ HÀNG CỦA BẠN</h3>
					</div>
					<div class="shoppin-cart">
						<div class="pay before-footer-section">
							<div class="container">
								<div class="row mb-5">
									<form class="col-md-12" method="post">
										<div class="site-blocks-table">
											<c:if test="${not empty cart.items}">
												<table class="table">
													<thead>
														<tr>
															<th class="product-name">Sản phẩm</th>
															<th class="product-price"> Giá tiền </th>
															<th class="product-quantity">Số lượng</th>
															<th class="product-total">Thành tiền</th>
														</tr>
													</thead>
													<tbody>
														<c:forEach var="item" items="${cart.items}">
															<tr>
																<td class="product-name">
																	<div class="card mb-3 rounded-0 border-0"
																		style="max-width: 540px;">
																		<div class="row g-0">

																			<div class="col-md-4">
																				<img src="/img/upload/${item.spham.hinh}"
																					class="img-fluid rounded-start"
																					alt="..."
																					style="width: 100%; height: 100%;">
																			</div>
																			<div class="col-md-8">
																				<div class="card-body">
																					<h5 class="card-title">
																						${item.spham.tensp}</h5>
																					<p class="card-volume">
																						<strong>${item.size.kichthuoc}${item.size.donvitinh}</strong>
																					</p>
																				</div>
																			</div>

																		</div>
																	</div>
																</td>
																<td>
																	  <p class="card-price">
															                <fmt:formatNumber value="${item.size.gia}" minFractionDigits="0" maxFractionDigits="0" />
															                VNĐ
            </p>
																</td>
																<td>
																	<div class="input-group quantity-controls">
																		<div class="input-group-prepend">
																			<a href="/cart/update/${item.spham.masp}/minus"
																				class="btn btn-outline-secondary"
																				style="border: none;">-</a>
																		</div>
																		<input type="number" value="${item.qty}"
																			aria-label="Quantity"
																			style="width: 50px; text-align: center; border: none;">
																		<div class="input-group-append">
																			<a href="/cart/update/${item.spham.masp}/plus"
																				class="btn btn-outline-secondary"
																				style="border: none;">+</a>
																		</div>
																	</div>
																	<a href="<c:url value='/cart/remove/${item.spham.masp}'/>"
																		class="remove-link"
																		style="text-align: center;">REMOVE</a>
																</td>
																<td>
																	<fmt:formatNumber
																		value="${item.size.gia * item.qty} "
																		type="currency" minFractionDigits="0"
																		maxFractionDigits="0" currencySymbol="₫" />
																</td>
															</tr>
														</c:forEach>
													</tbody>
												</table>
											</c:if>
										</div>
									</form>
								</div>

								<div class="row">
									<div class="col-md-6">
										<div class="row mb-5">
											<div class="col-md-6 mb-3">
												<a href="/listpage" class="btn btn-danger border-0 rounded-0">Tiếp
													tục mua sắm</a>
											</div>
										</div>

									</div>
									<div class="col-md-6 pl-5">
										<div class="row justify-content-end">
											<div class="col-md-7">
												<div class="row">
													<div class="col-md-12 text-right border-bottom mb-5">
														<h3 class="text-black h4 text-uppercase">Tổng tiền</h3>
													</div>
												</div>

												<div class="row mb-5">
													<div class="col-md-6">
														<span class="text-black">Tổng tiền</span>
													</div>
													<div class="col-md-6 text-right">
														<strong class="text-black">
															<fmt:formatNumber value="${Amount}" type="currency"
																minFractionDigits="0" maxFractionDigits="0"
																currencySymbol="₫" />
														</strong>
													</div>
												</div>

												<div class="row">
													<div class="col-md-12">
														<a class="btn checkout border-0 rounded-0"
															href="/sanpham/checkout">Thanh Toán</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- end cart -->
				<hr>
				<!-- list product -->
				<div class="people-aslo">
					<div class="row gy-4 d-flex ms-4 me-1">
						<div class="col-md-3 d-flex">
							<div class="card border-0">
								<a href="#!">

									<div class="hover-overlay">
										<div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
									</div>
								</a>
								<div class="bg-image hover-zoom ripple ripple-surface ripple-surface-light product-image-container"
									data-mdb-ripple-color="light" style="height: 320px; position: relative;">
									<a href=""> <img src="/img/trica-cream.webp" class="w-100 product-image"
											style="width: 100%; height: 100%; display: block; transition: opacity 0.3s ease;" />
										<img src="/img/trica-cream2.webp" class="w-100 product-hover-image"
											style="width: 100%; height: 100%; display: block; position: absolute; top: 0; left: 0; opacity: 0; transition: opacity 0.3s ease;" />
										<h5>
											<span class="badge">ON SALE</span>
										</h5>
									</a> <a href="#" class="quick-add"
										style="position: absolute; bottom: -40px; left: 0; width: 100%; display: flex; align-items: center; justify-content: center; font-size: 20px; color: #FFFFFF; opacity: 0; transition: opacity 0.3s ease, bottom 0.3s ease; text-decoration: none;">QUICK
										ADD</a>
								</div>
								<br>
								<div class="card-body">
									<a href="" class="text-reset" style="text-decoration: none;">
										<h5 class="card-title mb-3">TEA-TRICA SPOT CREAM</h5>
									</a> <a href="" class="text-reset"> </a>
									<h6 class="mb-3" style="color: rgb(184, 144, 84);">
										$61.99
										<del style="text-decoration: line-through;">$70</del>
									</h6>
								</div>
							</div>
						</div>
						<div class="col-md-3 d-flex">
							<div class="card border-0">
								<a href="#!">

									<div class="hover-overlay">
										<div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
									</div>
								</a>
								<div class="bg-image hover-zoom ripple ripple-surface ripple-surface-light product-image-container"
									data-mdb-ripple-color="light" style="height: 320px; position: relative;">
									<a href=""> <img src="/img/creamt-tricab5.webp" class="w-100 product-image"
											style="width: 100%; height: 100%; display: block; transition: opacity 0.3s ease;" />
										<img src="/img/creamt-tricab5-2.webp" class="w-100 product-hover-image"
											style="width: 100%; height: 100%; display: block; position: absolute; top: 0; left: 0; opacity: 0; transition: opacity 0.3s ease;" />
										<h5>
											<span class="badge">ON SALE</span>
										</h5>
									</a> <a href="#" class="quick-add"
										style="position: absolute; bottom: -40px; left: 0; width: 100%; display: flex; align-items: center; justify-content: center; font-size: 20px; color: #FFFFFF; opacity: 0; transition: opacity 0.3s ease, bottom 0.3s ease; text-decoration: none;">QUICK
										ADD</a>
								</div>
								<br>
								<div class="card-body">
									<a href="" class="text-reset">
										<h5 class="card-title">Tea-Trica B5 Cream</h5>
									</a> <a href="" class="text-reset"> <i class="fa-solid fa-star"
											style="color: #886720;"></i> <i class="fa-solid fa-star"
											style="color: #886720;"></i> <i class="fa-solid fa-star"
											style="color: #886720;"></i> <i class="fa-solid fa-star"
											style="color: #886720;"></i> <i class="fa-solid fa-star"
											style="color: #7b7b6f;"></i>
									</a>
									<h6 class="mb-3" style="color: rgb(184, 144, 84);">
										$61.99
										<del style="text-decoration: line-through;">$70</del>
									</h6>
								</div>
							</div>
						</div>
						<div class="col-md-3 d-flex">
							<div class="card border-0">
								<a href="#!">
									<div class="hover-overlay">
										<div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
									</div>
								</a>
								<div class="bg-image hover-zoom ripple ripple-surface ripple-surface-light product-image-container"
									data-mdb-ripple-color="light" style="height: 320px; position: relative;">
									<a href=""> <img src="/img/probio.webp" class="w-100 product-image"
											style="width: 100%; height: 100%; display: block; transition: opacity 0.3s ease;" />
										<img src="/img/probio-2.webp" class="w-100 product-hover-image"
											style="width: 100%; height: 100%; display: block; position: absolute; top: 0; left: 0; opacity: 0; transition: opacity 0.3s ease;" />
										<h5>
											<span class="badge">ON SALE</span>
										</h5>
									</a> <a href="#" class="quick-add"
										style="position: absolute; bottom: -40px; left: 0; width: 100%; display: flex; align-items: center; justify-content: center; font-size: 20px; color: #FFFFFF; opacity: 0; transition: opacity 0.3s ease, bottom 0.3s ease; text-decoration: none;">QUICK
										ADD</a>
								</div>
								<br>
								<div class="card-body">
									<a href="" class="text-reset">
										<h5 class="card-title">PROBIO-CICA ENRICH CREAM</h5>
									</a> <a href="" class="text-reset"> <i class="fa-solid fa-star"
											style="color: #886720;"></i> <i class="fa-solid fa-star"
											style="color: #886720;"></i> <i class="fa-solid fa-star"
											style="color: #886720;"></i> <i class="fa-solid fa-star"
											style="color: #886720;"></i> <i class="fa-regular fa-star-half-stroke"
											style="color: #886720;"></i>
									</a>
									<h6 class="mb-3" style="color: rgb(184, 144, 84);">
										$61.99
										<del style="text-decoration: line-through;">$70</del>
									</h6>
								</div>
							</div>
						</div>
						<div class="col-md-3 d-flex">
							<div class="card border-0">
								<a href="#!">
									<div class="mask" style="margin-top: 10px;">
										<div class="d-flex justify-content-start align-items-end h-100">

										</div>
									</div>
									<div class="hover-overlay">
										<div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
									</div>
								</a>
								<div class="bg-image hover-zoom ripple ripple-surface ripple-surface-light product-image-container"
									data-mdb-ripple-color="light" style="height: 320px; position: relative;">
									<a href=""> <img src="/img/sun.webp" class="w-100 product-image"
											style="width: 100%; height: 100%; display: block; transition: opacity 0.3s ease;" />
										<img src="/img/sun2.webp" class="w-100 product-hover-image"
											style="width: 100%; height: 100%; display: block; position: absolute; top: 0; left: 0; opacity: 0; transition: opacity 0.3s ease;" />
										<h5>
											<span class="badge">ON SALE</span>
										</h5>
									</a> <a href="#" class="quick-add"
										style="position: absolute; bottom: -40px; left: 0; width: 100%; display: flex; align-items: center; justify-content: center; font-size: 20px; color: #FFFFFF; opacity: 0; transition: opacity 0.3s ease, bottom 0.4s ease; text-decoration: none;">QUICK
										ADD</a>
								</div>
								<br>
								<div class="card-body">
									<a href="" class="text-reset">
										<h5 class="card-title">Hyalu-Cica Silky-Fit Sun Stick</h5>
									</a> <a href="" class="text-reset"> <i class="fa-solid fa-star"
											style="color: #886720;"></i> <i class="fa-solid fa-star"
											style="color: #886720;"></i> <i class="fa-solid fa-star"
											style="color: #886720;"></i> <i class="fa-solid fa-star"
											style="color: #886720;"></i> <i class="fa-regular fa-star-half-stroke"
											style="color: #886720;"></i>
									</a>
									<h6 class="mb-3" style="color: rgb(184, 144, 84);">
										$61.99
										<del style="text-decoration: line-through;">$70</del>
									</h6>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- end -->

				<!-- footer -->
				<footer class="footer-contact" style="background-color: #907344; height: 500px;" class="mt-4">
					<div class="container">
						<div class="row Footer__Inner">
							<div class="col-md-4 " style="margin-top: 30px;">

								<h5 class="mb-3">SKIN1004</h5>
								<p class="mb-3">Whatever touches the skin must be pure. Let us
									deliver you the untouched nature and its purity to your skin, to
									help you discover your best skin.</p>
								<p>
									<strong>Customer Service:</strong> hello@skin1004korea.com
								</p>
								<p>
									<strong>Wholesale Inquiry:</strong> sales@skin1004korea.com
								</p>
							</div>
							<div class="col-md-2" style="margin-top: 30px;">
								<h5 class="footer-blog mb-3">HELP</h5>
								<ul class="listLink-item">
									<li class="iconList"><a href="">SKIN1004 Blog</a></li>
									<br>
									<li class="iconList"><a href="">Stores</a></li>
									<br>
									<li class="iconList"><a href="">Become A Partner</a></li>
									<br>
									<li class="iconList"><a href="">FAQs</a></li>
									<br>
									<li class="iconList"><a href="">Contact US</a></li>
									<br>
								</ul>
							</div>
							<div class="col-md-2 " style="margin-top: 30px;">
								<h5 class="mb-3">POLICY</h5>
								<ul class="listLink-item">
									<li class="iconList"><a href="">Shipping Policy</a></li>
									<li class="iconList"><a href="">Refund Policy</a></li>
									<li class="iconList"><a href="">Privacy Policy</a></li>
									<li class="iconList"><a href="">Terms of Service</a></li>
								</ul>
							</div>
							<div class="col-md-4" style="margin-top: 30px;">
								<h5 class="mb-3">BE THE FIRST TO KNOW</h5>
								<p>Stay up to date with our newest releases, exclusive offers,
									and giveaways straight to your inbox.</p>
								<form action="">
									<input type="text" placeholder="Enter your email address" class="border-0"
										style="height: 40px; width: 300px;"> <br>
									<button class="mt-2 w-50 submit">SUBSCRIBE</button>
								</form>
							</div>
						</div>
						<div class="social-list" style="font-size: 35px;">
							<ul class="social d-flex">
								<li class="iconList"><a href=""><i class="fa-brands fa-facebook"></i></a></li>
								<li class="iconList"><a href=""><i class="fa-brands fa-instagram"></i></a></li>
								<li class="iconList"><a href=""><i class="fa-brands fa-pinterest"></i></a></li>
								<li class="iconList"><a href=""><i class="fa-brands fa-twitter"></i></a></li>
								<li class="iconList"><a href=""><i class="fa-brands fa-youtube"></i></a></li>
							</ul>
						</div>
						<div class="footer-aside mb-5">
							<p>
								Craver Corporation <br> CEO: Sohyung Lee <br> Email:
								hello@skin1004korea.com <br> Company Location: Milim tower
								12F, 14, Teheran-ro 4-gil, Gangnam-gu, Seoul, Republic of Korea <br>
								Company registration number: 261-81-14845 <br> <br> ©
								SKIN1004
							</p>
						</div>
					</div>
				</footer>

				<!-- end -->
				<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
				<script src="https://kit.fontawesome.com/d584f42692.js" crossorigin="anonymous"></script>
				<script src="script.js"></script>
			</body>

			</html>
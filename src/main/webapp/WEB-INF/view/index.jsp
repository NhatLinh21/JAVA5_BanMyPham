    <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SKIN1004</title>
<!-- CSS Link Bootstrap -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="bootstrap-5.3.2-dist/css/bootstrap.min.css">
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>

<link rel="stylesheet" href="style.css">

</head>
<style>
.image-container img {
	filter: brightness(60%);
}

.product-section {
	position: relative;
	color: white;
	text-align: left;
	overflow: hidden;
}

.history-text {
	font-size: 18px;
	font-weight: 300;
	line-height: 26px;
	text-align: justify;
	letter-spacing: 0;
}

.product-section:hover img {
	transform: scale(1.05);
	opacity: 1;
}

.overlay {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	color: white;
	opacity: 1;
	transition: opacity 1s ease-in-out;
}

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
	<header class="text-center" style="height: 30px;">
		<marquee scollamount="40px">
			<strong>
				<div class="row">
					<div class="col-md-3">Fast Shipping Now Available ✈️</div>
					<div class="col-md-3">Fast Shipping Now Available ✈️</div>
					<div class="col-md-3">Fast Shipping Now Available ✈️</div>
					<div class="col-md-3">Fast Shipping Now Available ✈️</div>
				</div>
			</strong>

		</marquee>
	</header>
	<!-- end header -->

	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg" data-bs-theme="dark"
		style="background-color: #a8915f">
		<div class="container-fluid ms-5">

			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="container collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav col-md-4 text-center justify-content-end">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="/listpage" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"
						style="color: aliceblue;"> THƯƠNG HIỆU </a>
						<ul class="dropdown-menu bg-light">
							<ul class="list-unstyled">
								<li><a class="dropdown-item" href="/listpage">Nổi bật</a></li>
								<li><a class="dropdown-item" href="/listpage">Madagascar
										Centalla</a></li>
								<li><a class="dropdown-item" href="#">Hành trình của
										chúng tôi</a></li>
								<li><a class="dropdown-item" href="#">SKIN1004 Blog</a></li>
							</ul>

						</ul></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="/listpage"
						data-bs-toggle="dropdown" aria-expanded="false"
						style="color: aliceblue;"> SẢN PHẨM </a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="/listpage" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"
						style="color: aliceblue;"> FLAGSHIP </a>
						<ul class="dropdown-menu bg-light">
							<ul class="list-unstyled">
								<li><a class="dropdown-item" href="#pills-sale">Kinh
										nghiệm</a></li>
								<li><a class="dropdown-item" href="#pills-sale">Kiểm
										tra da</a></li>
							</ul>
						</ul></li>

				</ul>
				<ul
					class="navbar-nav col-md-2 text-center d-flex icon justify-content-start"
					style="margin-left: 4px; width: 38%;">
					<a href="/" class="text-center"><img src="img/logo.webp" alt=""></a>
				</ul>
				<ul
					class="navbar-nav col-md-4 text-center d-flex icon justify-content-end"
					style="margin-left: 2px;">
					<li class="nav-item"><a class="btn nav-link" href="#!list"
						style="color: aliceblue;">CỬA HÀNG</a></li>
					<li class="nav-item"><a class="btn nav-link" href="/account"
						style="color: aliceblue;"> <i class="fa-regular fa-user"></i>
							<b style="font-size: 8px"> ${currentUser.tenKH}</b></a></li>
					<li class="nav-item"><a class="btn nav-link" id="searchButton"
						style="color: aliceblue;"> <i class="fas fa-search"></i>
					</a>
						<form id="searchForm" class="search-form" action="/listpage">
							<input name="keywords" value="${keywords}"
								placeholder="Search..." id="searchInput">
							<button>Search</button>
						</form></li>
					<li class="nav-item"><a class="btn nav-link"
						href="/cart/view"
						style="color: aliceblue;"> <i class="fa-solid fa-bag-shopping"></i>
							<span
							class="position-absolute badge-icon top-0 rounded-pill ms-3"
							ng-bind="cartCount"></span></a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!--End Nav -->

	<!-- Caroshel -->
	<div id="carouselExampleCaptions" class="carousel slide"
		data-bs-touch="false" data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="3" aria-label="Slide 4"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="4" aria-label="Slide 5"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="5" aria-label="Slide 6"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="6" aria-label="Slide 7"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active" data-bs-interval="2000">
				<img src="img/slide1.webp" class="d-block w-100" alt="">
			</div>
			<div class="carousel-item" data-bs-interval="2000">
				<img src="img/slide2.webp" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item" data-bs-interval="2000">
				<img src="img/slide3.webp" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item" data-bs-interval="2000">
				<img src="img/slide4.webp" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item" data-bs-interval="2000">
				<img src="img/slide5.webp" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item" data-bs-interval="2000">
				<img src="img/slide6.webp" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item" data-bs-interval="2000">
				<img src="img/slide7.webp" class="d-block w-100" alt="...">
			</div>

			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
	</div>
	<div class="wrapper-heading-home">
		<h6 class="text-center"
			style="margin-top: 80px; font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; color: #8B4513;">THE
			BEST OF UNTOUCHED NATURE</h6>
	</div>


	<nav class="nav-tabs-container mt-4 rounded-0 border-bottom-0">
		<div class="nav nav-tabs" id="nav-tab" role="tablist">
			<button class="nav-link active border-0" id="nav-home-tab"
				data-bs-toggle="tab" data-bs-target="#nav-home" type="button"
				role="tab" aria-controls="nav-home" aria-selected="true">
				<h4 class="font-dep">BEST SELLERS</h4>
			</button>

			<button class="nav-link border-0" id="nav-profile-tab"
				data-bs-toggle="tab" data-bs-target="#nav-profile" type="button"
				role="tab" aria-controls="nav-profile" aria-selected="false">
				<h4 class="font-dep">NEW ARRIVALS</h4>
			</button>
		</div>
	</nav>

	<div class="tab-content" id="nav-tabContent">
		<div class="tab-pane fade show active" id="nav-home" role="tabpanel"
			aria-labelledby="nav-home-tab" tabindex="0">
			<div class="row">
				<c:forEach var="item" items="${page.content}" varStatus="loop">
					<c:if test="${loop.index < 4}">
						<div class="col-md-3">
							<div class="col">
								<div class="card">
									<a href="/shop/detail/${item.masp}">
										<div class="hover-overlay">
											<div class="mask"
												style="background-color: rgba(251, 251, 251, 0.15);"></div>
										</div>
									</a>
									<div
										class="bg-image hover-zoom ripple ripple-surface ripple-surface-light product-image-container"
										data-mdb-ripple-color="light"
										style="height: 320px; position: relative;">
										<a href="/shop/detail/${item.masp}"> <img
											src="img/upload/${item.hinh}" class="w-100 product-image"
											style="width: 100%; height: 100%; display: block; transition: opacity 0.3s ease;" />
											<img src="img/upload/${item.img[1].image}"
											class="w-100 product-hover-image"
											style="width: 100%; height: 100%; display: block; position: absolute; top: 0; left: 0; opacity: 0; transition: opacity 0.3s ease;" />
											<h5>
												<span class="badge">${item.trangThai.tentt }</span>
											</h5>
										</a> <a href="/shop/detail/${item.masp}" class="quick-add">QUICK
											ADD</a>
									</div>
									<div class="card-body text-center">
										<a href="/shop/detail/${item.masp}"
											class="text-reset text-decoration-none">
											<h5 class="card-title mb-3">${item.tensp}</h5>
										</a> <a href="" class="text-reset"> <i
											class="fa-solid fa-star" style="color: #886720;"></i> <i
											class="fa-solid fa-star" style="color: #886720;"></i> <i
											class="fa-solid fa-star" style="color: #886720;"></i> <i
											class="fa-solid fa-star" style="color: #886720;"></i> <i
											class="fa-solid fa-star" style="color: #7b7b6f;"></i>
										</a>
										<h6 class="mb-3" style="color: rgb(184, 144, 84);">
											<span id="price"> <fmt:formatNumber
													value="${item.size[0].gia}" minFractionDigits="0"
													maxFractionDigits="0" /> đ
											</span>
											<del style="text-decoration: line-through;"></del>
										</h6>
									</div>
								</div>
							</div>
						</div>
					</c:if>
				</c:forEach>
			</div>
		</div>
		<div class="tab-pane fade" id="nav-profile" role="tabpanel"
			aria-labelledby="nav-profile-tab" tabindex="0">
			<div class="row">
				<c:forEach var="item" items="${page.content}" varStatus="loop">
					<c:if test="${loop.index >= page.content.size() - 4}">
						<div class="col-md-3">
							<div class="col">
								<div class="card">
									<a href="#!">
										<div class="hover-overlay">
											<div class="mask"
												style="background-color: rgba(251, 251, 251, 0.15);"></div>
										</div>
									</a>
									<div
										class="bg-image hover-zoom ripple ripple-surface ripple-surface-light product-image-container"
										data-mdb-ripple-color="light"
										style="height: 320px; position: relative;">
										<a href=""> <img src="img/upload/${item.hinh}"
											class="w-100 product-image"
											style="width: 100%; height: 100%; display: block; transition: opacity 0.3s ease;" />
											<img src="img/upload/${item.img[1].image}"
											class="w-100 product-hover-image"
											style="width: 100%; height: 100%; display: block; position: absolute; top: 0; left: 0; opacity: 0; transition: opacity 0.3s ease;" />
											<h5>
												<span class="badge">${item.trangThai.tentt }</span>
											</h5>
										</a> <a href="/addToCart" class="quick-add">QUICK ADD</a>
									</div>
									<div class="card-body text-center">
										<a href="" class="text-reset text-decoration-none">
											<h5 class="card-title mb-3">${item.tensp}</h5>
										</a> <a href="" class="text-reset"> <i
											class="fa-solid fa-star" style="color: #886720;"></i> <i
											class="fa-solid fa-star" style="color: #886720;"></i> <i
											class="fa-solid fa-star" style="color: #886720;"></i> <i
											class="fa-solid fa-star" style="color: #886720;"></i> <i
											class="fa-solid fa-star" style="color: #7b7b6f;"></i>
										</a>
										<h6 class="mb-3" style="color: rgb(184, 144, 84);">
											<span id="price"> <fmt:formatNumber
													value="${item.size[0].gia}" minFractionDigits="0"
													maxFractionDigits="0" /> đ
											</span>
											<del style="text-decoration: line-through;"></del>
										</h6>
									</div>
								</div>
							</div>
						</div>
					</c:if>
				</c:forEach>
			</div>
		</div>
	</div>

	<div class="container btn-beautiful  "
		style="margin-bottom: 80px; margin-top: 50px;">
		<a href="/listpage" class="btn-custom ">VIEW ALL</a>
	</div>
	<!-- bét seo lơ -->

	<!-- Phân loại -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-4 product-section image-container">
				<img src="img/DM1.webp" alt="Calming & Soothing">
				<div class="overlay">
					<h6>GENTLE CARE FOR SENSITIVE SKIN</h6>
					<br>
					<h4>CALMING & SOOTHING</h4>
					<br>
					<a href="/listpage"><button class="btn btn-light ">CENTELLA</button></a>
				</div>
			</div>
			<div class="col-md-4 product-section image-container">
				<img src="img/DM2.webp" alt="Hydrating">
				<div class="overlay">
					<h6>FOR BRIGHT AND HYDRATED SKIN</h6>
					<br>
					<h4>HYDRATING</h4>
					<br>
					<a href="/listpage"><button class="btn btn-light">HYALU-CICA</button></a>
				</div>
			</div>
			<div class="col-md-4 product-section image-container">
				<img src="img/DM5.webp" alt="Brightening">
				<div class="overlay">
					<h6>FOR EVEN TONE AND RADIANT SKIN</h6>
					<br>
					<h4>BRIGHTENING</h4>
					<br>
					<a href="/listpage"><button class="btn btn-light">TONE BRIGHTENING</button></a>
				</div>
			</div>
		</div>
	</div>


	<div class=""
		style="margin: 80px; text-align: center; font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;">
		<h4>
			<b>REVITALIZE YOUR SKINCARE ROUTINE</b>
		</h4>
	</div>

	<!-- hinh` nen` -->
	<div class="row">
		<div class="col-6">
			<a href="/blog"> <img src="img/nen1.webp" width="100%" alt="">
			</a>
		</div>
		<div class="col-6" style="padding: 130px;">
			<h3 class="title-history">MADAGASCAR CENTELLA TONING TONER</h3>
			<p class="history-text">
				<br> Hypoallergenic soothing care for sensitive skin. Made only
				with the purest Centella Asiatica from Madagascar.
			</p>
			<a href="/blog" class="btn bg-white opacity-100 text-dark"
				style="text-decoration: underline;">READ MORE</a>
		</div>
	</div>
	<div class="row">
		<div class="col-6" style="padding: 130px;">
			<h3 class="title-history">MADAGASCAR CENTELLA AIR-FIT SUNCREAM
				PLUS</h3>
			<p class="history-text">
				<br> Blocks UV rays and brightens the skin simultaneously.
			</p>
			<a href="/blog" class="btn bg-white opacity-100 text-dark"
				style="text-decoration: underline;">READ MORE</a>
		</div>
		<div class="col-6">
			<a href="/blog"> <img src="img/nen2.webp" width="100%" alt="">
			</a>
		</div>
		<hr>
	</div>
	<!-- Recomendation -->
	<div class=""
		style="margin: 80px; text-align: center; font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; color: #8B4513;">
		<h4>
			<b>RECOMENDATION</b>
		</h4>
	</div>
	<div class="row">
		<c:forEach var="item" items="${page.content}" varStatus="loop">
			<c:if test="${loop.index >= page.content.size() - 4}">
				<div class="col-md-3">
					<div class="col">
						<div class="card">
							<a href="#!">
								<div class="hover-overlay">
									<div class="mask"
										style="background-color: rgba(251, 251, 251, 0.15);"></div>
								</div>
							</a>
							<div
								class="bg-image hover-zoom ripple ripple-surface ripple-surface-light product-image-container"
								data-mdb-ripple-color="light"
								style="height: 320px; position: relative;">
								<a href="/shop/detail/${item.masp}"> <img
									src="img/upload/${item.hinh}" class="w-100 product-image"
									style="width: 100%; height: 100%; display: block; transition: opacity 0.3s ease;" />
									<img src="img/upload/${item.img[1].image}"
									class="w-100 product-hover-image"
									style="width: 100%; height: 100%; display: block; position: absolute; top: 0; left: 0; opacity: 0; transition: opacity 0.3s ease;" />
									<h5>
										<span class="badge">${item.trangThai.tentt }</span>
									</h5>
								</a> <a href="/shop/detail/${item.masp}" class="quick-add">QUICK
									ADD</a>
							</div>
							<div class="card-body text-center">
								<a href="/shop/detail/${item.masp}"
									class="text-reset text-decoration-none">
									<h5 class="card-title mb-3">${item.tensp}</h5>
								</a> <a href="" class="text-reset"> <i class="fa-solid fa-star"
									style="color: #886720;"></i> <i class="fa-solid fa-star"
									style="color: #886720;"></i> <i class="fa-solid fa-star"
									style="color: #886720;"></i> <i class="fa-solid fa-star"
									style="color: #886720;"></i> <i class="fa-solid fa-star"
									style="color: #7b7b6f;"></i>
								</a>
								<h6 class="mb-3" style="color: rgb(184, 144, 84);">
									<span id="price"> <fmt:formatNumber
											value="${item.size[0].gia}" minFractionDigits="0"
											maxFractionDigits="0" /> đ
									</span>
									<del style="text-decoration: line-through;"></del>
								</h6>
							</div>
						</div>
					</div>
				</div>
			</c:if>
		</c:forEach>
	</div>
	<div class="container btn-beautiful  ">
		<a href="/listpage" class="btn-custom ">VIEW ALL PRODUCTS</a>
	</div>
	<hr class="mt-5">
	<!-- tin nè  -->
	<div class="container">
		<div class="row product mt-3 ">
			<div class="col-sm-4 product-section image-container">
				<div class="card h-100 rounded-0 border-0">
					<a href="/blog"> <img src="img/tin1.avif"
						class="card-img-top img-fluid rounded-0 zoom-img" alt="..."
						style="height: 235.41px;"></a>
					<div class="card-body">
						<h5 class="card-title text-uppercase my-3">SKIN1004
							MADAGASCAR CENTELLA HYALU-CICA BLUE SERUM REVIEW</h5>
						<p class="card-text">Centella Asiatica in skincare is not
							going anywhere anytime soon. And if you think of Centella,
							SKIN1004 is definitely the K-Beauty brand that will...</p>
						<a href="/blog" class="btn bg-white opacity-100 text-dark"
							style="text-decoration: underline;">READ MORE</a>
					</div>
				</div>

			</div>
			<div class="col-sm-4 product-section image-container">
				<div class="card h-100 rounded-0 border-0">
					<a href="/blog"> <img src="img/tin2.avif"
						class="card-img-top img-fluid rounded-0 zoom-img" alt="..."
						style="height: 235.41px;"></a>
					<div class="card-body">
						<h5 class="card-title text-uppercase my-3">SKIN1004
							MADAGASCAR CENTELLA TONING TONER | REVIEW</h5>
						<p class="card-text">I’ve said it before and I’ll say it
							again. I love centella asiatica as a skincare ingredient and I’m
							always happy to try out products with it. N...</p>
						<a href="blog" class="btn bg-white opacity-100 text-dark"
							style="text-decoration: underline;">READ MORE</a>
					</div>
				</div>

			</div>
			<div class="col-sm-4 product-section image-container">
				<div class="card h-100 rounded-0 border-0">
					<a href="/blog"> <img src="img/tin3.avif"
						class="card-img-top img-fluid rounded-0 zoom-img" alt="..."
						style="height: 235.41px;"></a>
					<div class="card-body">
						<h5 class="card-title text-uppercase my-3">SKIN1004 ZOMBIE
							PACK REVIEW</h5>
						<p class="card-text">This is a sponsored post with affiliate
							links. All opinions are my own. If you are into skincare at all,
							you have probably heard of SKIN...</p>
						<a href="/blog" class="btn bg-white opacity-100 text-dark"
							style="text-decoration: underline;">READ MORE</a>
					</div>
				</div>

			</div>
		</div>
	</div>




	<hr>
	<!-- footer -->
	<footer class="footer-contact"
		style="background-color: #907344; height: 500px;" class="mt-4">
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
						<input type="text" placeholder="Enter your email address"
							class="border-0" style="height: 40px; width: 300px;"> <br>
						<button class="mt-2 w-50 submit">SUBSCRIBE</button>
					</form>
				</div>
			</div>
			<div class="social-list" style="font-size: 35px;">
				<ul class="social d-flex">
					<li class="iconList"><a href=""><i
							class="fa-brands fa-facebook"></i></a></li>
					<li class="iconList"><a href=""><i
							class="fa-brands fa-instagram"></i></a></li>
					<li class="iconList"><a href=""><i
							class="fa-brands fa-pinterest"></i></a></li>
					<li class="iconList"><a href=""><i
							class="fa-brands fa-twitter"></i></a></li>
					<li class="iconList"><a href=""><i
							class="fa-brands fa-youtube"></i></a></li>
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

	<script src="https://kit.fontawesome.com/09a7ee35a0.js"
		crossorigin="anonymous"></script>
	<script src="bootstrap-5.3.2-dist/js/bootstrap.bundle.min.js">
		
	</script>
	<!-- JS Link Bootstrap -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="JS/script.js"></script>
	<script src="JS/app.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.8.2/angular.min.js"></script>
	<script>
		/* Nhảy hình chỗ SP */
		document
				.querySelectorAll('.product-image-container')
				.forEach(
						function(container) {
							container
									.addEventListener(
											'mouseover',
											function() {
												this
														.querySelector('.product-hover-image').style.opacity = '1';
												this
														.querySelector('.quick-add').style.opacity = '1';
												this
														.querySelector('.quick-add').style.bottom = '0'; // Move the text up when hovering
											});

							container
									.addEventListener(
											'mouseout',
											function() {
												this
														.querySelector('.product-hover-image').style.opacity = '0';
												this
														.querySelector('.quick-add').style.opacity = '0';
												this
														.querySelector('.quick-add').style.bottom = '0px'; // Move the text back down when not hovering
											});
						});
	</script>
	<script>
		document.getElementById('searchButton').addEventListener(
				'click',
				function(event) {
					event.preventDefault();
					var searchForm = document.getElementById('searchForm');
					if (searchForm.style.display === 'none'
							|| searchForm.style.display === '') {
						searchForm.style.display = 'block';
					} else {
						searchForm.style.display = 'none';
					}
				});
	</script>
</body>

</html>
    

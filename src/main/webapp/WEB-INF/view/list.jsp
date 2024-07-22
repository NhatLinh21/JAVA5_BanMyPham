<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>

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


	<div class="wrapper-heading-home">
		<h4 class="text-center"
			style="margin-top: 60px; margin-bottom: 60px; font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; color: #8B4513;">ALL
			PRODUCTS</h4>
	</div>

	<div class="tab-content" id="nav-tabContent">
		<div class="tab-pane fade show active" id="nav-home" role="tabpanel"
			aria-labelledby="nav-home-tab" tabindex="0">
			<div class="row">
				<!-- Product 1 -->
				<div class="col-md-3">
					<a href=""><img
						src="/img/440839203_1798424950646047_2010650085285507541_n.png"
						style="height: 400px;"></a>
				</div>
				<c:forEach var="item" items="${page.content}">
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
									<a href="/shop/detail/${item.masp}""> <img src="/img/upload/${item.hinh}"
										class="w-100 product-image"
										style="width: 100%; height: 100%; display: block; transition: opacity 0.3s ease;" />
										<img src="/img/upload/${item.img[1].image}"
										class="w-100 product-hover-image"
										style="width: 100%; height: 100%; display: block; position: absolute; top: 0; left: 0; opacity: 0; transition: opacity 0.3s ease;" />
										<h5>
											<span class="badge">${item.trangThai.tentt}</span>
										</h5>
									<a href="<c:url value='/addToCart'><c:param name='id' value='${item.masp}'/></c:url>" class="quick-add"
                                    style="position: absolute; bottom: -40px; left: 0; width: 100%; display: flex; align-items: center; justify-content: center; font-size: 20px; color: #FFFFFF; opacity: 0; transition: opacity 0.3s ease, bottom 0.3s ease; text-decoration: none;">QUICK
                                    ADD</a>
								</div>
								<div class="card-body text-center">
									<a href="/shop/detail/${item.masp}"  class="text-reset text-decoration-none">
										<h5 class="card-title mb-3">${item.tensp}</h5>
									</a>
									<h6 class="mb-3" style="color: rgb(184, 144, 84);">
										${item.size[0].gia}đ
										<del style="text-decoration: line-through;"></del>
									</h6>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<nav aria-label="Page navigation example">
    <ul class="pagination"
        style="display: flex; justify-content: center; align-items: center; list-style: none;">
        <li class="page-item"><a class="page-link" href="/listpage?page=0">First</a></li>
        <li class="page-item"><a class="page-link"
                href="/listpage?page=${page.number > 0 ? page.number - 1 : 0}">Previous</a></li>
        <li class="page-item"><a class="page-link"
                href="/listpage?page=${page.number + 1}">Next</a></li>
        <li class="page-item"><a class="page-link"
                href="/listpage?page=${page.totalPages - 1}">Last</a></li>
    </ul>
</nav>

	<hr>
	<!-- Recomendation -->
	<div class=""
		style="margin: 80px; text-align: center; font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; color: #8B4513;">
		<h4>
			<b>PEOPLE ALSO VIEWED</b>
		</h4>
	</div>
	<div class="row">
		<c:forEach var="item" items="${page.content}" varStatus="loop">
			<c:if test="${loop.index < 4}">
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
								<a href="/shop/detail/${item.masp}"> <img src="/img/upload/${item.hinh}"
									class="w-100 product-image"
									style="width: 100%; height: 100%; display: block; transition: opacity 0.3s ease;" />
									<img src="/img/upload/${item.img[1].image}"
									class="w-100 product-hover-image"
									style="width: 100%; height: 100%; display: block; position: absolute; top: 0; left: 0; opacity: 0; transition: opacity 0.3s ease;" />
									<h5>
										<span class="badge">${item.trangThai.tentt}</span>
									</h5>
								</a> <a href="<c:url value='/addToCart'><c:param name='id' value='${item.masp}'/></c:url>" class="quick-add"
                                    style="position: absolute; bottom: -40px; left: 0; width: 100%; display: flex; align-items: center; justify-content: center; font-size: 20px; color: #FFFFFF; opacity: 0; transition: opacity 0.3s ease, bottom 0.3s ease; text-decoration: none;">QUICK
                                    ADD</a>
							</div>
							<div class="card-body text-center">
								<a href="/shop/detail/${item.masp}"  class="text-reset text-decoration-none">
									<h5 class="card-title mb-3">${item.tensp}</h5>
								
								</a>
								<h6 class="mb-3" style="color: rgb(184, 144, 84);">
									${item.size[0].gia}
									<del style="text-decoration: line-through;"></del>
								</h6>
							</div>
						</div>
					</div>
				</div>
			</c:if>
		</c:forEach>
	</div>


	<!-- footer -->
<jsp:include page="layout/_footer.jsp"></jsp:include>

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
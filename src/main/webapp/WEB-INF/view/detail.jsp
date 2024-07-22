<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
<style>
.quantity-btn {
	margin: 0;
	background-color: #fff;
	padding: 10px 20px;
	font-size: x-large;
	border: 1px solid #8f7344;
	border-radius: 0;
	cursor: pointer;
	outline: none;
}

#quantity {
	text-align: center;
	font-size: x-large;
	max-width: 100px;
	margin: 0;
	border: 1px solid #8f7344;
	border-left: none;
	border-right: none;
	outline: none;
}

.quantity-btn:first-of-type {
	border-right: none;
}

.quantity-btn:last-of-type {
	border-left: none;
}

.size-btn {
	font-size: x-large;
	background-color: #ffffff;
	border: 1px solid #8f7344;
	color: #8f7344;
	cursor: pointer;
}

.size-btn.selected {
	background-color: #ffffff;
	color: #000000;
	border: 1px solid black;
}

/* CSS cho hiệu ứng nút "ADD TO CART" */
.btn-add-to-cart {
	position: relative;
	overflow: hidden;
	border: 1px solid #8f7344;
	border-radius: 0;
	background-color: #fff;
	color: #8f7344;
	transition: background-color 0.5s, color 0.5s;
}

.btn-add-to-cart::before {
	content: '';
	position: absolute;
	top: 0;
	left: -100%;
	width: 100%;
	height: 100%;
	background: linear-gradient(to right, #8f7344, #8f7344);
	transition: left 0.5s;
	z-index: -1;
}

.btn-add-to-cart:hover::before {
	left: 0;
}

.btn-add-to-cart:hover {
	background-color: transparent;
	color: #fff;
}

.small-image {
	display: block;
	margin: 0 auto;
}
</style>
</head>

<body ng-app="myapp">
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
	<jsp:include page="layout/_nav.jsp"></jsp:include>
	<!--End Nav -->
	<div class="container-xxl">
		<div class="row mt-5">
			<c:if test="${not empty product}">
				<div class="col-md-7">
					<img id="main-image" class="card-prod"
						src="/img/upload/${product.hinh}" alt=""
						style="height: 500px; max-width: 100%; display: block; margin: 0 auto 100px auto;">
					<div class="row">
						<c:forEach var="image" items="${images}" varStatus="status">
							<div class="col-md-2">
								<img src="/img/upload/${image.image}" class="img-fluid small-image"
									alt="" style="height: 150px; max-width: 170px;"
									onmouseover="changeImage(this.src)">
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="col-md-5">
					<div>
						<h4>${product.tensp}</h4>
					</div>
					<div id="price-container">
					<h4 style="margin-top: 30px; color: rgb(125, 103, 48);">
					    <strong>Giá: 
					        <span id="price">
					            <fmt:formatNumber value="${sizes[0].gia}"  minFractionDigits="0" maxFractionDigits="0" /> ₫
					        </span>
					    </strong>
					</h4>

					</div>
					<div class="border-0"
						style="margin-top: 30px; background-color: #fff;">
						<h4>
							<span>Size:</span>
						</h4>
						<c:forEach var="size" items="${sizes}">
							 <button type="button" class="size-btn" data-price="${size.gia}" data-size-id="${size.id}" onclick="selectSize(this)">
    								${size.kichthuoc}${size.donvitinh}
							</button>
						</c:forEach>
					</div>

					<br>
					<div>
						<h4>
							<span>Quantity:</span>
						</h4>
						<div style="display: flex; gap: 0; margin-bottom: 20px;">
							<button class="quantity-btn" onclick="decreaseQuantity()">-</button>
							<input type="text" id="quantity"  value="1">
							<button class="quantity-btn" onclick="increaseQuantity()">+</button>
						</div>
					</div> 
				<form action="/addToCart" method="post">
				    <div class="d-grid gap-2 col-9 mx-right">
				        <input type="hidden" name="id" value="${product.masp}"> <!-- Include product ID -->
				        <input type="hidden" name="sizeId" value="1"> <!-- Thay "1" bằng sizeId thực tế -->
				        <input type="hidden" name="quantity" value="1"> <!-- Thay "1" bằng số lượng thực tế -->
				        <button type="submit" class="btn-add-to-cart">
				            <h5 style="position: relative; z-index: 1; text-align: center; margin-top: 10px; margin-bottom: 15px;">
				                ADD TO CART</h5>
				        </button>
				        <br>
				        <br>
				    </div>
				</form>


					<div class="col-md-9">
						<p style="font-family: helvetica;">${product.mota}</p>
					</div>
				</div>
			</c:if>
		</div>

	</div>

	<div class="container-fluid"
		style="background-color: #f3e9cf; margin-top: 100px;">
		<div
			style="background-color: #f3e9cf; margin: 0; padding: 0; display: flex; justify-content: center; align-items: center; height: 100vh;">
			<div
				style="width: 100%; max-width: 1200px; margin: 20px auto; text-align: center;">
				<h1 style="color: #6a5d4d; margin-bottom: 20px;">Video
					Testimonials</h1>
				<div
					style="display: flex; gap: 20px; padding-bottom: 10px; margin-right: 60px;">
					<div
						style="background-color: #fff; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); flex: 0 0 30%; padding: 10px; display: flex; flex-direction: row; align-items: center; max-width: 900px; margin-right: 20px;">
						<div style="width: 40%; border-radius: 10px;">
							<video src="img/vd1.mp4" controls
								style="width: 200px; border-radius: 10px;"></video>
						</div>
						<div
							style="text-align: left; padding: 10px; font-size: 14px; color: #333; width: 50%; margin-left: 70px;">
							<img
								src="img/419733359_739452124789440_1903023108252471893_n.jpg"
								alt="Avatar"
								style="width: 50px; height: 50px; border-radius: 100%; margin-top: 10px;">
							<p style="font-weight: bold;">Julena Hayes</p>
							<p>Skin Type: Dry/Sensitive</p>
							<p>3 Oct, 2023</p>

							<p style="color: #555;">Lorem ipsum dolor sit amet,
								consectetur adipiscing elit. Nullam vehicula, nibh et vehicula
								viverra, metus nunc auctor erat, vitae ullamcorper justo lorem a
								ante.</p>
						</div>
					</div>

					<div
						style="background-color: #fff; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); flex: 0 0 30%; padding: 10px; display: flex; flex-direction: row; align-items: center; max-width: 900px; margin-right: 20px;">
						<div style="width: 40%; border-radius: 10px;">
							<video src="img/vd1.mp4" controls
								style="width: 200px; border-radius: 10px;"></video>
						</div>
						<div
							style="text-align: left; padding: 10px; font-size: 14px; color: #333; width: 50%; margin-left: 70px;">
							<img
								src="img/419733359_739452124789440_1903023108252471893_n.jpg"
								alt="Avatar"
								style="width: 50px; height: 50px; border-radius: 100%; margin-top: 10px;">
							<p style="font-weight: bold;">Mia Robertson</p>
							<p>Skin Type: Combination</p>
							<p>12 Nov, 2023</p>
							<p style="color: #555;">Lorem ipsum dolor sit amet,
								consectetur adipiscing elit. Nullam vehicula, nibh et vehicula
								viverra, metus nunc auctor erat, vitae ullamcorper justo lorem a
								ante.</p>
						</div>
					</div>

					<div
						style="background-color: #fff; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); flex: 0 0 30%; padding: 10px; display: flex; flex-direction: row; align-items: center; max-width: 900px; margin-right: 20px;">
						<div style="width: 40%; border-radius: 10px;">
							<video src="img/vd1.mp4" controls
								style="width: 200px; border-radius: 10px;"></video>
						</div>
						<div
							style="text-align: left; padding: 10px; font-size: 14px; color: #333; width: 50%; margin-left: 70px;">
							<img
								src="img/419733359_739452124789440_1903023108252471893_n.jpg"
								alt="Avatar"
								style="width: 50px; height: 50px; border-radius: 100%; margin-top: 10px;">
							<p style="font-weight: bold;">Emily Clark</p>
							<p>Skin Type: Oily</p>
							<p>5 Dec, 2023</p>
							<p style="color: #555;">Lorem ipsum dolor sit amet,
								consectetur adipiscing elit. Nullam vehicula, nibh et vehicula
								viverra, metus nunc auctor erat, vitae ullamcorper justo lorem a
								ante.</p>
						</div>
					</div>

				</div>
			</div>
		</div>

	</div>
	<hr style="border-top: 1px solid #e6b7b2;">
	<div class="container">

		<div class="col-md-12">
			<h3
				style="text-align: left; font-family: helvetica; margin-top: 20px; margin-bottom: 20px;">
				Customer Reviews</h3>
			<div style="border-top: 1px solid #e6b7b2;">
				<div
					style="display: flex; align-items: flex-start; margin-top: 20px;">
					<img src="img/419733359_739452124789440_1903023108252471893_n.jpg"
						alt="Customer Avatar"
						style="width: 50px; height: 50px; border-radius: 100%;">
					<div style="margin-left: 10px;">
						<h4>Julena Hayes</h4>
						<p>Skin Type: Dry/Sensitive</p>
						<p>3 Oct, 2023</p>
						<p style="color: #f5b50a;">★★★★★</p>
						<p>This product is amazing! My skin feels so soft and
							hydrated...</p>
					</div>
				</div>
				<!-- Lặp lại phần tử cho các bình luận khác -->
			</div>
		</div>

	</div>
	<hr style="border-top: 1px solid #e6b7b2;">
	<!-- Button trigger modal -->
	<button type="button" class="btn ms-5 mb-5" data-bs-toggle="modal"
		data-bs-target="#exampleModal"
		style="background-color: #8f7344; color: #fff;">Đánh giá</button>

	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="review-form-container">
					<form id="review_form">
						<div class="form-row">
							<div class="form-group">
								<label for="name">Name</label> <input type="text" id="name"
									class="form_input" placeholder="Enter your name">
							</div>
							<div class="form-group">
								<label for="email">Email</label> <input type="email" id="email"
									class="form_input" value="john.smith@example.com">
							</div>
						</div>
						<div>
							<label for="rating">Rating</label>
							<ul class="user_star_rating">
								<li onclick="selectRating(0)"><i>☆</i></li>
								<li onclick="selectRating(1)"><i>☆</i></li>
								<li onclick="selectRating(2)"><i>☆</i></li>
								<li onclick="selectRating(3)"><i>☆</i></li>
								<li onclick="selectRating(4)"><i>☆</i></li>
							</ul>

						</div>
						<div>
							<label for="title">Title of Review</label> <input type="text"
								id="title" class="form_input"
								placeholder="Give your review a title">
						</div>
						<div>
							<label for="review">How was your overall experience?</label>
							<textarea id="review" class="input_review" rows="10"></textarea>
						</div>
						<div>
							<label>Skin Type</label>
							<div class="skin-type">
								<label><input type="checkbox" name="skin-type"
									value="combination"> Combination</label> <label><input
									type="checkbox" name="skin-type" value="normal"> Normal</label>
								<label><input type="checkbox" name="skin-type"
									value="dry"> Dry</label> <label><input type="checkbox"
									name="skin-type" value="oily"> Oily</label>
							</div>
						</div>
						<div class="form-actions">
							<label for="add_photos" class="add-photos">Add Photos</label> <input
								type="file" id="add_photos" multiple style="display: none;"
								onchange="previewImages(event)">
							<div id="photos_preview" class="photos-preview"></div>
							<button type="submit" class="review_submit_btn">Submit</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

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
	<script src="angular.min.js"></script>
	<script src="angular-route.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/a9d08c2105.js"
		crossorigin="anonymous"></script>
	<script>
    function changeImage(src) {
        document.getElementById('main-image').src = src;
    }

    function selectSize(button) {
        const buttons = document.querySelectorAll('.size-btn');
        buttons.forEach(btn => btn.classList.remove('selected'));
        button.classList.add('selected');

        // Lấy giá từ thuộc tính data-price của nút
        const price = button.getAttribute("data-price");
        // Format giá thành VNĐ
        const formattedPrice = new Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' }).format(price);
        // Cập nhật giá hiển thị
        document.getElementById("price").innerText = formattedPrice;
        
        // Lấy sizeId
        const sizeId = button.getAttribute("data-size-id");
        // Đặt sizeId vào input ẩn để gửi đi trong form
        document.querySelector("input[name='sizeId']").value = sizeId;
    }



    function decreaseQuantity() {
        const quantityInput = document.getElementById('quantity');
        let quantity = parseInt(quantityInput.value);
        if (quantity > 1) {
            quantity--;
            quantityInput.value = quantity;
        }
    }

    function increaseQuantity() {
        const quantityInput = document.getElementById('quantity');
        let quantity = parseInt(quantityInput.value);
        quantity++;
        quantityInput.value = quantity;
    }

    function previewImages(event) {
        const previewContainer = document.getElementById('photos_preview');
        previewContainer.innerHTML = ''; // Clear previous previews

        const files = event.target.files;
        for (let i = 0; i < files.length; i++) {
            const file = files[i];
            if (!file.type.startsWith('image/')) {
                continue;
            }

            const img = document.createElement('img');
            img.src = URL.createObjectURL(file);
            img.style.width = '50px';
            img.style.height = '50px';
            img.style.marginRight = '5px';
            img.style.marginBottom = '5px';
            img.style.objectFit = 'cover';
            previewContainer.appendChild(img);
        }
    }

    let selectedRating = -1;

    function selectRating(starIndex) {
        selectedRating = starIndex;
        const stars = document.querySelectorAll('.user_star_rating li i');
        stars.forEach((star, index) => {
            if (index <= starIndex) {
                star.classList.add('selected');
            } else {
                star.classList.remove('selected');
            }
        });
    }

    window.onload = function () {
        const stars = document.querySelectorAll('.user_star_rating li i');
        stars.forEach((star, index) => {
            star.addEventListener('click', function () {
                selectRating(index);
            });
        });
    };
    window.onload = function() {
        // Get the first size button
        const firstSizeButton = document.querySelector('.size-btn');

        // Trigger the click event on the first size button to update the price
        if (firstSizeButton) {
            firstSizeButton.click();
        }
    };


</script>



</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="/css/index.css" rel="stylesheet" />
    <link href="/css/about.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>About</title>
    <link rel="stylesheet" href="style.css">
    <style>
        .fade-in {
            opacity: 0;
            transition: opacity 1s ease-in;
        }

        .fade-in.visible {
            opacity: 1;
        }
    </style>
</head>

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
    <nav class="navbar navbar-expand-lg" data-bs-theme="dark" style="background-color: #a8915f">
        <div class="container-fluid">

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="container collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav  col-md-3 text-center justify-content-start">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#!list" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false" style="color: aliceblue;">
                            THƯƠNG HIỆU
                        </a>
                        <ul class="dropdown-menu bg-light">
                            <ul class="list-unstyled">
                                <li><a class="dropdown-item" href="#">Nổi bật</a></li>
                                <li><a class="dropdown-item" href="#pills-sale">Madagascar Centalla</a></li>
                                <li><a class="dropdown-item" href="#">Hành trình của chúng tôi</a></li>
                                <li><a class="dropdown-item" href="#">SKIN1004 Blog</a></li>
                            </ul>

                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#!list" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false" style="color: aliceblue;">
                            SẢN PHẨM
                        </a>
                        <ul class="dropdown-menu bg-light">
                            <ul class="list-unstyled">
                                <li><a class="dropdown-item" style=" font-weight: bold;
										font-size: 1.2em;
										color: #000;" href="#">Nổi bật</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li><a class="dropdown-item" href="#pills-sale">Tất cả</a></li>
                                <li><a class="dropdown-item" href="#pills-sale">Hàng mới</a></li>
                                <li><a class="dropdown-item" href="#">Sản phẩm tốt</a></li>
                                <li><a class="dropdown-item" href="#">SET</a></li>
                            </ul>
                            <ul class="list-unstyled">
                                <li><a class="dropdown-item" style=" font-weight: bold;
										font-size: 1.2em;
										color: #000;" href="#">Loại sản phẩm</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li><a class="dropdown-item" href="list.html">Sửa rửa mặt</a></li>
                                <li><a class="dropdown-item" href="list.html">Toner/Mist</a></li>
                                <li><a class="dropdown-item" href="list.html">Serum</a></li>
                                <li><a class="dropdown-item" href="list.html">Kem dưỡng ẩm</a></li>
                                <li><a class="dropdown-item" href="list.html">Kem chống nắng</a></li>
                                <li><a class="dropdown-item" href="list.html">Mặt nạ</a></li>
                                <li><a class="dropdown-item" href="list.html">Chăm sóc đặc biệt</a></li>
                            </ul>
                            <ul class="list-unstyled">
                                <li><a class="dropdown-item" style=" font-weight: bold;
										font-size: 1.2em;
										color: #000;" href="#">Loại da</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li><a class="dropdown-item" href="#!list.html">Nhạy cảm</a></li>
                                <li><a class="dropdown-item" href="list.html">Da khô</a></li>
                                <li><a class="dropdown-item" href="list.html">Tổ hợp</a></li>
                                <li><a class="dropdown-item" href="list.html">Da dầu</a></li>
                                <li><a class="dropdown-item" href="list.html">Da mụn</a></li>
                            </ul>
                            <ul class="list-unstyled">
                                <li><a class="dropdown-item" style=" font-weight: bold;
										font-size: 1.2em;
										color: #000;" href="#">Bộ sưu tập</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li><a class="dropdown-item" href="#!list.html">Rau má</a></li>
                                <li><a class="dropdown-item" href="list.html">Hyalu-cica</a></li>
                                <li><a class="dropdown-item" href="list.html">Làm sáng tông da</a></li>
                                <li><a class="dropdown-item" href="list.html">Poremizing</a></li>
                                <li><a class="dropdown-item" href="list.html">Trà-Trica</a></li>
                                <li><a class="dropdown-item" href="list.html">Probio-Cica</a></li>

                            </ul>
                            <ul class="list-unstyled">
                                <li><a class="dropdown-item" style=" font-weight: bold;
										font-size: 1.2em;
										color: #000;" href="#">Chức năng</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li><a class="dropdown-item" href="#!list.html">Chống nhăn</a></li>
                                <li><a class="dropdown-item" href="list.html">Calming</a></li>
                                <li><a class="dropdown-item" href="list.html">Dưỡng ẩm</a></li>
                                <li><a class="dropdown-item" href="list.html">Giảm đốm đen</a></li>
                                <li><a class="dropdown-item" href="list.html">Se khít lỗ chân lông</a></li>
                                <li><a class="dropdown-item" href="list.html">Nourishing</a></li>
                                <li><a class="dropdown-item" href="list.html">Tẩy tế bào chết</a></li>
                                <li><a class="dropdown-item" href="list.html">Khôi phục da</a></li>
                                <li><a class="dropdown-item" href="list.html">Mụn trứng ca/ Khuyết điểm</a></li>
                                <li><a class="dropdown-item" href="list.html">Sun care</a></li>
                                <li><a class="dropdown-item" href="list.html">Tone-up</a></li>
                            </ul>

                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#!list" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false" style="color: aliceblue;">
                            FLAGSHIP
                        </a>
                        <ul class="dropdown-menu bg-light">
                            <ul class="list-unstyled">
                                <li><a class="dropdown-item" href="#pills-sale">Kinh nghiệm</a></li>
                                <li><a class="dropdown-item" href="#pills-sale">Kiểm tra da</a></li>
                            </ul>
                        </ul>
                    </li>

                </ul>
                <ul class="navbar-nav col-md-1 text-center d-flex icon justify-content-center"
                    style="margin-left: 5px; width: 38%;">
                    <a href="#" class="col-md-1 text-center"><img src="img/logo.webp" alt=""></a>
                </ul>
                <ul class="navbar-nav col-md-4 text-center d-flex icon justify-content-end" style="margin-left: 2px;">
                    <li class="nav-item">
                        <a class="btn nav-link" href="#!list" style="color: aliceblue;">CỬA HÀNG</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn nav-link" href="" style="color: aliceblue;">
                            <i class="fa-regular fa-user"></i></a>
                    </li>
                    <li class="nav-item">
                        <a class="btn nav-link" href="" style="color: aliceblue;">
                            <i class="fa-solid fa-magnifying-glass"></i></a>


                    </li>
                    <li class="nav-item">
                        <a class="btn nav-link" href="#!cart" style="color: aliceblue;">
                            <i class="fa-solid fa-bag-shopping"></i>
                            <span class="position-absolute badge-icon top-0 rounded-pill ms-3"
                                ng-bind="cartCount"></span></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!--End Nav -->

    <header>
        <div class="img">
            <img src="img/nen.png">
            <div class="overlay"
                style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); color: white;">
                <h1 style="font-size: 3rem;">About SKIN1004</h1>
            </div>
        </div>
    </header>
    <div class="wrapper">
        <div id="header">
            <div class="nav-header">
                <div class="nav-left">
                    <ul class="ul-nav">
                    </ul>
                </div>

            </div>
            <div class="about-container">

                <div class="info-ceo fade-in">
                    <div class="left-info">
                        <img src="img/hinh1.jpg" class="img-ceo" alt="" />
                    </div>
                    <div class="right-info">
                        <h3 class="name-ceo">SKIN1004 BRAND OVERVIEW</h3>
                        <p class="review-ceo">
                            SKIN1004 is an award-winning hypoallergenic & natural skincare brand from Korea. Our main
                            ingredient,
                            CENTELLA ASIATICA, originating from the untouched nature of MADAGASCAR, is one of the
                            world's finest
                            Centella.
                            Our products are special in that all of our products are infused with high quality Centella
                            extract. All
                            products are very mild, soothing, extra-light and non comedogenic to provide breathable,
                            non-sticky, and
                            soft finish.
                            Our core value is to distribute our well-crafted natural skincare products at affordable
                            prices. We are
                            proud to be a clean beauty brand and have acquired certifications to prove so, such as CGMP,
                            Beauty
                            without Bunnies, cruelty-free & vegan through PETA, etc. We will always continue to practice
                            ethical and
                            clean beauty business practices.
                        </p>
                    </div>
                </div>
                <div class="main-content-about fade-in">
                    <div class="history-store">
                        <div class="content-left">
                            <h4 class="title-history">Introducing SKIN1004</h4>
                            <p class="history-text">
                                When you pronounce “1004” in Korean, it sounds the same way as the word “Angel.” “천사” or
                                “Cheon-Sa” to
                                be exact. Which is why we often call ourselves "Skin Angels”
                                SKIN1004 is also an award-winning hypoallergenic & natural skincare brand from Korea.
                                Our main
                                ingredient, CENTELLA ASIATICA, originating from the untouched nature of MADAGASCAR, is
                                one of the
                                world's finest Centella.
                                Our products are special in that all of our products are infused with high quality
                                Centella extract. All
                                products are very mild, soothing, extra-light and non comedogenic to provide breathable,
                                non-sticky, and
                                soft finish.
                                Our core value is to distribute our well-crafted natural skincare products at affordable
                                prices. We are
                                proud to be a clean beauty brand and have acquired certifications to prove so, such as
                                CGMP, Beauty
                                without Bunnies, cruelty-free & vegan through PETA, etc. We will always continue to
                                practice ethical and
                                clean beauty business practices.
                            </p>
                        </div>
                        <div class="content-right">
                            <img src="img/hinh2.jpg" class="img-store" alt="" />
                        </div>
                    </div>
                    <div class="history-store fade-in">
                        <div class="content-left">
                            <img src="img/hinh3.jpg" class="img-store" alt="" />
                        </div>
                        <div class="content-right">
                            <h3 class="title-history">THE BEST INGREDIENTS COME FROM THE BEST PLACE</h3>
                            <p class="history-text">
                                We deliver the finest quality of pure Centella Asiatica Extract to create the best
                                skincare products.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="main-content-about fade-in">
                    <div class="history-store">
                        <div class="content-left">
                            <h4 class="title-history">PURSUING PERFECTION</h4>
                            <p class="history-text">
                                We've carefully selected the finest raw ingredients, and deliver you
                                the untouched nature, its purity and freshness, to your skin.
                            </p>
                        </div>
                        <div class="content-right">
                            <img src="img/hinh4.jpg" class="img-store" alt="" />
                        </div>
                    </div>
                </div>

            </div>
        </div>


        <!-- footer -->
        <footer class="footer-contact" style="background-color: #907344; height: 500px;" class="mt-4">
            <div class="container">
                <div class="row Footer__Inner">
                    <div class="col-md-4 " style="margin-top: 30px;">

                        <h5 class="mb-3">SKIN1004</h5>
                        <p class="mb-3">Whatever touches the skin must be pure. Let us deliver you the untouched
                            nature and its purity to your skin, to help you discover your best skin.</p>
                        <p><strong>Customer Service:</strong> hello@skin1004korea.com</p>
                        <p><strong>Wholesale Inquiry:</strong> sales@skin1004korea.com</p>
                    </div>
                    <div class="col-md-2" style="margin-top: 30px;">
                        <h5 class="footer-blog mb-3">HELP</h5>
                        <ul class="listLink-item">
                            <li class="iconList"><a href="">SKIN1004 Blog</a></li> <br>
                            <li class="iconList"><a href="">Stores</a></li> <br>
                            <li class="iconList"><a href="">Become A Partner</a></li> <br>
                            <li class="iconList"><a href="">FAQs</a></li> <br>
                            <li class="iconList"><a href="">Contact US</a></li> <br>
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
                        <p>Stay up to date with our newest releases, exclusive offers, and giveaways straight to
                            your inbox.
                        </p>
                        <form action="">
                            <input type="text" placeholder="Enter your email address" class="border-0"
                                style="height: 40px; width: 300px;"> <br>
                            <button class="mt-2 w-50 submit">SUBSCRIBE</button>
                        </form>
                    </div>
                </div>
                <div class="social-list" style="font-size: 35px;">
                    <ul class="social d-flex">
                        <li class="iconList">
                            <a href=""><i class="fa-brands fa-facebook"></i></a>
                        </li>
                        <li class="iconList">
                            <a href=""><i class="fa-brands fa-instagram"></i></a>
                        </li>
                        <li class="iconList">
                            <a href=""><i class="fa-brands fa-pinterest"></i></a>
                        </li>
                        <li class="iconList">
                            <a href=""><i class="fa-brands fa-twitter"></i></a>
                        </li>
                        <li class="iconList">
                            <a href=""><i class="fa-brands fa-youtube"></i></a>
                        </li>
                    </ul>
                </div>
                <div class="footer-aside mb-5">
                    <p>
                        Craver Corporation <br>
                        CEO: Sohyung Lee <br>
                        Email: hello@skin1004korea.com <br>
                        Company Location: Milim tower 12F, 14, Teheran-ro 4-gil, Gangnam-gu, Seoul, Republic of
                        Korea
                        <br>
                        Company registration number: 261-81-14845 <br>
                        <br>
                        © SKIN1004
                    </p>
                </div>
            </div>

        </footer>
        <!-- end -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://kit.fontawesome.com/d584f42692.js" crossorigin="anonymous"></script>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
            </script>
        <script>
            document.addEventListener("DOMContentLoaded", function () {
                const elements = document.querySelectorAll('.fade-in');

                function checkVisibility() {
                    elements.forEach(el => {
                        const rect = el.getBoundingClientRect();
                        if (rect.top <= window.innerHeight && rect.bottom >= 0) {
                            el.classList.add('visible');
                        }
                    });
                }

                window.addEventListener('scroll', checkVisibility);
                checkVisibility();
            });
        </script>
</body>

</html>
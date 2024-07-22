<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blog Layout</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<link rel="stylesheet" href="style.css">

<style>


    .blog-section {
        padding: 2rem 0;
        text-align: center;
    }

    .blog-title {
        font-size: 2rem;
        margin-bottom: 2rem;
    }

    .blog-card {
        border: none;
        transition: transform 0.3s;
        height: 500px;
    }

    .blog-card:hover {
        transform: scale(1.05);
    }

    .blog-card img {
        border-radius: 8px;
    }

    .blog-card h5 {
        font-size: 1.25rem;
        margin-top: 1rem;
    }

    .blog-card p {
        font-size: 1rem;
        color: #333;
    }

    .blog-card .read-more {
        color: #007bff;
        text-decoration: none;
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
    <div div class="container blog-section">
        <h1 class="blog-title">SKIN1004 Blog</h1>
        <div class="row">
            <div class=" col-md-4 mb-4">
                <div class="card blog-card border-0 rounded-0">
                    <img src="img/1.webp" class="card-img-top rounded-0" alt="Blog img 1">
                    <div class="">
                        <h5 class="card-title">SKIN1004 Madagascar Centella Hyalu-Cica Blue Serum Review</h5>
                        <p class="card-text">Centella Asiatica in skincare is not going anywhere anytime soon. And
                            if you think of Centella, SKIN1004 is definitely the K-Beauty brand that will...</p>
                        <a href="#" class="read-more">Read more</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card blog-card border-0 rounded-0">
                    <img src="img/2.webp" class="card-img-top rounded-0" alt="Blog img 2">
                    <div class="card-body">
                        <h5 class="card-title">SKIN1004 Madagascar Centella Toning Toner | Review</h5>
                        <p class="card-text">I’ve said it before and I’ll say it again. I love centella asiatica as
                            a skincare ingredient and I’m always happy to try out products with it. N...</p>
                        <a href="#" class="read-more">Read more</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card blog-card border-0 rounded-0">
                    <img src="img/3.webp" class="card-img-top border-0 rounded-0" alt="Blog img 3">
                    <div class="card-body">
                        <h5 class="card-title">SKIN1004 Zombie Pack Review</h5>
                        <p class="card-text">This is a sponsored post with affiliate links. All opinions are my own.
                            If you are into skincare at all, you have probably heard of SKIN...</p>
                        <a href="#" class="read-more">Read more</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class=" col-md-4 mb-4">
                <div class="card blog-card border-0 rounded-0">
                    <img src="img/4.webp" class="card-img-top rounded-0" alt="Blog img 1">
                    <div class="">
                        <h5 class="card-title">SKIN1004 HYALU-CICA WATER-FIT SUN SERUM REVIEW</h5>
                        <p class="card-text">SKIN1004 Hyalu-Cica Water-fit Sun Serum Review Ready to discover your
                            new favorite Korean sunscreen? Summer may be over, but we kno...</p>
                        <a href="#" class="read-more">Read more</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card blog-card border-0 rounded-0">
                    <img src="img/5.webp" class="card-img-top rounded-0" alt="Blog img 2">
                    <div class="card-body">
                        <h5 class="card-title">SKIN1004 MADAGASCAR CENTELLA HYALU-CICA WATER-FIT SUN SERUM SPF50
                            REVIEW</h5>
                        <p class="card-text">Hi everyone! If you’ve been looking for a good sunscreen to wear by
                            itself or under makeup - I’ve got a new holy grail recommendation for you! I...</p>
                        <a href="#" class="read-more">Read more</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card blog-card border-0 rounded-0">
                    <img src="img/6.webp" class="card-img-top border-0 rounded-0" alt="Blog img 3">
                    <div class="card-body">
                        <h5 class="card-title">SKIN1004 MADAGASCAR CENTELLA AMPOULE REVIEW</h5>
                        <p class="card-text">Does your skin get noticeably more irritated when you’re wearing face
                            makeup? Maybe it’s a bit of the removal or cleansing process for me but I c...</p>
                        <a href="#" class="read-more">Read more</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class=" col-md-4 mb-4">
                <div class="card blog-card border-0 rounded-0">
                    <img src="img/7.webp" class="card-img-top rounded-0" alt="Blog img 1">
                    <div class="">
                        <h5 class="card-title">SPONSORED: THE BEST OF SKIN1004</h5>
                        <p class="card-text">Centella Asiatica in skincare is not going anywhere anytime soon. And
                            if you think of Centella, SKIN1004 is definitely the K-Beauty brand that will...</p>
                        <a href="#" class="read-more">Read more</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card blog-card border-0 rounded-0">
                    <img src="img/8.webp" class="card-img-top rounded-0" alt="Blog img 2">
                    <div class="card-body">
                        <h5 class="card-title">SKIN1004 Madagascar Centella Toning Toner | Review</h5>
                        <p class="card-text">I’ve said it before and I’ll say it again. I love centella asiatica as
                            a skincare ingredient and I’m always happy to try out products with it. N...</p>
                        <a href="#" class="read-more">Read more</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card blog-card border-0 rounded-0">
                    <img src="img/9.webp" class="card-img-top border-0 rounded-0" alt="Blog img 3">
                    <div class="card-body">
                        <h5 class="card-title">SKIN1004 MADAGASCAR CENTELLA WATERGEL SHEET AMPOULE MASK | REVIEW
                        </h5>
                        <p class="card-text">Hi everyone! I’m back with another SKIN1004 product to review. This
                            time it’s a sheet mask and one I’m most excited to talk about from what was sen...</p>
                        <a href="#" class="read-more">Read more</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class=" col-md-4 mb-4">
                <div class="card blog-card border-0 rounded-0">
                    <img src="img/10.webp" class="card-img-top rounded-0" alt="Blog img 1">
                    <div class="">
                        <h5 class="card-title">SKIN1004 SUNSCREEN REVIEW COMPARISON CENTELLA VS HYALU</h5>
                        <p class="card-text">Comparison: Skin1004 Centella Sunscreen and Skin1004 Hyalu Cica
                            Sunscreen It is no secret that Asian sunscreen is the bomb. I’m sorry, western s...</p>
                        <a href="#" class="read-more">Read more</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card blog-card border-0 rounded-0">
                    <img src="img/11.webp" class="card-img-top rounded-0" alt="Blog img 2">
                    <div class="card-body">
                        <h5 class="card-title">[REVIEW] SKIN1004 MADAGASCAR CENTELLA TONE BRIGHTENING TONE-UP
                            SUNSCREEN</h5>
                        <p class="card-text"> I have already reviewed two sunscreens from SKIN1004 . I plan to do a
                            comparison post soon all the Skin1004 Sunscreens in the coming few weeks. ...</p>
                        <a href="#" class="read-more">Read more</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card blog-card border-0 rounded-0">
                    <img src="img/12.webp" class="card-img-top border-0 rounded-0" alt="Blog img 3">
                    <div class="card-body">
                        <h5 class="card-title">A COMPLETE AND HONEST REVIEW OF SKIN1004’S MADAGASCAR CENTELLA LINE
                        </h5>
                        <p class="card-text">This post may contain affiliate links, which means I'll earn a
                            commission should you choose to make a purchase through this link. This is at no ext...
                        </p>
                        <a href="#" class="read-more">Read more</a>
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

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
        </script>
    <script src="https://kit.fontawesome.com/a9d08c2105.js" crossorigin="anonymous"></script>

</body>

</html>
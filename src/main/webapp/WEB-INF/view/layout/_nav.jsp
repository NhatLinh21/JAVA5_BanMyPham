<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
                    <li class="nav-item">
                        <a class="nav-link dropdown-toggle" href="/listpage" role="button"
                            aria-expanded="false" style="color: aliceblue;">
                            SẢN PHẨM
                        </a>
                        
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
                    <a href="/" class="col-md-1 text-center"><img src="img/logo.webp" alt=""></a>
                </ul>
                <ul class="navbar-nav col-md-4 text-center d-flex icon justify-content-end" style="margin-left: 2px;">
                    <li class="nav-item">
                        <a class="btn nav-link" href="/" style="color: aliceblue;">CỬA HÀNG</a>
                    </li>
                   <li class="nav-item"><a class="btn nav-link" href="/account"
						style="color: aliceblue;"> <i class="fa-regular fa-user"></i> <b style="font-size: 8px"> ${currentUser.tenKH}</b></a>
					</li>
                   <li class="nav-item"><a class="btn nav-link" id="searchButton"
						style="color: aliceblue;"> <i class="fas fa-search"></i>
					</a>
						<form id="searchForm" class="search-form" action="/listpage"
							method="post">
							<input name="keywords" value="${keywords}"
								placeholder="Search..." id="searchInput">
							<button>Search</button>
						</form>
						</li>
                    <li class="nav-item"><a class="btn nav-link" href="/cart/view"
						style="color: aliceblue;"> <i class="fa-solid fa-bag-shopping"></i>
							<span
							class="position-absolute badge-icon top-0 rounded-pill ms-3"
							ng-bind="cartCount"></span></a></li>
                </ul>
            </div>
        </div>
    </nav>
</body>
</html>
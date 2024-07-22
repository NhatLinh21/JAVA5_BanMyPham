    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up</title>
</head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="bootstrap-5.3.2-dist/css/bootstrap.min.css">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="login.css">
<body class="img js-fullheight">
  <section class="ftco-section" style="font-size: 100;">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-md-6 text-center mb-5">
          <h2 class="heading-section">Sign Up</h2>
        </div>
      </div>
      <div class="row justify-content-center">
        <div class="col-md-6 col-lg-4">
          <div class="login-wrap p-0">
            <form action="/dangki" method="post" class="signin-form">
              <label for="tenkh" class="lb"><strong>Họ Và Tên</strong></label>
              <div class="form-group">
                <input type="text" name="tenkh" class="form-control" placeholder="Họ Và Tên" required>
              </div>
              <label for="email" class="lb"><Strong>Email</Strong></label>
              <div class="form-group">
                <input type="email" name="email" class="form-control" placeholder="Email" required>
              </div>
              <label for="sdt" class="lb"><strong>Số Điện Thoại</strong></label>
              <div class="form-group">
                <input type="text" name="sdt" class="form-control" placeholder="Số Điện Thoại" required>
              </div>
              <label for="pass" class="lb"> <strong>Mật Khẩu</strong></label>
              <div class="form-group">
                <input id="password-field" name="pass" type="password" class="form-control" placeholder="Mật Khẩu" required>
                <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
              </div>
              <label for="matkhau2" class="lb"><strong>Nhập Lại Mật Khẩu</strong></label>
              <div class="form-group">
                <input id="password-field" type="password" class="form-control" placeholder="Nhập Lại Mật Khẩu" required>
                <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
              </div>
              <div class="form-group">
                <button type="submit" class="form-control "><b>Sign Up</b></button>
              </div>
            </form>
            <p class="w-100 text-center">&mdash; Or Sign In With &mdash;</p>
            <div class="social d-flex text-center">
              <a href="#" class="rounded"><i class="fa-brands fa-facebook" style="color: #f7f7f8; font-size: 40px;"></i></a>
              <p class="w-100 text-center"> <b>Or</b></p>
              <a href="#" class="rounded"><i class="fa-brands fa-google" style="color: #f7f7f8; font-size: 40px;"></i></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>
  <script defer src="https://static.cloudflareinsights.com/beacon.min.js/vedd3670a3b1c4e178fdfb0cc912d969e1713874337387"
    integrity="sha512-EzCudv2gYygrCcVhu65FkAxclf3mYM6BCwiGUm6BEuLzSb5ulVhgokzCZED7yMIkzYVg65mxfIBNdNra5ZFNyQ=="
    data-cf-beacon='{"rayId":"886a36f18a278b3f","version":"2024.4.1","token":"cd0b4b3a733644fc843ef0b185f98241"}'
    crossorigin="anonymous"></script>
</body>
<script src="https://kit.fontawesome.com/66f0085f44.js" crossorigin="anonymous"></script>
</html>

    

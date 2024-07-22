    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sign In</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="bootstrap-5.3.2-dist/css/bootstrap.min.css">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="login.css">
</head>
<body class="img js-fullheight">
    <section class="ftco-section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6 text-center mb-5">
                    <h2 class="heading-section">Sign in</h2>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-md-6 col-lg-4">
                    <div class="login-wrap p-0">
                        <h3 class="mb-4 text-center">Have an account?</h3>
                        <form:form action="/signin" method="post" modelAttribute="userFormBacking" class="signin-form">
                            <div class="form-group">
                                <label for="email" class="lb"><strong>Email</strong></label>
                                <form:input path="email" type="text" class="form-control" placeholder="Email" required="required"/>
                                <form:errors path="email" cssClass="text-danger"/>
                            </div>
                            <div class="form-group">
                                <label for="pass" class="lb"><strong>Password</strong></label>
                                <form:password path="pass" class="form-control" placeholder="Password" required="required"/>
                                <form:errors path="pass" cssClass="text-danger"/>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="form-control"><b>Sign In</b></button>
                            </div>
                            <div class="form-group d-md-flex">
                                <div class="w-50">
                                    <label class="checkbox-wrap checkbox-primary">Remember Me
                                        <input type="checkbox" checked>
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <div class="w-50 text-md-right">
                                    <a href="/forgotpass" style="color: #fff">Forgot Password</a>
                                </div>
                            </div>
                            <c:if test="${not empty error}">
                                <h5 style="color:white;"> ${error}</h5>
                            </c:if>
                            <!-- Hidden field to indicate user type -->
                            
                        </form:form>
                        <p class="w-100 text-center">&mdash; Or Sign In With &mdash; </p>
                        <p class="dangki w-100 text-center"><a href="/dangki">Create Account</a></p>
                        <div class="social d-flex text-center">
                            <a href="#" class="rounded"><i class="fa-brands fa-facebook" style="color: #e8eaed; font-size: 40px;"></i></a>
                            <p class="w-100 text-center"><b>Or</b></p>
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
    <script defer src="https://static.cloudflareinsights.com/beacon.min.js" integrity="sha512-EzCudv2gYygrCcVhu65FkAxclf3mYM6BCwiGUm6BEuLzSb5ulVhgokzCZED7yMIkzYVg65mxfIBNdNra5ZFNyQ==" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/66f0085f44.js" crossorigin="anonymous"></script>
</body>
</html>

    

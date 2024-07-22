<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
int shippingFee = 35000;
%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Thanh toán</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
<link rel="stylesheet" href="style.css">
</head>

<body ng-app="myApp" ng-controller="myCtrl">
	<nav class="navbar navbar-expand-lg bg-body-tertiary ">
		<div class="container-fluid"
			style="margin-left: 40px; margin-right: 40px;">
			<a class="navbar-brand" href="/"><img
				src="/img/logocheckout.webp" alt=""></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
					<i class="fa-solid fa-bag-shopping"></i>
				</ul>

			</div>
		</div>
	</nav>
	<div class="container mt-5">
		<div class="cart">
			<div class="pay-cart">
				<div class="pay">
					<div class="container">
						<div class="row mt-0">
							<div class="col-md-6 mb-5 mb-md-0">
								<h2 class="h3 mb-3 text-black">Billing Details</h2>
								<div class="form-group row" ng-form="billingForm">
									<div class="col-md-6">
										<label for="validationCustom01" class="text-black">Họ<span
											class="text-danger">*</span></label> <input type="text"
											class="form-control" id="validationCustom01" name="fname"
											placeholder="" ng-model="fname" required>
										<!-- <span class="error-message"
                                                ng-show="billingForm.fname.$error.required && billingForm.fname.$touched"
                                                style="color: red;">Vui lòng nhập họ</span> -->
									</div>
									<div class="col-md-6 mb-3">
										<label for="lname" class="text-black">Tên<span
											class="text-danger">*</span></label> <input type="text"
											class="form-control" id="lname" name="lname" ng-model="lname"
											required>

									</div>
								</div>
								<div class="form-group mb-3 mt-0">
									<label for="city" class="text-black">Tỉnh/ Thành phố<span
										class="text-danger">*</span></label> <select class="form-select"
										style="height: 50px;" ng-model="city"
										ng-options="y.Name for (x,y) in cities" required>
										<option value="" selected>Tỉnh/ Thành phố</option>
									</select>

								</div>
								<div class="form-group row mb-3">
									<div class="col-md-12">
										<label for="district" class="text-black">Quận/ Huyện<span
											class="text-danger">*</span></label> <select class="form-select "
											style="height: 50px;" ng-model="district"
											ng-options="y.Name for (x,y) in city.Districts" required>
											<option value="" selected>Quận/ huyện</option>
										</select>

									</div>
								</div>
								<div class="form-group row mb-3">
									<div class="col-md-12">
										<label for="ward" class="text-black">Phường/ Xã<span
											class="text-danger">*</span></label> <select class="form-select"
											style="height: 50px;" ng-model="ward"
											ng-options="y.Name for (x,y) in district.Wards" required>
											<option value="" selected>Phường/xã</option>
										</select>

									</div>
								</div>
								<div class="form-group row">
									<div class="col-md-12">
										<label for="address" class="text-black">Địa chỉ<span
											class="text-danger">*</span></label> <input type="text"
											class="form-control" id="address" name="address"
											placeholder="Dịa chỉ cụ thể" ng-model="address" required>

									</div>
								</div>
								<div class="form-group row">
									<div class="col-md-12">
										<label for="address" class="text-black">Số ĐT<span
											class="text-danger">*</span></label> <input type="text"
											class="form-control" id="phone" name="phone" placeholder=""
											ng-model="phone" required>

									</div>
								</div>
								<div class="form-group">
									<label for="order-notes" class="text-black">Ghi chú</label>
									<textarea name="order-notes" id="order-notes" cols="50"
										rows="5" class="form-control" placeholder="Ghi chú..."></textarea>
								</div>

							</div>
							<div class="col-md-6">
								<div class="row mb-5">
									<div class="col-md-12">
										<h2 class="h3 mb-5 text-black">Sản phẩm của bạn</h2>
										<div class="p-3 p-lg-5 border">
										<c:if test="${not empty cartItems}">
    <table class="table site-block-order-table mb-5">
        <tbody>
            <c:forEach var="item" items="${cartItems}">
                <tr>
                 <td class="img-product">
    <img src="/img/upload/${item.spham.hinh}" alt="" style="width: 50px; height: 50px;">
</td>

                    <td>
                        <strong>${item.spham.tensp}</strong><br>
                        <strong>${item.size.kichthuoc} ${item.size.donvitinh}</strong>
                    </td>
                    <td><strong>x ${item.qty}</strong></td>
                    <td colspan="2">
                        <strong>
                            <fmt:formatNumber value="${item.size.gia * item.qty}"
                                              minFractionDigits="0" maxFractionDigits="0" currencySymbol="VNĐ" />
                        </strong>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
        <tfoot>
            <tr>
                <td class="text-black font-weight-bold" colspan="2">
                    <strong>Phí giao hàng: </strong>
                </td>
                <td class="text-black font-weight-bold" colspan="4">
                    <strong><fmt:formatNumber value="35000" minFractionDigits="0" maxFractionDigits="0" currencySymbol="₫" /> VNĐ</strong>
                </td>
            </tr>
            <tr>
                <td class="text-black font-weight-bold" colspan="2">
                    <strong>Tổng tiền</strong>
                </td>
                 <td class="text-black font-weight-bold" colspan="4">
        <strong><fmt:formatNumber value="${totalAmount}" minFractionDigits="0" maxFractionDigits="0" currencySymbol="₫" /> VNĐ</strong>
    </td>
            </tr>
        </tfoot>
    </table>
</c:if>


											<div class="">
												<div class="border-0 p-3 mb-3">
													<h3 class="h6 mb-0">Thanh toán khi nhận hàng</h3>
												</div>


											</div>
											<div class="form-group">
												<button type="button" class="btn btn-dark" id="liveToastBtn">ĐẶT
													HÀNG</button>
											</div>
											<div
												class="toast-container position-fixed bottom-0 end-0 p-3">
												<div id="liveToast" class="toast" role="alert"
													aria-live="assertive" aria-atomic="true">
													<div class="toast-header">
														<img src="..." class="rounded me-2" alt="..."> <strong
															class="me-auto">Đặt hàng thành công</strong>
														<button type="button" class="btn-close"
															data-bs-dismiss="toast" aria-label="Close"></button>
													</div>
													<div class="toast-body">Đơn hàng đã được đặt hàng
														thành công</div>
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
		</div>
	</div>
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body">
					<h5>Tổng tiền sản phẩm</h5>
					<h5>
						<strong>{{tongTien() | number}} VNĐ</strong>
					</h5>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal" onclick="window.location.href='#'">Thoát</button>
				</div>
			</div>
		</div>
	</div>





	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://kit.fontawesome.com/d584f42692.js"
		crossorigin="anonymous"></script>
	<script>
	angular.module('myApp', [])
	.controller('myCtrl', function ($scope, $http) {
	    $scope.cities = [];

	    // Fetch city data from diachi.json
	    $http.get('/diachi.json')
	    .then(function (response) {
	        $scope.cities = response.data;
	    })
	    .catch(function (error) {
	        console.error('Error fetching city data:', error);
	    });
	});

	const toastTrigger = document.getElementById('liveToastBtn')
	const toastLiveExample = document.getElementById('liveToast')

	if (toastTrigger) {
	  const toastBootstrap = bootstrap.Toast.getOrCreateInstance(toastLiveExample)
	  toastTrigger.addEventListener('click', () => {
	    toastBootstrap.show()
	  })
	}
                </script>

</body>

</html>
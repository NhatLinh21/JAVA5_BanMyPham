<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Chỉnh Sửa Sản Phẩm</title>
<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="<c:url value='/templates/admin/plugins/fontawesome-free/css/all.min.css'/>">
<link rel="stylesheet"
	href="<c:url value='/templates/admin/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css'/>">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="<c:url value='/templates/admin/plugins/fontawesome-free/css/all.min.css'/>">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Tempusdominus Bootstrap 4 -->
<link rel="stylesheet"
	href="<c:url value='/templates/admin/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css'/>">
<!-- iCheck -->
<link rel="stylesheet"
	href="<c:url value='/templates/admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css'/>">
<!-- JQVMap -->
<link rel="stylesheet"
	href="<c:url value='/templates/admin/plugins/jqvmap/jqvmap.min.css'/>">
<!-- Theme style -->
<link rel="stylesheet"
	href="<c:url value='/templates/admin/dist/css/adminlte.min.css'/>">
<!-- overlayScrollbars -->
<link rel="stylesheet"
	href="<c:url value='/templates/admin/plugins/overlayScrollbars/css/OverlayScrollbars.min.css'/>">
<!-- Daterange picker -->
<link rel="stylesheet"
	href="<c:url value='/templates/admin/plugins/daterangepicker/daterangepicker.css'/>">
<!-- summernote -->
<link rel="stylesheet"
	href="<c:url value='/templates/admin/plugins/summernote/summernote-bs4.min.css'/>">
<style>
body, html {
	height: 100%;
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
}

.wrapper {
	display: flex;
	flex-direction: column;
	height: 100%;
}

.content-wrapper {
	flex: 1;
	display: flex;
	flex-direction: column;
	overflow: hidden;
	padding: 0;
	margin: 0;
}

.content {
	flex: 1;
	display: flex;
	flex-direction: column;
	overflow: hidden;
	padding: 0;
	margin: 0;
}

.card-body {
	flex: 1;
	display: flex;
	flex-direction: column;
	overflow: auto;
	padding: 20px;
}

.form-group {
	width: 100%;
}

.navbar, .main-sidebar, .main-footer {
	flex-shrink: 0;
}

.main-image-preview {
	width: 100%;
	height: 400px;
	display: flex;
	justify-content: center;
	align-items: center;
	overflow: hidden;
	border: 1px solid gray;
}

.main-image-preview img {
	max-width: 100%;
	max-height: 100%;
}

.thumbnail-previews {
	display: flex;
	justify-content: flex-start;
	align-items: center;
	margin-top: 10px;
}

.thumbnail-previews .thumbnail {
	width: 80px;
	height: 80px;
	border: 1px solid gray;
	margin: 0 5px;
	display: flex;
	justify-content: center;
	align-items: center;
	overflow: hidden;
	cursor: pointer;
}

.thumbnail-previews .thumbnail img {
	max-width: 100%;
	max-height: 100%;
}
</style>
</head>
<body class="hold-transition sidebar-mini">
	<div class="wrapper">
		<!-- Navbar -->
		<nav
			class="main-header navbar navbar-expand navbar-white navbar-light">
			<!-- Left navbar links -->
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
					href="#" role="button"><i class="fas fa-bars"></i></a></li>
				<li class="nav-item d-none d-sm-inline-block"><a
					href="../../index3.html" class="nav-link">Home</a></li>
				<li class="nav-item d-none d-sm-inline-block"><a href="#"
					class="nav-link">Contact</a></li>
			</ul>
			<!-- Right navbar links -->
			<ul class="navbar-nav ml-auto">
				<!-- Navbar Search -->
				<li class="nav-item"><a class="nav-link"
					data-widget="navbar-search" href="#" role="button"><i
						class="fas fa-search"></i></a>
					<div class="navbar-search-block">
						<form class="form-inline">
							<div class="input-group input-group-sm">
								<input class="form-control form-control-navbar" type="search"
									placeholder="Search" aria-label="Search">
								<div class="input-group-append">
									<button class="btn btn-navbar" type="submit">
										<i class="fas fa-search"></i>
									</button>
									<button class="btn btn-navbar" type="button"
										data-widget="navbar-search">
										<i class="fas fa-times"></i>
									</button>
								</div>
							</div>
						</form>
					</div></li>
				<!-- Messages Dropdown Menu -->
				<!-- Your code for messages dropdown here -->
				<!-- Notifications Dropdown Menu -->
				<!-- Your code for notifications dropdown here -->
				<li class="nav-item"><a class="nav-link"
					data-widget="fullscreen" href="#" role="button"><i
						class="fas fa-expand-arrows-alt"></i></a></li>
				<li class="nav-item"><a class="nav-link"
					data-widget="control-sidebar" data-slide="true" href="#"
					role="button"><i class="fas fa-th-large"></i></a></li>
			</ul>
		</nav>
		<!-- Main Sidebar Container -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<!-- Brand Logo -->
			<a href="../../index3.html" class="brand-link"><img
				src="/img/419733359_739452124789440_1903023108252471893_n.jpg"
				alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
				style="opacity: .8"> <span
				class="brand-text font-weight-light">AdminLTE 3</span></a>
			<!-- Sidebar -->
			<div class="sidebar">
				<!-- Sidebar user (optional) -->
				<div class="user-panel mt-3 pb-3 mb-3 d-flex">
					<div class="image">
						<img
							src="/img/419733359_739452124789440_1903023108252471893_n.jpg"
							class="img-circle elevation-2" alt="User Image">
					</div>
					<div class="info">
						<a href="#" class="d-block">Alexander Pierce</a>
					</div>
				</div>
				<!-- SidebarSearch Form -->
				<div class="form-inline">
					<div class="input-group" data-widget="sidebar-search">
						<input class="form-control form-control-sidebar" type="search"
							placeholder="Search" aria-label="Search">
						<div class="input-group-append">
							<button class="btn btn-sidebar">
								<i class="fas fa-search fa-fw"></i>
							</button>
						</div>
					</div>
				</div>
				<!-- Sidebar Menu -->
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
						<li class="nav-item menu-close"><a href="#"
							class="nav-link active"><i class="nav-icon fas fa-table"></i>
								<p>
									Quản Lý <i class="fas fa-angle-left right"></i>
								</p></a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a
									href="${pageContext.request.contextPath}/thongke"
									class="nav-link"><i class="far fa-circle nav-icon"></i>
										<p>Thống Kê Sản Phẩm</p></a></li>
								<li class="nav-item"><a
									href="${pageContext.request.contextPath}/qlsanpham"
									class="nav-link"><i class="far fa-circle nav-icon"></i>
										<p>Quản Lý Sản Phẩm</p></a></li>
								<li class="nav-item"><a
									href="${pageContext.request.contextPath}/qldonhang"
									class="nav-link"><i class="far fa-circle nav-icon"></i>
										<p>Quản Lý Đơn Hàng</p></a></li>
								<li class="nav-item"><a
									href="${pageContext.request.contextPath}/chinhsuasp"
									class="nav-link active"><i class="far fa-circle nav-icon"></i>
										<p>Chỉnh Sửa Sản Phẩm</p></a></li>
							</ul></li>
					</ul>
				</nav>
				<!-- /.sidebar-menu -->
			</div>
			<!-- /.sidebar -->
		</aside>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-12">
							<div class="card card-primary">
								<div class="card-header">
									<h3 class="card-title">Chỉnh Sửa Sản Phẩm</h3>
									<div class="card-tools">
										<button type="button" class="btn btn-tool"
											data-card-widget="collapse" title="Collapse">
											<i class="fas fa-minus"></i>
										</button>
									</div>
								</div>
								<div class="card-body">
									<form action="${pageContext.request.contextPath}/product/edit"
										method="post" enctype="multipart/form-data"
										modelAttribute="item">
										<div class="form-group">
											<label for="title">Tên Sản Phẩm</label> <input type="text"
												id="title" name="tensp" path="tensp" class="form-control"
												value="${item.tensp}">
										</div>
										<div class="form-group">
											<label for="href">Mã Sản Phẩm</label> <input type="text"
												id="href" name="masp" path="masp" class="form-control"
												value="${item.masp}">
										</div>
										  <div class="form-group">
       <label for="size">Kích Thước</label>
<div id="size-container">
    <c:forEach var="size" items="${item.size}" varStatus="status">
        <div class="form-group size-entry">
            <label for="size[${status.index}].kichthuoc">Kích Thước</label>
            <input type="text" id="size[${status.index}].kichthuoc" name="size[${status.index}].kichthuoc" class="form-control mb-2" value="${size.kichthuoc}" />
            <label for="size[${status.index}].donViTinh">Đơn Vị Tính</label>
            <select id="size[${status.index}].donViTinh" name="size[${status.index}].donViTinh" class="form-control mb-2">
                <option value="ml" ${size.donvitinh == 'ml' ? 'selected' : ''}>ml</option>
                <option value="gói" ${size.donvitinh == 'gói' ? 'selected' : ''}>gói</option>
                <option value="g" ${size.donvitinh == 'g' ? 'selected' : ''}>g</option>
            </select>
        </div>
    </c:forEach>
</div>
<!-- Nút thêm kích thước mới -->
<button type="button" id="add-size-btn" class="btn btn-primary">Thêm Kích Thước</button>
					<div class="form-group">
    <label for="status">Trạng Thái Sản Phẩm</label>
    <select id="status" name="trangThai.id" class="form-control">
        <c:forEach var="tt" items="${trangThaiList}">
            <option value="${tt.id}" ${item.trangThai != null && item.trangThai.id == tt.id ? 'selected' : ''}>${tt.tentt}</option>
        </c:forEach>
    </select>
</div>

										<div class="form-group">
											<div class="row">
												<div class="col-9">
													<div class="row">
														<div class="col-12 form-group">
															<label for="description">Mô Tả Sản Phẩm</label>
															<textarea id="description" name="mota"
																class="form-control" rows="4">${item.mota}</textarea>
														</div>

														<div id="thumbnail" class="col-12">
															<div class="thumbnail-previews" id="thumbnailPreviews">
																<!-- Dòng này sẽ hiển thị các thumbnail từ dữ liệu server -->
																<c:forEach var="image" items="${item.img}">
																	<div class="thumbnail">
																		<img
																			src="${pageContext.request.contextPath}/img/${image.image}"
																			alt="Thumbnail">
																	</div>
																</c:forEach>
															</div>
														</div>
														<div class="col-12 form-group">
															<label for="poster">Ảnh Sản Phẩm</label>
															<button type="button" class="btn btn-primary"
																onclick="document.getElementById('imageUpload').click();">Upload
																Folder</button>
															<input type="file" id="imageUpload" name="files" multiple
																style="display: none;" onchange="previewImages(event)">
														</div>
													</div>
													<div class="form-group">
														<button
															formaction="${pageContext.request.contextPath}/create"
															type="submit" class="btn bg-gradient-success btn-md">Submit</button>
														<button
															formaction="${pageContext.request.contextPath}/update"
															type="submit" class="btn bg-gradient-warning btn-md">Update</button>
													</div>
									</form>
								</div>
							</div>
							<!-- /.card -->
						</div>
					</div>
				</div>
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- ./wrapper -->
		<!-- jQuery -->
		<script
			src="<c:url value='/templates/admin/plugins/jquery/jquery.min.js'/>"></script>
		<!-- jQuery UI 1.11.4 -->
		<script
			src="<c:url value='/templates/admin/plugins/jquery-ui/jquery-ui.min.js'/>"></script>
		<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
		<script>$.widget.bridge('uibutton', $.ui.button)</script>
		<!-- Bootstrap 4 -->
		<script
			src="<c:url value='/templates/admin/plugins/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
		<!-- ChartJS -->
		<script
			src="<c:url value='/templates/admin/plugins/chart.js/Chart.min.js'/>"></script>
		<!-- Sparkline -->
		<script
			src="<c:url value='/templates/admin/plugins/sparklines/sparkline.js'/>"></script>
		<!-- JQVMap -->
		<script
			src="<c:url value='/templates/admin/plugins/jqvmap/jquery.vmap.min.js'/>"></script>
		<script
			src="<c:url value='/templates/admin/plugins/jqvmap/maps/jquery.vmap.usa.js'/>"></script>
		<!-- jQuery Knob Chart -->
		<script
			src="<c:url value='/templates/admin/plugins/jquery-knob/jquery.knob.min.js'/>"></script>
		<!-- daterangepicker -->
		<script
			src="<c:url value='/templates/admin/plugins/moment/moment.min.js'/>"></script>
		<script
			src="<c:url value='/templates/admin/plugins/daterangepicker/daterangepicker.js'/>"></script>
		<!-- Tempusdominus Bootstrap 4 -->
		<script
			src="<c:url value='/templates/admin/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js'/>"></script>
		<!-- Summernote -->
		<script
			src="<c:url value='/templates/admin/plugins/summernote/summernote-bs4.min.js'/>"></script>
		<!-- overlayScrollbars -->
		<script
			src="<c:url value='/templates/admin/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js'/>"></script>
		<!-- AdminLTE App -->
		<script src="<c:url value='/templates/admin/dist/js/adminlte.js'/>"></script>
		<!-- AdminLTE for demo purposes -->
		<script src="<c:url value='/templates/admin/dist/js/demo.js'/>"></script>
		<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
		<script
			src="<c:url value='/templates/admin/dist/js/pages/dashboard.js'/>"></script>
		<!-- DataTables  & Plugins -->
		<script
			src="<c:url value='/templates/admin/plugins/datatables/jquery.dataTables.min.js'/>"></script>
		<script
			src="<c:url value='/templates/admin/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js'/>"></script>
		<script
			src="<c:url value='/templates/admin/plugins/datatables-responsive/js/dataTables.responsive.min.js'/>"></script>
		<script
			src="<c:url value='/templates/admin/plugins/datatables-responsive/js/responsive.bootstrap4.min.js'/>"></script>
		<script
			src="<c:url value='/templates/admin/plugins/datatables-buttons/js/dataTables.buttons.min.js'/>"></script>
		<script
			src="<c:url value='/templates/admin/plugins/datatables-buttons/js/buttons.bootstrap4.min.js'/>"></script>
		<script
			src="<c:url value='/templates/admin/plugins/jszip/jszip.min.js'/>"></script>
		<script
			src="<c:url value='/templates/admin/plugins/pdfmake/pdfmake.min.js'/>"></script>
		<script
			src="<c:url value='/templates/admin/plugins/pdfmake/vfs_fonts.js'/>"></script>
		<script
			src="<c:url value='/templates/admin/plugins/datatables-buttons/js/buttons.html5.min.js'/>"></script>
		<script
			src="<c:url value='/templates/admin/plugins/datatables-buttons/js/buttons.print.min.js'/>"></script>
		<script
			src="<c:url value='/templates/admin/plugins/datatables-buttons/js/buttons.colVis.min.js'/>"></script>

		<script>
           
            document.getElementById("add-size-btn").addEventListener("click", function() {
                var sizeContainer = document.getElementById("size-container");

                var newFormGroup = document.createElement("div");
                newFormGroup.classList.add("form-group");

                var newSizeInput = document.createElement("input");
                newSizeInput.type = "text";
                newSizeInput.name = "kichthuoc[]";
                newSizeInput.classList.add("form-control", "mb-2");

                var newUnitSelect = document.createElement("select");
                newUnitSelect.name = "donvitinh[]";
                newUnitSelect.classList.add("form-control", "mb-2");

                var mlOption = document.createElement("option");
                mlOption.value = "ml";
                mlOption.textContent = "ml";

                var goiOption = document.createElement("option");
                goiOption.value = "gói";
                goiOption.textContent = "gói";

                var gOption = document.createElement("option");
                gOption.value = "g";
                gOption.textContent = "g";

                newUnitSelect.appendChild(mlOption);
                newUnitSelect.appendChild(goiOption);
                newUnitSelect.appendChild(gOption);

                newFormGroup.appendChild(newSizeInput);
                newFormGroup.appendChild(newUnitSelect);

                sizeContainer.appendChild(newFormGroup);
            });
        </script>
		<script>
		function previewImages(event) {
		    const input = event.target;
		    const files = Array.from(input.files);
		    const thumbnailPreviews = document.getElementById('thumbnailPreviews');
		    
		    // Xóa tất cả các thumbnail cũ
		    thumbnailPreviews.innerHTML = '';

		    // Hiển thị các thumbnail của các file được chọn
		    files.slice(0, 4).forEach(file => {
		        const reader = new FileReader();
		        reader.onload = function() {
		            const thumbnail = document.createElement('div');
		            thumbnail.classList.add('thumbnail');
		            thumbnail.innerHTML = `<img src="${reader.result}" alt="Thumbnail">`;
		            thumbnailPreviews.appendChild(thumbnail);
		        };
		        reader.readAsDataURL(file);
		    });
		}

</script>
	</div>
</body>
</html>

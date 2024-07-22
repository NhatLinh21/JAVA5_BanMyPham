<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Quản Lý Đơn Hàng</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="<c:url value='templates/admin/plugins/fontawesome-free/css/all.min.css'/>">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Tempusdominus Bootstrap 4 -->
<link rel="stylesheet"
	href="<c:url value='templates/admin/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css'/>">
<!-- iCheck -->
<link rel="stylesheet"
	href="<c:url value='templates/admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css'/>">
<!-- JQVMap -->
<link rel="stylesheet"
	href="<c:url value='templates/admin/plugins/jqvmap/jqvmap.min.css'/>">
<!-- Theme style -->
<link rel="stylesheet"
	href="<c:url value='templates/admin/dist/css/adminlte.min.css'/>">
<!-- overlayScrollbars -->
<link rel="stylesheet"
	href="<c:url value='templates/admin/plugins/overlayScrollbars/css/OverlayScrollbars.min.css'/>">
<!-- Daterange picker -->
<link rel="stylesheet"
	href="<c:url value='templates/admin/plugins/daterangepicker/daterangepicker.css'/>">
<!-- summernote -->
<link rel="stylesheet"
	href="<c:url value='templates/admin/plugins/summernote/summernote-bs4.min.css'/>">



<style>
.stats-card {
	background-color: #333;
	color: white;
	padding: 20px;
	border-radius: 10px;
	text-align: center;
	margin-bottom: 20px;
	height: 150px; /* Fixed height for equal card sizes */
	display: flex;
	flex-direction: column;
	justify-content: center;
}

.stats-card h3 {
	font-size: 1.5rem;
	margin-bottom: 10px;
}

.stats-card p {
	font-size: 1.25rem;
	margin: 0;
}

.stats-card .details {
	font-size: 0.875rem;
	color: #888;
	margin-top: 10px;
}

.order-status {
	display: flex;
	flex-direction: column;
	align-items: center;
}

.table-card {
	background-color: #f8f9fa;
	padding: 20px;
	border-radius: 10px;
	margin-top: 20px;
}

.overview-card {
	background-color: #fff;
	padding: 20px;
	border-radius: 10px;
	margin-top: 20px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.overview-item {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 10px 0;
	border-bottom: 1px solid #ddd;
}

.overview-item:last-child {
	border-bottom: none;
}

.overview-icon {
	font-size: 1.5rem;
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
					data-widget="navbar-search" href="#" role="button"> <i
						class="fas fa-search"></i>
				</a>
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
				<li class="nav-item dropdown"><a class="nav-link"
					data-toggle="dropdown" href="#"> <i class="far fa-comments"></i>
						<span class="badge badge-danger navbar-badge">3</span>
				</a>
					<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
						<a href="#" class="dropdown-item"> <!-- Message Start -->
							<div class="media">
								<img src="../../dist/img/user1-128x128.jpg" alt="User Avatar"
									class="img-size-50 mr-3 img-circle">
								<div class="media-body">
									<h3 class="dropdown-item-title">
										Brad Diesel <span class="float-right text-sm text-danger"><i
											class="fas fa-star"></i></span>
									</h3>
									<p class="text-sm">Call me whenever you can...</p>
									<p class="text-sm text-muted">
										<i class="far fa-clock mr-1"></i> 4 Hours Ago
									</p>
								</div>
							</div> <!-- Message End -->
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <!-- Message Start -->
							<div class="media">
								<img src="../../dist/img/user8-128x128.jpg" alt="User Avatar"
									class="img-size-50 img-circle mr-3">
								<div class="media-body">
									<h3 class="dropdown-item-title">
										John Pierce <span class="float-right text-sm text-muted"><i
											class="fas fa-star"></i></span>
									</h3>
									<p class="text-sm">I got your message bro</p>
									<p class="text-sm text-muted">
										<i class="far fa-clock mr-1"></i> 4 Hours Ago
									</p>
								</div>
							</div> <!-- Message End -->
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <!-- Message Start -->
							<div class="media">
								<img src="../../dist/img/user3-128x128.jpg" alt="User Avatar"
									class="img-size-50 img-circle mr-3">
								<div class="media-body">
									<h3 class="dropdown-item-title">
										Nora Silvester <span class="float-right text-sm text-warning"><i
											class="fas fa-star"></i></span>
									</h3>
									<p class="text-sm">The subject goes here</p>
									<p class="text-sm text-muted">
										<i class="far fa-clock mr-1"></i> 4 Hours Ago
									</p>
								</div>
							</div> <!-- Message End -->
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item dropdown-footer">See All
							Messages</a>
					</div></li>
				<!-- Notifications Dropdown Menu -->
				<li class="nav-item dropdown"><a class="nav-link"
					data-toggle="dropdown" href="#"> <i class="far fa-bell"></i> <span
						class="badge badge-warning navbar-badge">15</span>
				</a>
					<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
						<span class="dropdown-item dropdown-header">15
							Notifications</span>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i
							class="fas fa-envelope mr-2"></i> 4 new messages <span
							class="float-right text-muted text-sm">3 mins</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i
							class="fas fa-users mr-2"></i> 8 friend requests <span
							class="float-right text-muted text-sm">12 hours</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i class="fas fa-file mr-2"></i>
							3 new reports <span class="float-right text-muted text-sm">2
								days</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item dropdown-footer">See All
							Notifications</a>
					</div></li>
				<li class="nav-item"><a class="nav-link"
					data-widget="fullscreen" href="#" role="button"> <i
						class="fas fa-expand-arrows-alt"></i>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					data-widget="control-sidebar" data-slide="true" href="#"
					role="button"> <i class="fas fa-th-large"></i>
				</a></li>
			</ul>
		</nav>
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<!-- Brand Logo -->
			<a href="../../index3.html" class="brand-link"> <img
				src="/img/419733359_739452124789440_1903023108252471893_n.jpg"
				alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
				style="opacity: .8"> <span
				class="brand-text font-weight-light">AdminLTE 3</span>
			</a>

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
						<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->





						<li class="nav-item menu-open"><a href="#"
							class="nav-link active"> <i class="nav-icon fas fa-table"></i>
								<p>
									Quản Lý <i class="fas fa-angle-left right"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a
									href="${pageContext.request.contextPath}/report"
									class="nav-link active"> <i class="far fa-circle nav-icon"></i>
										<p>Thống Kê Sản Phẩm</p>
								</a></li>
								<li class="nav-item"><a
									href="${pageContext.request.contextPath}/qlsanpham"
									class="nav-link "> <i class="far fa-circle nav-icon"></i>
										<p>Quản Lý Sản Phẩm</p>
								</a></li>
								<li class="nav-item"><a
									href="${pageContext.request.contextPath}/qldonhang"
									class="nav-link "> <i class="far fa-circle nav-icon"></i>
										<p>Quản Lý Đơn Hàng</p>
								</a></li>
								<li class="nav-item"><a
									href="${pageContext.request.contextPath}/chinhsuasp"
									class="nav-link  "> <i class="far fa-circle nav-icon"></i>
										<p>Chỉnh Sửa Sản Phẩm</p>
								</a></li>
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
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>DataTables</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active">DataTables</li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">DataTable with default features</h3>
								</div>
								<!-- /.card-header -->
								<div class="container mt-5">
									<h1>Thống Kê Sản Phẩm</h1>
									<div class="row mb-4 stats-container">

										<div class="col-md-3">
											<div class="stats-card">
												<h3>Doanh số</h3>
												<p>${totalRevenue}</p>
												<div class="details">+16.24% View net earnings</div>
											</div>
										</div>

										<div class="col-md-3">
											<div class="stats-card">
												<h3>Số lượng sản phẩm</h3>
												<p>${totalProducts}</p>
												<div class="details">-80.00% View all orders</div>
											</div>
										</div>
										<div class="col-md-3">
											<div class="stats-card">
												<h3>Tình trạng đơn hàng</h3>
												<div class="order-status">
													<p style="color: green;">Hoàn thành:
														${completedPercentage}%</p>
													<p style="color: red;">Chưa hoàn thành:
														${pendingPercentage}%</p>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<h3>Online Store Visitors</h3>
										<canvas id="visitorsChart"></canvas>
									</div>
									<div class="col-md-6">
										<h3>Sales</h3>
										<canvas id="salesChart"></canvas>
									</div>
								</div>
								<div class="row table-card">
									<div class="col-md-12">
										<h3>Products</h3>
										<table class="table table-hover">
											<thead>
												<tr>
													<th>Product</th>
													<th>Price</th>
													<th>Sales</th>
													<th>More</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>Some Product</td>
													<td>$13 USD</td>
													<td><span style="color: green;">↑ 12%</span> 12,000
														Sold</td>
													<td><a href="#">🔍</a></td>
												</tr>
												<tr>
													<td>Another Product</td>
													<td>$29 USD</td>
													<td><span style="color: orange;">↓ 0.5%</span> 123,234
														Sold</td>
													<td><a href="#">🔍</a></td>
												</tr>
												<tr>
													<td>Amazing Product</td>
													<td>$1,230 USD</td>
													<td><span style="color: red;">↓ 3%</span> 198 Sold</td>
													<td><a href="#">🔍</a></td>
												</tr>
												<tr>
													<td>Perfect Item <span class="badge bg-danger">NEW</span></td>
													<td>$199 USD</td>
													<td><span style="color: green;">↑ 63%</span> 87 Sold</td>
													<td><a href="#">🔍</a></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<div class="overview-card">
											<h3>Online Store Overview</h3>
											<div class="overview-item">
												<div>
													<span class="overview-icon">🔄</span> Conversion Rate
												</div>
												<div style="color: green;">+12%</div>
											</div>
											<div class="overview-item">
												<div>
													<span class="overview-icon">🛒</span> Sales Rate
												</div>
												<div style="color: orange;">+0.8%</div>
											</div>
											<div class="overview-item">
												<div>
													<span class="overview-icon">👥</span> Registration Rate
												</div>
												<div style="color: red;">-1%</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
		</div>
		<!-- /.container-fluid -->
		</section>
		<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->
	<footer class="main-footer">
		<div class="float-right d-none d-sm-block">
			<b>Version</b> 3.2.0
		</div>
		<strong>Copyright &copy; 2014-2021 <a
			href="https://adminlte.io">AdminLTE.io</a>.
		</strong> All rights reserved.
	</footer>

	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
		<!-- Control sidebar content goes here -->
	</aside>
	<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->

	<!-- jQuery -->
	<script
		src="<c:url value='templates/admin/plugins/jquery/jquery.min.js'/>"></script>
	<!-- jQuery UI 1.11.4 -->
	<script
		src="<c:url value='templates/admin/plugins/jquery-ui/jquery-ui.min.js'/>"></script>
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<script>
		$.widget.bridge('uibutton', $.ui.button)
	</script>
	<!-- Bootstrap 4 -->
	<script
		src="<c:url value='templates/admin/plugins/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
	<!-- ChartJS -->
	<script
		src="<c:url value='templates/admin/plugins/chart.js/Chart.min.js'/>"></script>
	<!-- Sparkline -->
	<script
		src="<c:url value='templates/admin/plugins/sparklines/sparkline.js'/>"></script>
	<!-- JQVMap -->
	<script
		src="<c:url value='templates/admin/plugins/jqvmap/jquery.vmap.min.js'/>"></script>
	<script
		src="<c:url value='templates/admin/plugins/jqvmap/maps/jquery.vmap.usa.js'/>"></script>
	<!-- jQuery Knob Chart -->
	<script
		src="<c:url value='templates/admin/plugins/jquery-knob/jquery.knob.min.js'/>"></script>
	<!-- daterangepicker -->
	<script
		src="<c:url value='templates/admin/plugins/moment/moment.min.js'/>"></script>
	<script
		src="<c:url value='templates/admin/plugins/daterangepicker/daterangepicker.js'/>"></script>
	<!-- Tempusdominus Bootstrap 4 -->
	<script
		src="<c:url value='templates/admin/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js'/>"></script>
	<!-- Summernote -->
	<script
		src="<c:url value='templates/admin/plugins/summernote/summernote-bs4.min.js'/>"></script>
	<!-- overlayScrollbars -->
	<script
		src="<c:url value='templates/admin/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js'/>"></script>
	<!-- AdminLTE App -->
	<script src="<c:url value='templates/admin/dist/js/adminlte.js'/>"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="<c:url value='templates/admin/dist/js/demo.js'/>"></script>
	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<script
		src="<c:url value='templates/admin/dist/js/pages/dashboard.js'/>"></script>
	<!-- DataTables  & Plugins -->
	<script
		src="<c:url value='templates/admin/plugins/datatables/jquery.dataTables.min.js'/>"></script>
	<script
		src="<c:url value='templates/admin/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js'/>"></script>
	<script
		src="<c:url value='templates/admin/plugins/datatables-responsive/js/dataTables.responsive.min.js'/>"></script>
	<script
		src="<c:url value='templates/admin/plugins/datatables-responsive/js/responsive.bootstrap4.min.js'/>"></script>
	<script
		src="<c:url value='templates/admin/plugins/datatables-buttons/js/dataTables.buttons.min.js'/>"></script>
	<script
		src="<c:url value='templates/admin/plugins/datatables-buttons/js/buttons.bootstrap4.min.js'/>"></script>
	<script
		src="<c:url value='templates/admin/plugins/jszip/jszip.min.js'/>"></script>
	<script
		src="<c:url value='templates/admin/plugins/pdfmake/pdfmake.min.js'/>"></script>
	<script
		src="<c:url value='templates/admin/plugins/pdfmake/vfs_fonts.js'/>"></script>
	<script
		src="<c:url value='templates/admin/plugins/datatables-buttons/js/buttons.html5.min.js'/>"></script>
	<script
		src="<c:url value='templates/admin/plugins/datatables-buttons/js/buttons.print.min.js'/>"></script>
	<script
		src="<c:url value='templates/admin/plugins/datatables-buttons/js/buttons.colVis.min.js'/>"></script>


	<script>
		$(function() {
			$("#example1").DataTable(
					{
						"responsive" : true,
						"lengthChange" : false,
						"autoWidth" : false,
						"buttons" : [ "copy", "csv", "excel", "pdf", "print",
								"colvis" ]
					}).buttons().container().appendTo(
					'#example1_wrapper .col-md-6:eq(0)');
			$('#example2').DataTable({
				"paging" : true,
				"lengthChange" : false,
				"searching" : false,
				"ordering" : true,
				"info" : true,
				"autoWidth" : false,
				"responsive" : true,
			});
		});
	</script>


	<script>
		// Data for Visitors Chart
		const visitorsData = {
			labels : [ '18th', '20th', '22nd', '24th', '26th', '28th', '30th' ],
			datasets : [ {
				label : 'This Week',
				data : [ 100, 120, 150, 170, 160, 150, 140 ],
				borderColor : 'blue',
				backgroundColor : 'rgba(0, 0, 255, 0.1)',
				fill : true,
			}, {
				label : 'Last Week',
				data : [ 80, 90, 100, 110, 120, 130, 140 ],
				borderColor : 'grey',
				backgroundColor : 'rgba(128, 128, 128, 0.1)',
				fill : true,
			} ]
		};

		const visitorsConfig = {
			type : 'line',
			data : visitorsData,
			options : {
				responsive : true,
				scales : {
					y : {
						beginAtZero : true
					}
				}
			}
		};

		// Data for Sales Chart
		const salesData = {
			labels : [ 'JUN', 'JUL', 'AUG', 'SEP', 'OCT', 'NOV', 'DEC' ],
			datasets : [ {
				label : 'This year',
				data : [ 500, 1500, 3000, 2500, 2000, 2800, 3200 ],
				backgroundColor : 'blue'
			}, {
				label : 'Last year',
				data : [ 300, 1200, 2500, 2000, 1800, 2300, 2900 ],
				backgroundColor : 'grey'
			} ]
		};

		const salesConfig = {
			type : 'bar',
			data : salesData,
			options : {
				responsive : true,
				scales : {
					y : {
						beginAtZero : true
					}
				}
			}
		};

		// Render the charts
		window.onload = function() {
			const visitorsCtx = document.getElementById('visitorsChart')
					.getContext('2d');
			new Chart(visitorsCtx, visitorsConfig);

			const salesCtx = document.getElementById('salesChart').getContext(
					'2d');
			new Chart(salesCtx, salesConfig);
		};
	</script>

</body>
</html>


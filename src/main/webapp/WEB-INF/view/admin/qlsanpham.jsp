<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Quản Lý Sản Phẩm</title>

<!-- CSS links -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/templates/admin/plugins/fontawesome-free/css/all.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<link rel="stylesheet" href="<c:url value='templates/admin/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css'/>">
<link rel="stylesheet" href="<c:url value='templates/admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css'/>">
<link rel="stylesheet" href="<c:url value='templates/admin/plugins/jqvmap/jqvmap.min.css'/>">
<link rel="stylesheet" href="<c:url value='templates/admin/dist/css/adminlte.min.css'/>">
<link rel="stylesheet" href="<c:url value='templates/admin/plugins/overlayScrollbars/css/OverlayScrollbars.min.css'/>">
<link rel="stylesheet" href="<c:url value='templates/admin/plugins/daterangepicker/daterangepicker.css'/>">
<link rel="stylesheet" href="<c:url value='templates/admin/plugins/summernote/summernote-bs4.min.css'/>">
</head>
<body class="hold-transition sidebar-mini">
    <div class="wrapper">
        <!-- Navbar -->
        <nav class="main-header navbar navbar-expand navbar-white navbar-light">
            <!-- Left navbar links -->
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a></li>
                <li class="nav-item d-none d-sm-inline-block"><a href="../../index3.html" class="nav-link">Home</a></li>
                <li class="nav-item d-none d-sm-inline-block"><a href="#" class="nav-link">Contact</a></li>
            </ul>

            <!-- Right navbar links -->
            <ul class="navbar-nav ml-auto">
                <!-- Navbar Search -->
                <li class="nav-item"><a class="nav-link" data-widget="navbar-search" href="#" role="button"><i class="fas fa-search"></i></a>
                    <div class="navbar-search-block">
                        <form class="form-inline">
                            <div class="input-group input-group-sm">
                                <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
                                <div class="input-group-append">
                                    <button class="btn btn-navbar" type="submit">
                                        <i class="fas fa-search"></i>
                                    </button>
                                    <button class="btn btn-navbar" type="button" data-widget="navbar-search">
                                        <i class="fas fa-times"></i>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </li>

                <!-- Messages Dropdown Menu -->
                <li class="nav-item dropdown"><a class="nav-link" data-toggle="dropdown" href="#"><i class="far fa-comments"></i><span class="badge badge-danger navbar-badge">3</span></a>
                    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                        <a href="#" class="dropdown-item"> <!-- Message Start -->
                            <div class="media">
                                <img src="../../dist/img/user1-128x128.jpg" alt="User Avatar" class="img-size-50 mr-3 img-circle">
                                <div class="media-body">
                                    <h3 class="dropdown-item-title">
                                        Brad Diesel <span class="float-right text-sm text-danger"><i class="fas fa-star"></i></span>
                                    </h3>
                                    <p class="text-sm">Call me whenever you can...</p>
                                    <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                                </div>
                            </div> <!-- Message End -->
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item"> <!-- Message Start -->
                            <div class="media">
                                <img src="../../dist/img/user8-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
                                <div class="media-body">
                                    <h3 class="dropdown-item-title">
                                        John Pierce <span class="float-right text-sm text-muted"><i class="fas fa-star"></i></span>
                                    </h3>
                                    <p class="text-sm">I got your message bro</p>
                                    <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                                </div>
                            </div> <!-- Message End -->
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item"> <!-- Message Start -->
                            <div class="media">
                                <img src="../../dist/img/user3-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
                                <div class="media-body">
                                    <h3 class="dropdown-item-title">
                                        Nora Silvester <span class="float-right text-sm text-warning"><i class="fas fa-star"></i></span>
                                    </h3>
                                    <p class="text-sm">The subject goes here</p>
                                    <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                                </div>
                            </div> <!-- Message End -->
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item dropdown-footer">See All Messages</a>
                    </div>
                </li>
                <!-- Notifications Dropdown Menu -->
                <li class="nav-item dropdown"><a class="nav-link" data-toggle="dropdown" href="#"><i class="far fa-bell"></i><span class="badge badge-warning navbar-badge">15</span></a>
                    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                        <span class="dropdown-item dropdown-header">15 Notifications</span>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item"><i class="fas fa-envelope mr-2"></i> 4 new messages<span class="float-right text-muted text-sm">3 mins</span></a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item"><i class="fas fa-users mr-2"></i> 8 friend requests<span class="float-right text-muted text-sm">12 hours</span></a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item"><i class="fas fa-file mr-2"></i> 3 new reports<span class="float-right text-muted text-sm">2 days</span></a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
                    </div>
                </li>
                <li class="nav-item"><a class="nav-link" data-widget="fullscreen" href="#" role="button"><i class="fas fa-expand-arrows-alt"></i></a></li>
                <li class="nav-item"><a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button"><i class="fas fa-th-large"></i></a></li>
            </ul>
        </nav>
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
        <aside class="main-sidebar sidebar-dark-primary elevation-4">
            <!-- Brand Logo -->
            <a href="../../index3.html" class="brand-link"><img src="/img/419733359_739452124789440_1903023108252471893_n.jpg" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8"><span class="brand-text font-weight-light">AdminLTE 3</span></a>

            <!-- Sidebar -->
            <div class="sidebar">
                <!-- Sidebar user (optional) -->
                <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                    <div class="image">
                        <img src="/img/419733359_739452124789440_1903023108252471893_n.jpg" class="img-circle elevation-2" alt="User Image">
                    </div>
                    <div class="info">
                        <a href="#" class="d-block">Alexander Pierce</a>
                    </div>
                </div>

                <!-- SidebarSearch Form -->
                <div class="form-inline">
                    <div class="input-group" data-widget="sidebar-search">
                        <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
                        <div class="input-group-append">
                            <button class="btn btn-sidebar">
                                <i class="fas fa-search fa-fw"></i>
                            </button>
                        </div>
                    </div>
                </div>

                <!-- Sidebar Menu -->
                <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                        <!-- Add icons to the links using the .nav-icon class with font-awesome or any other icon font library -->
                        <li class="nav-item menu-close"><a href="#" class="nav-link active"><i class="nav-icon fas fa-table"></i><p>Quản Lý<i class="fas fa-angle-left right"></i></p></a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item"><a href="${pageContext.request.contextPath}/report" class="nav-link"><i class="far fa-circle nav-icon"></i><p>Thống Kê Sản Phẩm</p></a></li>
                                <li class="nav-item"><a href="${pageContext.request.contextPath}/qlsanpham" class="nav-link active"><i class="far fa-circle nav-icon"></i><p>Quản Lý Sản Phẩm</p></a></li>
                                <li class="nav-item"><a href="${pageContext.request.contextPath}/qldonhang" class="nav-link"><i class="far fa-circle nav-icon"></i><p>Quản Lý Đơn Hàng</p></a></li>
                                <li class="nav-item"><a href="${pageContext.request.contextPath}/chinhsuasp" class="nav-link"><i class="far fa-circle nav-icon"></i><p>Chỉnh Sửa Sản Phẩm</p></a></li>
                            </ul>
                        </li>
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
                                    <%-- <div class="card-tools">
                                        <a href="${pageContext.request.contextPath}/export/excel" class="btn btn-success">Xuất Excel</a>
                                    </div> --%>
                                </div>
                                <!-- /.card-header -->
                                <div class="card-body">
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th style="width: 40px;">Mã SP</th>
                                                <th style="width: 180px;">Tên SP</th>
                                                <th style="width: 80px;">Hình ảnh</th>
                                                <th style="width: 65px;">Size</th>
                                                <th style="width: 80px;">Trạng thái</th>
                                                <th style="width: 300px;">Mô tả</th>
                                                <th style="width: 30px;"></th>
                                                <th style="width: 30px;"></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="sp" items="${spList}">
                                                <tr>
                                                    <td>${sp.masp}</td>
                                                    <td>${sp.tensp}</td>
                                                    <td><c:if test="${not empty sp.hinh}">
                                                        <img src="<c:url value='/img/upload/${sp.img[0].image}'/>" style="display: block; margin: 0 auto;" width="150" height="150">
                                                    </c:if></td>
                                                    <td><c:forEach var="size" items="${sp.size}">
                                                        <span style="display: inline-block;">${size.kichthuoc} ${size.donvitinh}</span>
                                                    </c:forEach></td>
                                                    <td>${sp.trangThai.tentt}</td>
                                                    <td>${sp.mota}</td>
                                                    <td><a href="/product/edit/${sp.masp}">Edit</a></td>
                                                    <td>
                                                        <form action="${pageContext.request.contextPath}/product/delete/${sp.masp}" method="post" onsubmit="return confirm('Are you sure you want to delete this product?');">
                                                            <button type="submit" class="btn btn-danger">Delete</button>
                                                        </form>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
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

        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark">
            <!-- Control sidebar content goes here -->
        </aside>
        <!-- /.control-sidebar -->
    </div>
    <!-- ./wrapper -->

    <!-- jQuery and JavaScript links -->
    <script src="<c:url value='templates/admin/plugins/jquery/jquery.min.js'/>"></script>
    <script src="<c:url value='templates/admin/plugins/jquery-ui/jquery-ui.min.js'/>"></script>
    <script>$.widget.bridge('uibutton', $.ui.button)</script>
    <script src="<c:url value='templates/admin/plugins/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
    <script src="<c:url value='templates/admin/plugins/chart.js/Chart.min.js'/>"></script>
    <script src="<c:url value='templates/admin/plugins/sparklines/sparkline.js'/>"></script>
    <script src="<c:url value='templates/admin/plugins/jqvmap/jquery.vmap.min.js'/>"></script>
    <script src="<c:url value='templates/admin/plugins/jqvmap/maps/jquery.vmap.usa.js'/>"></script>
    <script src="<c:url value='templates/admin/plugins/jquery-knob/jquery.knob.min.js'/>"></script>
    <script src="<c:url value='templates/admin/plugins/moment/moment.min.js'/>"></script>
    <script src="<c:url value='templates/admin/plugins/daterangepicker/daterangepicker.js'/>"></script>
    <script src="<c:url value='templates/admin/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js'/>"></script>
    <script src="<c:url value='templates/admin/plugins/summernote/summernote-bs4.min.js'/>"></script>
    <script src="<c:url value='templates/admin/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js'/>"></script>
    <script src="<c:url value='templates/admin/dist/js/adminlte.js'/>"></script>
    <script src="<c:url value='templates/admin/dist/js/demo.js'/>"></script>
    <script src="<c:url value='templates/admin/dist/js/pages/dashboard.js'/>"></script>
    <script src="<c:url value='templates/admin/plugins/datatables/jquery.dataTables.min.js'/>"></script>
    <script src="<c:url value='templates/admin/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js'/>"></script>
    <script src="<c:url value='templates/admin/plugins/datatables-responsive/js/dataTables.responsive.min.js'/>"></script>
    <script src="<c:url value='templates/admin/plugins/datatables-responsive/js/responsive.bootstrap4.min.js'/>"></script>
    <script src="<c:url value='templates/admin/plugins/datatables-buttons/js/dataTables.buttons.min.js'/>"></script>
    <script src="<c:url value='templates/admin/plugins/datatables-buttons/js/buttons.bootstrap4.min.js'/>"></script>
    <script src="<c:url value='templates/admin/plugins/jszip/jszip.min.js'/>"></script>
    <script src="<c:url value='templates/admin/plugins/pdfmake/pdfmake.min.js'/>"></script>
    <script src="<c:url value='templates/admin/plugins/pdfmake/vfs_fonts.js'/>"></script>
    <script src="<c:url value='templates/admin/plugins/datatables-buttons/js/buttons.html5.min.js'/>"></script>
    <script src="<c:url value='templates/admin/plugins/datatables-buttons/js/buttons.print.min.js'/>"></script>
    <script src="<c:url value='templates/admin/plugins/datatables-buttons/js/buttons.colVis.min.js'/>"></script>

    <script>
        $(document).ready(function() {
            $('#example1').DataTable({
                "responsive" : true,
                "lengthChange" : false,
                "autoWidth" : false,
                "buttons" : [ "copy", "csv", "excel", "pdf", "print", "colvis" ]
            }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
        });
    </script>
    <script>
        function deleteProduct(masp) {
            if (confirm('Are you sure you want to delete this product?')) {
                fetch(`${pageContext.request.contextPath}/product/delete/${masp}`, {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded',
                        'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute('content')
                    }
                })
                .then(response => {
                    if (response.ok) {
                        alert('Product deleted successfully.');
                        location.reload();
                    } else {
                        alert('Failed to delete product.');
                    }
                });
            }
        }
    </script>
</body>
</html>

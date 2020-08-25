<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%

if (session == null || session.getAttribute("email") == null) {
	System.out.println("session is null");
    response.setHeader("cache-control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
    response.setHeader("pragma", "no-cache"); // HTTP 1.0.
    response.setDateHeader("Expires", 0);
    response.sendRedirect("/RetailNet/admin/adminlogin"); // No logged-in user found, so redirect to login page.
}
%>
    <title>Dashboard-2 | Admire</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="img/logo1.ico"/>

    <!--global styles-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/adminassets/css/components.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/adminassets/css/custom.css" />
    <!-- end of global styles-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/adminassets/vendors/chartist/css/chartist.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/adminassets/vendors/circliful/css/jquery.circliful.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/adminassets/css/pages/index.css">
    <link rel="stylesheet" href="#" id="skin_change" />
    <!-- /#wrap -->
<!-- global scripts-->
<script src="${pageContext.request.contextPath}/adminassets/js/components.js"></script>
<%-- <script src="${pageContext.request.contextPath}/adminassets/js/custom.js"></script> --%>
<!--end of global scripts-->
<!--  plugin scripts -->
<script src="${pageContext.request.contextPath}/adminassets/vendors/countUp.js/js/countUp.min.js"></script>
<script src="${pageContext.request.contextPath}/adminassets/vendors/flip/js/jquery.flip.min.js"></script>
<script src="${pageContext.request.contextPath}/adminassets/js/pluginjs/jquery.sparkline.js"></script>
<script src="${pageContext.request.contextPath}/adminassets/vendors/chartist/js/chartist.min.js"></script>
<script src="${pageContext.request.contextPath}/adminassets/js/pluginjs/chartist-tooltip.js"></script>
<script src="${pageContext.request.contextPath}/adminassets/vendors/swiper/js/swiper.min.js"></script>
<script src="${pageContext.request.contextPath}/adminassets/vendors/circliful/js/jquery.circliful.min.js"></script>
<script src="${pageContext.request.contextPath}/adminassets/vendors/flotchart/js/jquery.flot.js" ></script>
<script src="${pageContext.request.contextPath}/adminassets/vendors/flotchart/js/jquery.flot.resize.js"></script>
<!--end of plugin scripts-->

<script src="${pageContext.request.contextPath}/adminassets/js/pages/index.js"></script>

</head>
<body class="">
 <div id="top">
        <!-- .navbar -->
        <nav class="navbar navbar-static-top">
            <div class="container-fluid m-0">
                <a class="navbar-brand mr-0" href="${pageContext.request.contextPath}/admin/adminindex">
                    <h4 class="text-white"><img src="${pageContext.request.contextPath}/adminassets/img/logow.png" class="admin_img" alt="logo"> RETAIL NET ADMIN</h4>
                </a>
                <div class="menu mr-sm-auto">
                        <span class="toggle-left" id="menu-toggle">
                        <i class="fa fa-bars text-white"></i>
                    </span>
                </div>
                <div class="navbar-toggleable-sm m-lg-auto d-none d-lg-flex top_menu" id="nav-content">
                    
                </div>
                <div class="topnav dropdown-menu-right ml-auto">
                    
                    <div class="btn-group">
                        <div class="user-settings no-bg">
                            <button type="button" class="btn btn-default no-bg micheal_btn" data-toggle="dropdown">
                                <img src="${pageContext.request.contextPath}/adminassets/img/adminpic.jpg" class="admin_img2 rounded-circle avatar-img" alt="avatar"> <strong>Admin</strong>
                                <span class="fa fa-sort-down white_bg"></span>
                            </button>
                            <div class="dropdown-menu admire_admin">
                                <div class="popover-header">Admire Admin</div>
                                <a class="dropdown-item" href="${pageContext.request.contextPath}/admin/lockscreen"><i class="fa fa-lock"></i>
                                    Lock Screen</a>
                                <a class="dropdown-item" href="${pageContext.request.contextPath}/admin/adminlogin"><i class="fa fa-sign-out"></i>
                                    Log Out</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.container-fluid -->
        </nav>
        <!-- /.navbar -->
        <!-- /.head -->
    </div>
    <!-- /#top -->
</body>
</html>
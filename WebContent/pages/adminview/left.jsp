<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<title>Dashboard-2 | Admire</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<%--     <link rel="shortcut icon" href="${pageContext.request.contextPath}/adminassets/img/logo1.ico"/> --%>

    <!--global styles-->
<%--     <link rel="stylesheet" href="${pageContext.request.contextPath}/adminassets/css/components.css" /> --%>
<%--     <link rel="stylesheet" href="${pageContext.request.contextPath}/adminassets/css/custom.css" /> --%>
    <!-- end of global styles-->
<%--     <link rel="stylesheet" href="${pageContext.request.contextPath}/adminassets/vendors/chartist/css/chartist.min.css" /> --%>
<%--     <link rel="stylesheet" href="${pageContext.request.contextPath}/adminassets/vendors/circliful/css/jquery.circliful.css"> --%>
<%--     <link rel="stylesheet" href="${pageContext.request.contextPath}/adminassets/css/pages/index.css"> --%>
<!--     <link rel="stylesheet" href="#" id="skin_change" /> -->
    <!-- /#wrap -->
<!-- global scripts-->
<%-- <script src="${pageContext.request.contextPath}/adminassets/js/components.js"></script> --%>
<script src="${pageContext.request.contextPath}/adminassets/js/custom.js"></script>
<!--end of global scripts-->
<!--  plugin scripts -->
<%-- <script src="${pageContext.request.contextPath}/adminassets/vendors/countUp.js/js/countUp.min.js"></script> --%>
<%-- <script src="${pageContext.request.contextPath}/adminassets/vendors/flip/js/jquery.flip.min.js"></script> --%>
<%-- <script src="${pageContext.request.contextPath}/adminassets/vjs/pluginjs/jquery.sparkline.js"></script> --%>
<%-- <script src="${pageContext.request.contextPath}/adminassets/vendors/chartist/js/chartist.min.js"></script> --%>
<%-- <script src="${pageContext.request.contextPath}/adminassets/js/pluginjs/chartist-tooltip.js"></script> --%>
<%-- <script src="${pageContext.request.contextPath}/adminassets/vendors/swiper/js/swiper.min.js"></script> --%>
<%-- <script src="${pageContext.request.contextPath}/adminassets/vendors/circliful/js/jquery.circliful.min.js"></script> --%>
<%-- <script src="${pageContext.request.contextPath}/adminassets/vendors/flotchart/js/jquery.flot.js" ></script> --%>
<%-- <script src="${pageContext.request.contextPath}/adminassets/vendors/flotchart/js/jquery.flot.resize.js"></script> --%>
<!--end of plugin scripts-->

<script src="${pageContext.request.contextPath}/adminassets/js/pages/index.js"></script>
</head>
<body>
<div id="left">
            <div class="menu_scroll">
                <div class="media user-media">
                    <div class="user-media-toggleHover">
                        <span class="fa fa-user"></span>
                    </div>
                    <div class="user-wrapper">
                        <a class="user-link" href="#">
                            <img class="media-object img-thumbnail user-img rounded-circle admin_img3" alt="User Picture" src="${pageContext.request.contextPath}/adminassets/img/adminpic.jpg">
                            <p class="text-white user-info">Welcome Admin</p>
                        </a>
                        <div class="search_bar col-lg-12">
                            <div class="input-group">
                                <input type="search" class="form-control " placeholder="search">
                                <span class="input-group-btn">
                                    <button class="btn" type="button"><span class="fa fa-search" >
                                    </span></button>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- #menu -->
                <ul id="menu">
                    
                    <li >
                        <a href="${pageContext.request.contextPath}/admin/adminindex">
                            <i class="fa fa-home"></i>
                            <span class="link-title menu_hide">&nbsp;Dashboard</span>
                        </a>
                    </li>
                 
                     <li class="dropdown_menu">
                        <a href="#">
                            <i class="fa fa-user"></i>
                            <span class="link-title menu_hide">&nbsp; Users</span>
                            <span class="fa arrow menu_hide"></span>
                        </a>
                        <ul>
                            <li>
                                <a href="${pageContext.request.contextPath}/admin/Activeusergrid">
                                    <i class="fa fa-angle-right"></i> &nbsp; Active User Grid
                                </a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/admin/Adduserbyadmin">
                                    <i class="fa fa-angle-right"></i> &nbsp; Add User
                                </a>
                            </li>
                        
                            <li>
                                <a href="${pageContext.request.contextPath}/admin/Inactiveusergrid">
                                    <i class="fa fa-angle-right"></i> &nbsp; Inactive User Grid
                                </a>
                            </li>
                        </ul>
                    </li>
                     <li class="dropdown_menu">
                        <a href="#">
                            <i class="fa fa-user"></i>
                            <span class="link-title menu_hide">&nbsp; Products</span>
                            <span class="fa arrow menu_hide"></span>
                        </a>
                        <ul>
                            <li>
                                <a href="${pageContext.request.contextPath}/admin/Activeproductgrid">
                                    <i class="fa fa-angle-right"></i> &nbsp; Active Products
                                </a>
                            </li>
                           
                            
                            <li>
                                <a href="${pageContext.request.contextPath}/admin/Inactiveproductgrid">
                                    <i class="fa fa-angle-right"></i> &nbsp; Inactive Products
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown_menu">
                        <a href="#">
                            <i class="fa fa-user"></i>
                            <span class="link-title menu_hide">&nbsp; Firms </span>
                            <span class="fa arrow menu_hide"></span>
                        </a>
                        <ul>
                            <li>
                                <a href="${pageContext.request.contextPath}/admin/Firmgrid">
                                    <i class="fa fa-angle-right"></i> &nbsp; Firm Grid
                                </a>
                            </li>
                           
                        </ul>
                    </li>
                    
                    <li class="dropdown_menu">
                        <a href="#">
                            <i class="fa fa-envelope-o"></i>
                            <span class="link-title menu_hide">&nbsp; Messages</span>
                            <span class="fa arrow menu_hide"></span>
                        </a>
                        <ul>
                             <li>
                                <a href="${pageContext.request.contextPath}/admin/messagegrid">
                                    <i class="fa fa-angle-right"></i> &nbsp; View User Messages
                                </a>
                            </li>
                            
                            
                        </ul>
                    </li>
                    
                    
                    
                   
                    
                </ul>
                <!-- /#menu -->
            </div>
        </div>
        <!-- /#left -->
</body>
</html>
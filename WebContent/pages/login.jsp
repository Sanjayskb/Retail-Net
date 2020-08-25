<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<%

if (session == null || session.getAttribute("username") == null) {
	System.out.println("session is null");
    response.setHeader("cache-control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
    response.setHeader("pragma", "no-cache"); // HTTP 1.0.
    response.setDateHeader("Expires", 0);
}
        
        
%>
	<meta charset="ISO-8859-1">
	<title>Login</title>
	  <meta charset="UTF-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	  <meta http-equiv="X-UA-Compatible" content="ie=edge">
	  <title>Aroma Shop - Home</title>
		<link rel="icon" href="${pageContext.request.contextPath}/assets/img/Fevicon.png" type="image/png">
	  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendors/bootstrap/bootstrap.min.css">
	  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendors/fontawesome/css/all.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendors/themify-icons/themify-icons.css">
	  <%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendors/nice-select/nice-select.css"> --%>
	  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendors/owl-carousel/owl.theme.default.min.css">
	  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendors/owl-carousel/owl.carousel.min.css">
	
	  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
	  
	  <script src="${pageContext.request.contextPath}/assets/vendors/jquery/jquery-3.2.1.min.js"></script>
	  <script src="${pageContext.request.contextPath}/assets/vendors/bootstrap/bootstrap.bundle.min.js"></script>
	  <script src="${pageContext.request.contextPath}/assets/vendors/skrollr.min.js"></script>
	  <script src="${pageContext.request.contextPath}/assets/vendors/owl-carousel/owl.carousel.min.js"></script>
	  <script src="${pageContext.request.contextPath}/assets/vendors/nice-select/jquery.nice-select.min.js"></script>
	  <script src="${pageContext.request.contextPath}/assets/vendors/jquery.ajaxchimp.min.js"></script>
	  <script src="${pageContext.request.contextPath}/assets/vendors/mail-script.js"></script>
	  <script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
 
</head>
<body>
	<header class="header_area" style="background-color: white;">
	<div class="main_menu">
      <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
        <a class="navbar-brand logo_h" href="#"><img src="${pageContext.request.contextPath}/assets/img/retlogo.png" alt=""></a>
        </div>
        </nav>
        </div>
	</header>
	
	 <!-- ================ start banner area ================= -->	
	<section class="blog-banner-area" id="category" style="height:150px;">
		<div class="container h-100">
			<div class="blog-banner">
				<div class="text-center">
					<h1>Login / Register</h1>
					<nav aria-label="breadcrumb" class="banner-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="#">Login</a></li>
              <li class="breadcrumb-item active" aria-current="page">Login/Register</li>
            </ol>
          </nav>
				</div>
			</div>
    </div>
	</section>
	<!-- ================ end banner area ================= -->
  
  <!--================Login Box Area =================-->
	<section class="login_box_area section-margin">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="login_box_img">
						<div class="hover">
							<h4>New to our website?</h4>
							<p>There are advances being made in science and technology everyday, and a good example of this is the</p>
							<a class="button button-account" href="${pageContext.request.contextPath}/user/register">Create an Account</a>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="login_form_inner">
						<h3>Log in to enter</h3>
						<c:if test="${not empty message}">
							<h4>${message}</h4>
						</c:if>
						<c:if test="${not empty error}">
							<h4 style="color:red;">${error}</h4>
						</c:if>
						<form class="row login_form" action="${pageContext.request.contextPath}/user/loginAction" id="contactForm" method="post">
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="username" name="username" placeholder="Username" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Username'" required="required">
							</div>
							<div class="col-md-12 form-group">
								<input type="password" class="form-control" id="password" name="password" placeholder="Password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password'" required="required">
							</div>
							
							<div class="col-md-12 form-group">
								<button type="submit" value="submit" class="button button-login w-100">Log In</button>
								<a href="${pageContext.request.contextPath}/user/forgot">Forgot Password?</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Login Box Area =================-->
	
	 <!--================ Start footer Area  =================-->	
	<jsp:include page="footer.jsp"/>
	<!--================ End footer Area  =================-->
</body>
</html>
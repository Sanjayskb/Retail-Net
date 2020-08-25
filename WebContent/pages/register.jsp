<%@page import="com.retailnet.user.UserType"%>
<%@page import="java.util.ArrayList, com.retailnet.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Register</title>
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
<script type="text/javascript">
$(document).ready(function(){
	console.log("page loaded");
	$('#userTypeId').show();
	$('#userTypeId').siblings('.nice-select').remove();
	
});
</script>
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
					<h1>Register</h1>
					<nav aria-label="breadcrumb" class="banner-breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="#">Home</a></li>
							<li class="breadcrumb-item active" aria-current="page">Register</li>
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
							<h4>Already have an account?</h4>
							<p>There are advances being made in science and technology
								everyday, and a good example of this is the</p>
							<a class="button button-account" href="${pageContext.request.contextPath}/user/login">Login Now</a>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="login_form_inner register_form_inner">
						<h3>Create an account</h3>
						<form class="row login_form" action="${pageContext.request.contextPath}/user/registerAction" method="post" id="register_form">
							
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="firstname" name="firstname"
									placeholder="First Name" onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'First Name'">
							</div>
							
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="lastname" name="lastname"
									placeholder="Last Name" onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'Last Name'">
							</div>
							
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="email" name="email"
									placeholder="Email Address" onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'Email Address'">
							</div>
							
							<div class="col-md-12 form-group">
								<input type="tel" class="form-control" id="contactNo" name="contactNo"
									placeholder="Contact No." onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'Contact No.'"  >
							</div>
							
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="username" name="username"
									placeholder="Username" onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'Username'">
							</div>
							
							<div class="col-md-12 form-group">
								<input type="password" class="form-control" id="password"
									name="password" placeholder="Password"
									onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'Password'">
							</div>
							
							<div class="col-md-12 form-group">
								<input type="password" class="form-control" id="confirmPassword"
									name="confirmPassword" placeholder="Confirm Password"
									onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'Confirm Password'">
							</div>
							
							<div class="col-md-12 form-group">
								<b style="float: left;">User Type :</b>
								<select name="userTypeId" id="userTypeId" class="form-control">
									<c:forEach var="userType" items="${userTypes}">
											<option value="${userType.userTypeId }">${userType.userTypeText }</option>
										</c:forEach>
								</select>
							</div>
							
							<input type="hidden" value="1" name="status" id="status">
							
							<div class="col-md-12 form-group">
								<button type="submit" value="submit"
									class="button button-register w-100">Register</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Login Box Area =================-->



	<!--================ Start footer Area  =================-->
	<jsp:include page="footer.jsp" />
	<!--================ End footer Area  =================-->


</body>
</html>

<%@page import="java.util.ArrayList, com.retailnet.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="ISO-8859-1">
	<title>Forgot Password</title>
	  <meta charset="UTF-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	  <meta http-equiv="X-UA-Compatible" content="ie=edge">
	  <title>Aroma Shop - Home</title>
		<link rel="icon" href="${pageContext.request.contextPath}/assets/img/Fevicon.png" type="image/png">
	  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendors/bootstrap/bootstrap.min.css">
	  <%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendors/bootstrap/bootstrap3.2.min.css"> --%>
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
	  <%-- <script src="${pageContext.request.contextPath}/assets/vendors/nice-select/jquery.nice-select.min.js"></script> --%>
	  <script src="${pageContext.request.contextPath}/assets/vendors/jquery.ajaxchimp.min.js"></script>
	  <script src="${pageContext.request.contextPath}/assets/vendors/mail-script.js"></script>
	  <script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
</head>
<body>
	

	<!-- ================ start banner area ================= -->
	<section class="blog-banner-area" id="category">
		<div class="container ">
			<div class="blog-banner">
				<div class="text-center">
					<h1>Forgot Password</h1>
					
				</div>
			</div>
		</div>
	</section>
	<!-- ================ end banner area ================= -->

	<!--================Login Box Area =================-->
	<section class="login_box_area section-margin">
		<div class="container">
			
				<div class="text-center">
					<div class="login_form_inner register_form_inner">
						
                        <form action="${pageContext.request.contextPath}/user/forgotPassword"  method="post"
                          class="form-group ">
                        <div class="bg-white login_content login_border_radius">
                            <div class="form-group">
                                <label > Enter your Username </label>
                                <div class="input-group">
                            <span class="input-group-addon "><i
                                    class="fa fa-user text-primary"></i></span>
                                    <input type="text" class="form-control "
                                           id="username" name="username" placeholder="Username">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="email_modal"> Enter Your E-mail Id </label>
                                <div class="input-group">
                            <span class="input-group-addon addon_email"><i
                                    class="fa fa-envelope text-primary"></i></span>
                                    <input type="text" class="form-control email_forgot form-control-md"
                                           id="email_id" name="email_id" placeholder="E-mail">
                                </div>
                            </div>
                            
                            <div class="form-group form-actions">
                                <button type="submit" class="btn btn-primary submit_email login_button" >Submit
                                </button>
                            </div>
                        </div>
                    </form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Login Box Area =================-->



	


</body>
</html>
							
		
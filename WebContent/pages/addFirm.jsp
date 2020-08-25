<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.retailnet.location.Cities"%>
   
<%@page import="java.util.ArrayList, com.retailnet.*"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 	   

<!DOCTYPE html>
<html lang="en">
<head>
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

	$('#state_id').show();
	$('#cityId').show();
	$('#state_id').siblings('.nice-select').remove();
	$('#cityId').siblings('.nice-select').remove();
	
	$('#state_id').on('change', function(){
 		$('#cityId').find('option').remove();
 		
 		var optionSelected = $("option:selected", this);
	    var stateId = this.value;
		console.log("state Id :", stateId);
		
		var inputData = "state_id="+stateId;
		
		$.ajax({
			'type' : 'POST',
			'url' : '/RetailNet/Location/rest/fetchcitybystateid',
			'data': inputData,
			
			'success' : function(data, status){
				console.log(data);
				dataObj = JSON.parse(data);
				console.log(dataObj);
				for(var i=0; i<dataObj.length; i++){
					
					$('#cityId').append("<option value='"+dataObj[i].city_id+"'>"+dataObj[i].city_name+"</option>");
				}
				
			},
			'error' : function(data, status){
				alert("something went wrong while fetching cities");
			}
		}); 
		
	});
});
</script>

<body>


	<!-- ================ start banner area ================= -->
	<section class="blog-banner-area" id="category">
		<div class="container h-100">
			<div class="blog-banner">
				<div class="text-center">
					<h1>${user.userType.userTypeText }-Register</h1>
					<nav aria-label="breadcrumb" class="banner-breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="#">Home</a></li>
							<li class="breadcrumb-item active" aria-current="page">Register further</li>
							<li class="breadcrumb-item active" aria-current="page">${user.userType.userTypeText }-Register</li>
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
						<h3>Account further Registration</h3>
						<form class="row login_form" action="${pageContext.request.contextPath}/user/registerAction2" method="post" id="register_form2">
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="firmName" name="firmName"
									placeholder="Firm Name" onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'Firm Name'">
							</div>
							
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="firmEmail" name="firmEmail"
									placeholder="Firm Email Address" onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'Firm Email Address'">
							</div>
							
							<div class="col-md-12 form-group">
								<input type="tel" class="form-control" id="firmContactNo" name="firmContactNo"
									placeholder="Firm Contact No." onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'Firm Contact No.'"  >
							</div>
							
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="gstNo" name="gstNo"
									placeholder="GST No" onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'GST No'">
							</div>
							
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="panNo" name="panNo"
									placeholder="PAN No" onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'PAN No'">
							</div>
							
								<div class="col-md-12 form-group">
								<b style="float: left;">Select State :</b>
								<select id="state_id" name="state_id" class="form-control">
								<option>--Select--</option>
								<c:forEach var="State" items="${states}">
											<option value="${State.stateId }">${State.stateName }</option>
										</c:forEach>
								</select>
							</div>
							<div class="col-md-12 form-group">
								<b style="float: left;">Select City :</b>
								<select name="cityId" id="cityId" class="form-control">
								<option>--Select--</option>
								
								</select>
							</div>
							
							<input type="hidden" value="1" name="status" id="status">
							
							<div class="col-md-12 form-group">
								<button type="submit" value="submit"
									class="button button-register w-100">Register As ${user.userType.userTypeText }</button>
							</div>
						<!-- 	<div>
							<input type="hidden" class="form-control" id="hiddenField"<c:out value="${userId}"></c:out>/>
							</div>  -->
						
							
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
							
		</html>
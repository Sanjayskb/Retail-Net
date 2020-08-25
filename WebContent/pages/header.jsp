<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>


<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.nav-item a1:hover {
	color:#384aeb;
}



</style>
<%

if (session == null || session.getAttribute("username") == null) {
	System.out.println("session is null");
    response.setHeader("cache-control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
    response.setHeader("pragma", "no-cache"); // HTTP 1.0.
    response.setDateHeader("Expires", 0);
    response.sendRedirect("/RetailNet/user/login"); // No logged-in user found, so redirect to login page.
}
        
        
%>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	  <meta charset="UTF-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	  <meta http-equiv="X-UA-Compatible" content="ie=edge">
	  <title>Aroma Shop - Home</title>
		<link rel="icon" href="${pageContext.request.contextPath}/assets/img/Fevicon.png" type="image/png">
	  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendors/bootstrap/bootstrap.min.css">
	  <%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendors/bootstrap/bootstrap3.2.min.css"> --%>
	  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendors/fontawesome/css/all.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendors/themify-icons/themify-icons.css">
	  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendors/nice-select/nice-select.css">
	  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendors/owl-carousel/owl.theme.default.min.css">
	  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendors/owl-carousel/owl.carousel.min.css">
	
	  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
	   <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/categoriesonly.css">
	  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/cssd.css">
<%-- 	  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/owl.carousel.css"> --%>
	  
	  <script src="${pageContext.request.contextPath}/assets/vendors/jquery/jquery-3.2.1.min.js"></script>
	  <script src="${pageContext.request.contextPath}/assets/vendors/bootstrap/bootstrap.bundle.min.js"></script>
	  <script src="${pageContext.request.contextPath}/assets/vendors/skrollr.min.js"></script>
	  <script src="${pageContext.request.contextPath}/assets/vendors/owl-carousel/owl.carousel.min.js"></script>
	  <script src="${pageContext.request.contextPath}/assets/vendors/nice-select/jquery.nice-select.min.js"></script>
	  <script src="${pageContext.request.contextPath}/assets/vendors/jquery.ajaxchimp.min.js"></script>
	  <script src="${pageContext.request.contextPath}/assets/vendors/mail-script.js"></script>
	  <script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
<%-- 	  <script src="${pageContext.request.contextPath}/assets/js/custom.js"></script> --%>
<%-- 	  <script src="${pageContext.request.contextPath}/assets/js/rocketloader.js"></script> --%>
 
</head>

<body>
<script> 
$(document).ready(function(){
	
	$.ajax({
		'type' : 'POST',
		'url' : '/RetailNet/Sector/rest/fetchheadercategories',
		'data': "",
		
		'success' : function(data, status){
			//console.log(data);
			dataObj = JSON.parse(data);
			console.log(dataObj.length);
			var sectorHTML = "";
			for(var i=0; i<dataObj.length; i++){
				var sectorGroup = dataObj[i];
				var category = "";
				sectorHTML += '<li class="current">';
				
				sectorHTML += '<div class="title" id="div1">';
				for(var j=0; j<sectorGroup.length; j++){	
					sectorHTML += '<a class="a2" href="${pageContext.request.contextPath}/sector/sectorpage/'+sectorGroup[j].sector_id+'">'+sectorGroup[j].sector+'</a> / ';
					category += sectorGroup[j].sector + "/";	
				}
				sectorHTML = sectorHTML.substring(0, sectorHTML.length - 2);
				sectorHTML += '<i class="fa fa-angle-right"></i>';
				sectorHTML += "</div>";
				
				//$('#li1').append('<div>').append('<a href="${pageContext.request.contextPath}/sector/sectorpage/${Sectors.sectorId}">'+category+'</a>').append('</div>')
				///////////// Above code is ready /////////////////
				sectorHTML += '<div class="level-one-list">';
				sectorHTML += '<div class="level-one-inner">';
				
				for(var j=0; j<sectorGroup.length; j++){
					sectorHTML += '<div class="level-one">';
					sectorHTML += '<a href="#" class="level-one-title">'+sectorGroup[j].sector+'</a>';
					sectorHTML += '<div class="level-two-list">';
					
					for(var k=0; k<sectorGroup[j].categories.length; k++){
						sectorHTML += '<a class="level-two-title" href="${pageContext.request.contextPath}/sector/categorypage/'+sectorGroup[j].categories[k].id+'" class="level-two-title">'+sectorGroup[j].categories[k].name+'</a>';
					}
					sectorHTML += '</div>';
					sectorHTML += '</div>';
				}
				
				sectorHTML += '</div>';
				sectorHTML += '</div>';
				
				sectorHTML += '</li>';
				//$('#li1').append(sectorHTML);
			  // $('\n')
				
			}
			$('#ul1').append(sectorHTML);
			$('#product_category').trigger('change');
			
		},
		'error' : function(data, status){
			alert("something went wrong while fetching categories");
		}
		
	});
});
	
// 	$('.title').tooltip({
// 		title:fetchData,
// 		html:true
// 	});
// 	$('#title').on('mouseover', function(){
// 		var optionSelected = $("option:selected", this);
// 	    var sectorId = this.value;
// 		console.log("sector id :", sectorId);
// 		var inputData = "sector_id="+sectorId;
// 		$.ajax({
// 			'type' : 'POST',
// 			'url' : '/RetailNet/Sector/rest/fetchcategorybysectorid',
// 			'data': inputData,
			
// 			'success' : function(data, status){
// 				console.log(data);
// 				dataObj = JSON.parse(data);
// 				console.log(dataObj);
// 				for(var i=0; i<dataObj.length; i++){
					
// 					$('#level-two-title').append("<a>"+dataObj[i].category_name+"</a>");
// 				}
// 				$('#product_category').trigger('change');
				
// 			},
// 			'error' : function(data, status){
// 				alert("something went wrong while fetching categories");
// 			}
// 		});
// 	});
	
$(document).ready(function(){
	
	$.ajax({
		'type' : 'GET',
		'url' : '/RetailNet/Cart/rest/fetchcartofuserbyuserid',
		'data': "",
		
		'success' : function(data, status){
			console.log(data);
			
			$('#cart1').append(data);
		}
	});
});
	
	
$(document).ready(function(){
	
	$.ajax({
		'type' : 'GET',
		'url' : '/RetailNet/Order/rest/fetchinquiriesofuserbyuserid',
		'data': "",
		
		'success' : function(data, status){
// 			console.log(data);
			
			$('#orders1').append(data);
		}
	});
});

$(document).ready(function(){
	$('#searchheader').hide();
	var cnt = 0;
	
	//var search = "";
	//search += '<div class="main_menu"><nav class="navbar navbar-expand-lg navbar-light"><div class="container"><form><input  type="text" name="search" placeholder="Search.." style=""></form></div></nav></div>';
	
	$('#searchbtn').on('click', function(){
		cnt = cnt +1;
		if(cnt%2 != 0 )
			{
			$('#searchheader').show();	
			}
		if(cnt%2 == 0 )
			{
			$('#searchheader').hide();		
			}
		//$('#searchheader').css({"height": "80px", "z-index": "999", "background-color": "white"});
		//$('.search').css({"width": "130px","box-sizing": "border-box","border": "2px solid #ccc","border-radius": "4px","font-size": "16px","background-color": "white","background-position": "10px 10px","background-repeat": "no-repeat","padding": "12px 20px 12px 40px","-webkit-transition": "width 0.4s ease-in-out","transition": "width 0.4s ease-in-out"})
// 		$('#searchheader').append(search);
		
	});
	
	$('#close_search').on('click', function(){
		$('#searchheader').hide();
		cnt = 0;
	});
	
});

$(document).ready(function(){
	$('#searchselect').on('change', function(){
		var optionSelected = $("option:selected", this);
	    var searchvalue = this.value;
		console.log("To search :", searchvalue);
		if(searchvalue == 'products')
			{
			$('#searchform').attr('action', '${pageContext.request.contextPath}/products/search');
			}
		else
			{
			$('#searchform').attr('action', '${pageContext.request.contextPath}/user/searchfirm');
			}
	});
	
});

</script>

 <!--================ Start Header Menu Area =================-->
	<header class="header_area" style="background-color: white;">
    <div class="main_menu">
      <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
          <a class="navbar-brand logo_h" href="${pageContext.request.contextPath}/user/index"><img src="${pageContext.request.contextPath}/assets/img/retlogo.png" alt=""></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
            <ul class="nav navbar-nav menu_nav ml-auto mr-auto">
              <li class="nav-item active"><a class="nav-link" href="${pageContext.request.contextPath}/user/index">Home</a></li>
              <li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                  aria-expanded="false">Shop</a>
                <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/products/browseother">Browse All</a></li>
                  <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/sector/allcategoriespage">Shop By Categories</a></li>
                  <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/sector/supplierpage">Shop By Suppliers</a></li>
                  <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/sector/allfirmsbylocation">Shop By Location</a></li>
           
                </ul>
							</li>
              <li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                  aria-expanded="false">Cart and Inquiries</a>
                <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/cart/mycart">My cart</a></li>
                  <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/order/myinquiries">My Inquiries</a></li>
                </ul>
							</li>
							<li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                  aria-expanded="false">My firm</a>
                <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/sector/myfirm">My Page</a></li>
                  <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/products/addProduct">Add Product</a></li>
                  <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/products/myproducts">My Products</a></li>
                </ul>
              </li>
              <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/user/contactus">Help</a></li>
            </ul>

            <ul class="nav-shop">
            
              <li class="nav-item"><button id="searchbtn" name="searchbtn"><i class="ti-search"></i></button></li>
              <li class="nav-item"><form action="${pageContext.request.contextPath}/cart/mycart"><button class="a1"><abbr title="My Cart"><i class="ti-shopping-cart"></i></abbr><span class="nav-shop__circle" id="cart1"></span><span  style="vertical-align: bottom;display: inline-block; font-size: 14px;"></span></button></form> </li>
              <li class="nav-item"><form action="${pageContext.request.contextPath}/order/myinquiries"><button class="a1" ><abbr title="Inquiries"><i class="ti-archive"></i></abbr><span class="nav-shop__circle" id="orders1"></span><span  style="vertical-align: bottom;display: inline-block;font-size: 14px;"></span></button></form> </li>
              <li class="nav-item"><div class="btn-group">
                        <div class="user-settings no-bg">
                            <button type="button" class="btn btn-default no-bg micheal_btn" data-toggle="dropdown" aria-expanded="false">
                               <i class="fa fa-user" style="color:#3333cc;" aria-hidden="true"></i> Hi  <% out.print(session.getAttribute("username")); %>
                                <span class="fa fa-sort-down white_bg"></span>
                            </button>
                            <div class="dropdown-menu admire_admin">
                                <div class="popover-header">Your Account</div>
                                <a class="dropdown-item" href="${pageContext.request.contextPath}/user/editprofile"><i class="fa fa-cogs" style="color:#3333cc;"></i>
                                    Edit Profile</a>
                                <a class="dropdown-item" href="${pageContext.request.contextPath}/user/youraccount">
                                    <i class="fa fa-user" style="color:#3333cc;"></i> Your Account
                                </a>
                                <a class="dropdown-item" href="mail_inbox.html"><i class="fa fa-envelope" style="color:#3333cc;"></i>
                                    Inbox</a>
                                <a class="dropdown-item" href="lockscreen.html"><i class="fa fa-lock" style="color:#3333cc;"></i>
                                    Lock Screen</a>
                                <a class="dropdown-item" href="${pageContext.request.contextPath}/user/logOutAction"><i class="fa fa-sign-out" style="color:#3333cc;"></i>
                                    Log Out</a>
                            </div>
                        </div>
                    </div>
                    </li>
            </ul>
          </div>
        </div>
      </nav>
    </div>
  </header>
  
  <div style="background: #E6E7EB;height: 2px;width: 100%; "></div>
  
  <header class="header_area" id="searchheader" name="searchheader" style="max-height: 80px; z-index: 999; background-color: white;">
   <div class="main_menu">
      <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
        <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
  <form method="get" id="searchform" action="${pageContext.request.contextPath}/products/search" style="border: 2px solid blue;border-radius: 4px;-webkit-transition: width 0.4s ease-in-out; transition: width 0.4s ease-in-out;background-color:blue;width: 1200px;">
  <select id="searchselect" name="searchselect" >
  <option selected>Products</option>
  <option>Suppliers</option>
  </select>
  <input id="searchkeywords" type="text" name="searchkeywords" placeholder="Search.." style="border:0px; width: 1000px;font-size: 16px;background-color: white;padding: 12px 20px 12px 40px;color:blue;">
  <span class="ti-close" id="close_search" title="Close Search" style="padding: 12px 20px 12px 40px; border:0px;color:white;"></span>
  </form>
</div>
  </div>
  </nav>
  </div>
  </header>
  
  <div style="background: #E6E7EB;height: 2px;width: 100%; "></div>
  
<header class="header_area" style="max-height: 80px; z-index: 888; background-color: white;">
    <div class="main_menu">
      <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
          <div class="collapse navbar-collapse offset" id="navbarSupportedContent">

            
            <div class="header-category-wrapper trigger-active">
	<h3 class="header-category-trigger">
		<span>Categories</span>
		<i class="fa fa-angle-down"></i>
		<i class="sc-hd-prefix2-icon sc-hd-prefix2-icon-arrow-down sc-hd-prefix2-icon-xs"></i>
	</h3>
	<div class="header-category">
		<ul class="component-list" id="ul1">

			</ul>
	</div>
</div>
<div class="header-category-wrapper trigger-active">
<h3 class="header-category-trigger">
<a href="${pageContext.request.contextPath}/sector/supplierpage" style="color:black;">Suppliers</a>
</h3>
</div>

        </div>
        
        </div>
      </nav>
    </div>
  </header>
	<!--================ End Header Menu Area =================-->
	
</body>
</html>

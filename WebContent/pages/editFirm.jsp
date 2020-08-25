<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page import="com.retailnet.user.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Firm</title>
 <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/cssd2.css">
</head>
<body>


<!--================ Start Header Menu Area =================-->
	 <jsp:include page="header.jsp" /> 
<!--================ End Header Menu Area =================-->
<script type="text/javascript">
$(document).ready(function(){
	var firmId = ${firm.firmId}
	$('#addImagesBtn').on('click', function(){
		console.log(firmId);
		var addImageWindow = window.open("/RetailNet/user/addImage/?pid="+firmId, "addImage", "config='height=670,width=1400,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,directories=no,status=no'");
	});
});

</script>
<main class="site-main">

<!-- ================ start banner area ================= -->	
	<section class="blog-banner-area" id="category">
		<div class="container h-100">
			<div class="blog-banner">
				<div class="text-center">
					<h1>Edit Firm</h1>
					<nav aria-label="breadcrumb" class="banner-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="#">Home </a></li> 
              <li class="breadcrumb-item active" aria-current="page">EditFirm</li>
            </ol>
          </nav>
				</div>
			</div>
    </div>
	</section>
	<!-- ================ end banner area ================= -->
	
	<div class="a-container">
      <div class="a-section auth-pagelet-desktop-wide-container">
        
<div class="a-section auth-pagelet-desktop-wide-container">
  
  <ol id="breadcrumb_CNEP" class="a-ordered-list a-horizontal">
    <li><span class="a-list-item">
      <a class="a-link-normal" href="/gp/css/homepage.html">
        Your Account
      </a>
    </span></li>
    <li><span class="a-list-item">
      -
    </span></li>
      
        <li><span class="a-list-item a-color-state">
          Editing Firm Details
        </span></li>
      
    
  </ol>

<h1 id="ap_cnep_header" class="a-spacing-small">
  
       Editing User Details 
</h1>
<div class="a-section">
  <div class="a-box a-vertical"><div class="a-box-inner a-padding-none"><ul class="a-unordered-list a-nostyle a-box-list">
    <li><span class="a-list-item">
      


<!-- Set in request scope so that this variable is available to to CNEPMenuItem.jsp -->

	<div class="a-section a-padding-medium">
  	<form id="cnep_1a_name_form" method="get" action="${pageContext.request.contextPath}/user/editfirmfurther">

  
    
    
      <input type="hidden" name="action" value="editname">
 

    <div class="a-fixed-right-grid"><div class="a-fixed-right-grid-inner" style="padding-right:70px">
      <div class="a-fixed-right-grid-col a-col-left" style="padding-right:5%;float:left;">
        <div class="a-row">
          <span class="a-text-bold">
            Name:
          </span>
        </div>
        
          <div class="a-row">
            <c:out value='${firm.firmName}'/>
          </div>
                
      </div>     
        <div class="a-fixed-right-grid-col a-col-right" style="width:70px;margin-right:-70px;float:left;">
          <div class="a-row">
            <span class="a-button a-button-span12 a-button-base" style="color: #4747d1" id="a-autoid-0"><span class="a-button-inner"><input id="auth-cnep-edit-name-button" class="a-button-input" type="submit" aria-labelledby="a-autoid-0-announce"><span class="a-button-text"   aria-hidden="true" id="a-autoid-0-announce">
              Edit
            </span></span></span>
          </div>        
        </div>
     
    </div></div>
  </form>
</div>



    </span></li>
    
    
    
    
      
        <li><span class="a-list-item">
          
          
<div class="a-section a-padding-medium">
  <form id="cnep_1a_email_form" method="get" action="${pageContext.request.contextPath}/user/editfirmfurther">

  
    
    
      <input type="hidden" name="action" value="editemail">


    <div class="a-fixed-right-grid"><div class="a-fixed-right-grid-inner" style="padding-right:70px">
      <div class="a-fixed-right-grid-col a-col-left" style="padding-right:5%;float:left;">
        <div class="a-row">
          <span class="a-text-bold">
            E-mail:
          </span>
        </div>
        
          <div class="a-row">
            <c:out value='${firm.firmEmail}'/>
          </div>
        
   
      </div>

      
        <div class="a-fixed-right-grid-col a-col-right" style="width:70px;margin-right:-70px;float:left;">
          <div class="a-row">
            <span class="a-button a-button-span12 a-button-base" id="a-autoid-1"><span class="a-button-inner"><input id="auth-cnep-edit-email-button" class="a-button-input" type="submit" aria-labelledby="a-autoid-1-announce"><span class="a-button-text" aria-hidden="true" id="a-autoid-1-announce">
              Edit
            </span></span></span>
          </div>
          
        </div>
      
    </div></div>
  </form>
</div>

        </span></li>
             
<li><span class="a-list-item">


<div class="a-section a-padding-medium">
  <form id="cnep_1a_mobile_phone_form" method="get" action="${pageContext.request.contextPath}/user/editfirmfurther">

  
    
    
      <input type="hidden" name="action" value="editphone">

    <div class="a-fixed-right-grid"><div class="a-fixed-right-grid-inner" style="padding-right:70px">
      <div class="a-fixed-right-grid-col a-col-left" style="padding-right:5%;float:left;">
        <div class="a-row">
          <span class="a-text-bold">
            Mobile Phone Number:
          </span>
        </div>
        
          <div class="a-row">
            <c:out value='${firm.firmContactNo}'/>
          </div>
 
      </div>

      
        <div class="a-fixed-right-grid-col a-col-right" style="width:70px;margin-right:-70px;float:left;">
          <div class="a-row">
            <span class="a-button a-button-span12 a-button-base" id="a-autoid-2"><span class="a-button-inner"><input id="auth-cnep-edit-phone-button" class="a-button-input" type="submit" aria-labelledby="a-autoid-2-announce"><span class="a-button-text" aria-hidden="true" id="a-autoid-2-announce">
              Edit
            </span></span></span>
          </div>
          
        </div>
      
    </div></div>
  </form>
</div>

            </span></li>
          

      <li><span class="a-list-item">


<div class="a-section a-padding-medium">
  <form id="cnep_1a_mobile_phone_form" method="get" action="${pageContext.request.contextPath}/user/editfirmfurther">

  
    
    
      <input type="hidden" name="action" value="editpan">

    <div class="a-fixed-right-grid"><div class="a-fixed-right-grid-inner" style="padding-right:70px">
      <div class="a-fixed-right-grid-col a-col-left" style="padding-right:5%;float:left;">
        <div class="a-row">
          <span class="a-text-bold">
          PAN Number:
          </span>
        </div>
        
          <div class="a-row">
            <c:out value='${firm.panNo}'/>
          </div>
 
      </div>

      
        <div class="a-fixed-right-grid-col a-col-right" style="width:70px;margin-right:-70px;float:left;">
          <div class="a-row">
            <span class="a-button a-button-span12 a-button-base" id="a-autoid-2"><span class="a-button-inner"><input id="auth-cnep-edit-phone-button" class="a-button-input" type="submit" aria-labelledby="a-autoid-2-announce"><span class="a-button-text" aria-hidden="true" id="a-autoid-2-announce">
              Edit
            </span></span></span>
          </div>
          
        </div>
      
    </div></div>
  </form>
</div>

            </span></li>
            
            <li><span class="a-list-item">


<div class="a-section a-padding-medium">
  <form id="cnep_1a_mobile_phone_form" method="get" action="${pageContext.request.contextPath}/user/editfirmfurther">

  
    
    
      <input type="hidden" name="action" value="editgst">

    <div class="a-fixed-right-grid"><div class="a-fixed-right-grid-inner" style="padding-right:70px">
      <div class="a-fixed-right-grid-col a-col-left" style="padding-right:5%;float:left;">
        <div class="a-row">
          <span class="a-text-bold">
            GST Number:
          </span>
        </div>
        
          <div class="a-row">
            <c:out value='${firm.gstNo}'/>
          </div>
 
      </div>

      
        <div class="a-fixed-right-grid-col a-col-right" style="width:70px;margin-right:-70px;float:left;">
          <div class="a-row">
            <span class="a-button a-button-span12 a-button-base" id="a-autoid-2"><span class="a-button-inner"><input id="auth-cnep-edit-phone-button" class="a-button-input" type="submit" aria-labelledby="a-autoid-2-announce"><span class="a-button-text" aria-hidden="true" id="a-autoid-2-announce">
              Edit
            </span></span></span>
          </div>
          
        </div>
      
    </div></div>
  </form>
</div>

            </span></li>
         <li><span class="a-list-item">


<div class="a-section a-padding-medium">
<!--   <form id="cnep_1a_mobile_phone_form" method="get" action=""> -->

  
    
    
      <input type="hidden" name="action" value="editgst">

    <div class="a-fixed-right-grid"><div class="a-fixed-right-grid-inner" style="padding-right:70px">
      <div class="a-fixed-right-grid-col a-col-left" style="padding-right:5%;float:left;">
        <div class="a-row">
          <span class="a-text-bold">
            Profile Image
          </span>
        </div>
        
         
 
      </div>

      
        <div class="a-fixed-right-grid-col a-col-right" style="width:70px;margin-right:-70px;float:left;">
          <div class="a-row">
          <span class="a-button a-button-span12 a-button-base" id="addImagesBtn"><span class="a-button-inner"><input id="auth-cnep-edit-phone-button" class="a-button-input"aria-labelledby="a-autoid-2-announce"><span class="a-button-text" aria-hidden="true" id="a-autoid-2-announce">
              Upload
            </span></span></span>
<!--            <button class="button button-heror" id="addImagesBtn">Upload</button> -->
          </div>
          
        </div>
      
    </div></div>
<!--   </form> -->
</div>

            </span></li>
   
  </ul></div></div>

  <div class="a-section a-spacing-top-base a-padding-small">
    <div class="a-row">
      <div class="a-column a-span12 a-span-last">
       <a class="navbar-brand logo_h" href="${pageContext.request.contextPath}/user/index"><button  class="button button-subscribe mr-auto mb-1" type="submit">Done</button></a>
      </div>
    </div>
  </div>
</div>

</div>

      </div>
    </div>
	
	

</main>
<!--================ Start footer Area  =================-->	
	<jsp:include page="footer.jsp"/>
	<!--================ End footer Area  =================-->
</body>
</html>
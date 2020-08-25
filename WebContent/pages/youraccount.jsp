<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/cssd.css">

 <style>
.orders-section .heading-image{display:block;margin-top:10px}.orders-section .yo-button-container{border-right:1px solid #DCDCDC}.orders-section .yo-button{width:80%}.orders-section .yo-search-input{font-size:11px;width:155px}.ya-one-col-container,.ya-personalized,.ya-two-col-container{margin:0 auto}.ya-personalized,.ya-two-col-container{max-width:1000px}.ya-one-col-container{max-width:800px}.section-heading{text-align:center;position:relative;line-height:0}.section-heading h1{line-height:1;z-index:2;position:relative;background-color:#fff;padding:0 8px 0 7px;font-size:1.4rem;display:inline}.section-heading:after{content:"";width:100%;border-top:1px solid #e7e7e7;position:absolute;left:0;top:50%;margin-top:-1px;z-index:1;border-image:linear-gradient(to right,transparent,#d7d7d7,transparent) 1}.ya-card-row{display:table;height:100%;margin-bottom:20px;width:100%}.ya-card-cell{display:table-cell;height:100%;padding-left:20px;width:340px}.ya-card-cell:first-child{padding-left:0;width:320px}.ya-card,.ya-card--rich{height:100%}.ya-card__whole-card-link{height:100%;display:block}.ya-card--rich:hover{background:#eee}.ya-card__heading--rich{color:#111;font-size:17px}.ya-card__heading--poor{font-size:17px}
</style>

</head>
<body>
 <!--================ Start Header Menu Area =================-->
	 <jsp:include page="header.jsp" /> 
	<!--================ End Header Menu Area =================-->
	
	<div class="a-container">
	<div class="a-section ya-personalized">
<div class="ya-card-row">
        
            <div class="ya-card-cell">
                
                    <a href="${pageContext.request.contextPath}/user/editprofile" class="ya-card__whole-card-link">
  <div data-card-identifier="YourOrders" class="a-box ya-card--rich">
  <div class="a-box-inner">
    <div class="a-row">
        <div class="a-column a-span3">
            <img alt="Your Orders" src="${pageContext.request.contextPath}/assets/img/User_icon_BLACK.png">
        </div>
        <div class="a-column a-span9 a-span-last">
            <h2 class="a-spacing-none ya-card__heading--rich a-text-normal">
                Editing User Details
            </h2>
            <div><span class="a-color-secondary">Update your user details here</span></div>
            
        </div>
    </div>
</div>
</div>
</a>


                
            </div>
        
            <div class="ya-card-cell">
                
                    <a href="${pageContext.request.contextPath}/user/editfirm" class="ya-card__whole-card-link">
<div data-card-identifier="SignInAndSecurity" class="a-box ya-card--rich"><div class="a-box-inner">
    <div class="a-row">
        <div class="a-column a-span3">
            <img alt="Login &amp; security" src="${pageContext.request.contextPath}/assets/img/firm.png">
        </div>
        <div class="a-column a-span9 a-span-last">
            <h2 class="a-spacing-none ya-card__heading--rich a-text-normal">
                Editing Firm Details
            </h2>
            <div><span class="a-color-secondary">Update your Firm details here</span></div>
            
        </div>
    </div>
</div></div>
</a>


                
            </div>
        
           
        
    </div>
</div>
</div>
	
	
	<!--================ Start footer Area  =================-->	
	<jsp:include page="footer.jsp"/>
	<!--================ End footer Area  =================-->
</body>
</html>
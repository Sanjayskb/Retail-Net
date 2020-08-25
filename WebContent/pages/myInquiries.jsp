<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="com.retailnet.sector.*"%>
    <%@page import="com.retailnet.gst.Gst"%>
<%@page import="java.util.ArrayList, com.retailnet.*"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <script src="${pageContext.request.contextPath}/assets/vendors/jquery/jquery-3.2.1.min.js"></script>

</head>

<script type="text/javascript">
$(document).ready(function(){
	console.log('script called');
	var count = $("#iCnt").val();
	
	$('#inquiryspecs').ready(function(){
		console.log('calling the function');
		$.fn.myFunction();
	});
		
	

	$.fn.myFunction = function() {
		console.log('my function called')
		var tableId = $("#inquiryId").val();
		console.log(inquiryId);
		var inputData = "table_id="+tableId;
	$.ajax({
		
		'type' : 'GET',
		'url' : '/RetailNet/Order/rest/fetchspecificationsofinquirybyinquiryid',
		'data': inputData,
		
		'success' : function(data, status){
			console.log(data);
			dataObj = JSON.parse(data);
			console.log('dataObj=='+dataObj);
			var inqspecs = ""
			for(var i=0; i<dataObj.length; i++)
				{
					inqspecs += dataObj[i].name+':'+dataObj[i].value + '<br>'; 
				}
				$('#inquiryspecs').append(inqspecs);
			
		}
	
});
	}
});
</script>


<body>
	
	<!--================ Start Header Menu Area =================-->
	 <jsp:include page="header.jsp" /> 
	 <!--================ End Header Menu Area =================-->
	 
	 <!-- ================ start banner area ================= -->	
	<section class="blog-banner-area" id="category">
		<div class="container h-100">
			<div class="blog-banner">
				<div class="text-center">
					<h1>My Inquiries</h1>
					<nav aria-label="breadcrumb" class="banner-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">MyInquiries</li>
            </ol>
          </nav>
				</div>
			</div>
    </div>
	</section>
	<!-- ================ end banner area ================= -->
<div style="background: white;height: 10px;width: 100%; "></div>
 	<div class="col-lg-6" style="min-height: 500px;">
 	<c:if test="${fn:length(inquiries) == 0}">
 	
 	<section class="hero-banner" style="min-width:1500px;">
  <div class="container">
        <div class="row no-gutters align-items-center pt-60px">
          <div class="col-5 d-none d-sm-block">
            <div class="hero-banner__img">
              <img class="img-fluid" src="${pageContext.request.contextPath}/assets/img/home/emptycart.png" alt="">
            </div>
          </div>
          <div class="col-sm-7 col-lg-6 offset-lg-1 pl-4 pl-md-5 pl-lg-0">
            <div class="hero-banner__content">
              <h4>You have no Inquiries</h4>
               
               </div>
          </div>
        </div>
      </div>
      </section>
 	
 	</c:if>
 	<c:if test="${fn:length(inquiries) != 0}">
                                <!-- BEGIN SAMPLE TABLE PORTLET-->
                                <div class="card m-t-35" style="min-width: 1000px;">
                                    <div class="card-header bg-white">
                                        <i class="fa fa-table"></i> My Inquiries List
                                    </div>
                                    <div class="card-body2">
                                        <div class="table-responsive m-t-35" style="min-height: 200px;">
                                            <table class="table table-striped table-bordered table-advance table-hover">
                                                <thead>
                                                <tr>
                                                    <th>
                                                        <i class="fa fa-id-card"></i> Inquiry Id
                                                    </th>
                                                    <th class="hidden-xs">
                                                        <i class="fa fa-product-hunt"></i> Product Name
                                                    </th>
                                                    <th>
                                                        <i class="fa fa-product-hunt "></i> Quantity Required
                                                    </th>
                                                    <th>
                                                        <i class="fa fa-list-alt"></i> Required Product Specifications 
                                                    </th>
                                                    <th>
                                                        <i class="fa fa-list-alt"></i> Further Details
                                                    </th>
                                                    <th>
                                                        <i class="fa fa-sort-amount-desc"></i> Date of Inquiry
                                                    </th>
                                                    <th>
                                                        <i class="fa fa-money "></i> Name of Buyer
                                                    </th>
                                                    <th>
                                                        <i class="fa fa-money "></i> Email Address of Buyer
                                                    </th>
                                                    <th>
                                                        <i class="fa fa-money "></i> Contact No of Buyer
                                                    </th>
                                                   
<!--                                                     <th>Accept/Reject </th> -->
                                                    <th>Remove</th>
                                                 
                                                    
                                                </tr>
                                                </thead>
                                                <tbody>
                                                	<c:set var="count" value="0" scope="page" />
                                                <c:forEach var="Inquiry" items="${inquiries}">
                                                <input type="hidden" value="${Inquiry.tableId}" id="inquiryId">
                                                <c:set var="count" value="${count + 1}" scope="page"/>
                                                <tr>
                                               		<td class="hidden-xs">${Inquiry.inquiryId}</td>
                                                    <td class="highlight">
                                                        <span class="success"></span>
                                                        <a href="${pageContext.request.contextPath}/products/mysingleproduct/${Inquiry.products.productId}">${Inquiry.products.productName}</a>
                                                    </td>
                                                    <td class="hidden-xs">${Inquiry.quantity }</td>
                                                    
                                                    <td class="hidden-xs" id="inquiryspecs"></td>
                                                    <td class="hidden-xs">${Inquiry.moreDetails}</td>
                                                    <td class="hidden-xs">${Inquiry.inquiryDate }</td>
                                                    <td class="hidden-xs"><a href="${pageContext.request.contextPath}/sector/supplier/${Inquiry.buyerId.firmId}">${Inquiry.buyerId.firmName }</a></td>
                                                    <td class="hidden-xs">${Inquiry.buyerId.firmEmail }</td>
                                                    <td class="hidden-xs">${Inquiry.buyerId.firmContactNo }</td>
                                                    
<!--                                                      <td> -->
<!--                                                         <select id="status" name="status" class="form-control"> -->
<!-- 														<option>Accept</option> -->
<!-- 														<option>Reject</option> -->
<!--     													</select> -->
<!--                                                     </td> -->
                                                     <td>
                                                        <a href="${pageContext.request.contextPath}/order/removefrominquiries/${Inquiry.tableId}" class="btn btn-success btn-xs purple" id="btnSun">
                                                        
                                                            <i class="fa fa-edit"></i> Remove
                                                        </a>
                                                    </td>
                                                     
                                                </tr>
                                                 </c:forEach>
                                                 
                                                </tbody>
                                               
                                            </table>
                                             <input type="hidden" value="${count}" id="iCnt">
                                        </div>
                                    </div>
                                </div>
                                <!-- END SAMPLE TABLE PORTLET-->
                                
                                </c:if>
                  </div>
                  
                  <!--================ Start footer Area  =================-->	
					<jsp:include page="footer.jsp"/>
				<!--================ End footer Area  =================-->
</body>
</html>
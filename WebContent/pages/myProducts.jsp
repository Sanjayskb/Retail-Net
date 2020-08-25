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
</head>



<body>
	
	<!--================ Start Header Menu Area =================-->
	 <jsp:include page="header.jsp" /> 
	 
	 <script type="text/javascript">
	 		
	 
	</script>
	 
	 <!--================ End Header Menu Area =================-->
	 
	 <!-- ================ start banner area ================= -->	
	<section class="blog-banner-area" id="category">
		<div class="container h-100">
			<div class="blog-banner">
				<div class="text-center">
					<h1>My Products</h1>
					<nav aria-label="breadcrumb" class="banner-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">MyProducts</li>
            </ol>
          </nav>
				</div>
			</div>
    </div>
	</section>
	<!-- ================ end banner area ================= -->
<div style="background: white;height: 10px;width: 100%; "></div>
 	<div class="col-lg-6">
 	<c:if test="${fn:length(products) == 0}">
 	
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
              <h4>You have no products</h4>
              <h1>Add your First Product Here</h1>
              <a class="button button-hero" href="${pageContext.request.contextPath}/products/addProduct">Add Product</a>
            </div>
          </div>
        </div>
      </div>
      </section>
 	
 	</c:if>
 	<c:if test="${fn:length(products) != 0}">
                                <!-- BEGIN SAMPLE TABLE PORTLET-->
                                <div class="card m-t-35" style="min-width: 1000px;">
                                    <div class="card-header bg-white">
                                        <i class="fa fa-table"></i> My Products List
                                    </div>
                                    <div class="card-body2">
                                        <div class="table-responsive m-t-35">
                                            <table class="table table-striped table-bordered table-advance table-hover">
                                                <thead>
                                                <tr>
                                                    <th>
                                                        <i class="fa fa-id-card"></i> Sr No.
                                                    </th>
                                                    <th class="hidden-xs">
                                                        <i class="fa fa-product-hunt"></i> Product Name
                                                    </th>
                                                    <th>
                                                        <i class="fa fa-product-hunt "></i> Product Brand
                                                    </th>
                                                    <th>
                                                        <i class="fa fa-list-alt"></i> Product Category
                                                    </th>
                                                    <th>
                                                        <i class="fa fa-list-alt"></i> Product Sector
                                                    </th>
                                                    <th>
                                                        <i class="fa fa-sort-amount-desc"></i> Product Quantity
                                                    </th>
                                                    <th>
                                                        <i class="fa fa-money "></i> Product Price
                                                    </th>
                                                    <th>
                                                        <i class="fa fa-percent"></i> Product Gst 
                                                    </th>
                                                    <th>Action 1 </th>
                                                    <th>Action 2 </th>
                                                    <th>Action 3 </th>
                                                    
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach var="product" items="${products}" varStatus="loopCounter">
                                                <tr>
                                               		
                                                    <td class="highlight">
                                                        <span class="success"></span>
                                                        <a href="${pageContext.request.contextPath}/products/mysingleproduct/${product.productId}"> <c:out value="${loopCounter.count}"/></a>
                                                    </td>
                                                    <td class="hidden-xs">${product.productName }</td>
                                                    <td class="hidden-xs">${product.brandName }</td>
                                                    <td class="hidden-xs">${product.category.categoryName }</td>
                                                    <td class="hidden-xs">${product.category.sector.sectorName }</td>
                                                    <td class="hidden-xs">${product.quantity }</td>
                                                    <td class="hidden-xs">${product.price }</td>
                                                    <td class="hidden-xs">${product.gst.gstSlab}</td>
                                                     <td>
                                                        <a href="${pageContext.request.contextPath}/products/editproduct/${product.productId}" class="btn btn-success btn-xs purple">
                                                        
                                                            <i class="fa fa-edit"></i> Edit
                                                        </a>
                                                    </td>
                                                     <td>
<%--                                                      <c:if test="${inInquiriesmap.key == product.productId}"> --%>
															<c:if test="${ispresent.contains(product.productId) == true }">
                                                     Remove All the inquiries of This Product.
                                                     		</c:if>
<%--                                                      </c:if> --%>
<%--                                                      <c:if test="${inInquiriesmap.key != product.productId}"> --%>
															<c:if test="${ispresent.contains(product.productId) == false }">
                                                        <a href="${pageContext.request.contextPath}/products/removeproduct/${product.productId}" class="btn btn-success btn-xs purple">
                                                        
                                                            <i class="fa fa-edit"></i> Remove
                                                        </a>
                                                        </c:if>
<%--                                                         </c:if> --%>
                                                    </td>
                                                     <td>
                                                        <select id="status" name="status" class="form-control">
														<option>Active</option>
														<option>InActive</option>
    													</select>
                                                    </td>
                                                </tr>
                                                 </c:forEach>
                                                </tbody>
                                            </table>
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
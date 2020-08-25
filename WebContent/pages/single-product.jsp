<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
<!--================ Start Header Menu Area =================-->
	<jsp:include page="header.jsp" />
	<!--================ End Header Menu Area =================-->
	
	<!-- ================ start banner area ================= -->	
	<section class="blog-banner-area" id="blog">
		<div class="container h-100">
			<div class="blog-banner">
				<div class="text-center">
					<h1>Shop Single</h1>
					<nav aria-label="breadcrumb" class="banner-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Shop Single</li>
            </ol>
          </nav>
				</div>
			</div>
    </div>
	</section>
	<!-- ================ end banner area ================= -->


  <!--================Single Product Area =================-->
	<div class="product_image_area">
		<div class="container">
			<div class="row s_product_inner">
<!-- 				<div class="col-lg-6"> -->
<!-- 					<div class="owl-carousel owl-theme s_Product_carousel"> -->
<%-- 						<c:forEach items="${productImages}" var="imagemap" > --%>
<!-- 						<div class="single-prd-item"> -->
						 
<%-- 							<img class="img-fluid" src="<c:url value="/images/${product.productId}/${imagemap.imageName}"></c:url>" alt="Image Loading"> --%>
<!-- 						</div> -->
<!-- 						<div class="single-prd-item">
<!-- 							<img class="img-fluid" src="img/category/s-p1.jpg" alt=""> -->
<!-- 						</div> -->
<!-- 						<div class="single-prd-item"> -->
<!-- 							<img class="img-fluid" src="img/category/s-p1.jpg" alt=""> -->
<!-- 						</div> --> 
<%-- 						</c:forEach> --%>
<!-- 					</div> -->
<!-- 				</div> -->
					<div class="col-lg-6">
					<div class="owl-carousel owl-theme s_Product_carousel">
					
						<c:forEach items="${productImages}" var="imagemap" >
							<div class="single-prd-item" style="height:500px;">>
								<img class="img-fluid" src="<c:url value="/images/${products.productId}/${imagemap.imageName}"></c:url>" alt="Image Loading">
							</div>
						</c:forEach> 
                      
					</div>
					
				</div>
				<div class="col-lg-5 offset-lg-1">
					<div class="s_product_text">
					<c:set var = "product" value="${products}"></c:set>
						<h3>${product.productName }</h3>
						<h2>${product.price } &#8377;</h2>
						<ul class="list">
							<li><a class="active" href="#"><span>Category</span> :${product.category.categoryName }</a></li>
							<li><a href="#"><span>Availibility</span> : In Stock</a></li>
						</ul>
						
						
						<div class="product_count">
              			<label for="qty">Quantity:</label>
              </div>
              <div class="product_count">
              <button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst )) result.value++;return false;"
							 class="increase items-count" type="button"><i class="ti-angle-left"></i></button>
							<input type="text" name="quant" id="quant" size="2" maxlength="12" value="${product.quantity }" title="Quantity:" class="input-text qty">
							<button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst > 0 ) result.value--;return false;"
               class="reduced items-count" type="button"><i class="ti-angle-right"></i></button>
               </div>
              
               		<script type="text/javascript">
               		function addspecification(){
             	var quant = document.getElementById('quant').value;
             	var q = quant;
             	console.log('q value::::::::'+q);
             	document.getElementById("quantity").value = q; 
             	return true;
               		}
              </script>
               <div class="product_count">
               <c:choose>
               <c:when test="${incart}">
               <form action="${pageContext.request.contextPath}/cart/mycart" method="get">
							<input type="submit" class="button button--active button-review" value="Go to Cart "> 
							            </form>
							            </c:when>
							           <c:otherwise>
							           <form action="${pageContext.request.contextPath}/cart/mycartaction/${product.productId}" method="get" onsubmit="return addspecification()">
							           <input type="hidden" value="" id="quantity" name="quantity">
							           <input type="submit" class="button button--active button-review" value="Add to Cart "> 
							           
											</form>
							            
							            </c:otherwise>
							            </c:choose>
						</div>
					
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--================End Single Product Area =================-->

	<!--================Product Description Area =================-->
	 <section class="product_description_area">
		<div class="container">
			<ul class="nav nav-tabs" id="myTab" role="tablist">
				<li class="nav-item">
					<a class="nav-link  active show" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Description</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Specification</a>
				</li>
				
			</ul>
			<div class="tab-content" id="myTabContent">
				<div class="tab-pane fade active show" id="home" role="tabpanel" aria-labelledby="home-tab">
					<p><c:out value="${products.description}"/></p>
					
				</div>
				<div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
					<div class="table-responsive">
						<table class="table">
							<tbody>
							<c:forEach items="${specifications}" var="Specifications">
								<tr>
									<td>
										<h5> ${Specifications.name}</h5>
									</td>
									<td>
										<h5>${Specifications.value}</h5>
									</td>
								</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				
				
			</div>
		</div>
	</section>
	<!--================End Product Description Area =================-->


	<!--================ end related Product area =================-->  	
	
	<!--================ Start footer Area  =================-->
	<jsp:include page="footer.jsp" />
	<!--================ End footer Area  =================-->
</body>
</html>
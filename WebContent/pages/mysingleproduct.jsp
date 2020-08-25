<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    <c:set var = "product" value="${products}"></c:set>	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${product.productName }</title>

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
					<h1>${product.productName }</h1>
					<nav aria-label="breadcrumb" class="banner-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">My Product</li>
            </ol>
          </nav>
				</div>
			</div>
    </div>
	</section>
	<!-- ================ end banner area ================= -->
	
	<script type="text/javascript">
$(document).ready(function(){
	var productId = ${product.productId}
	$('#addImagesBtn').on('click', function(){
		console.log(productId);
		var addImageWindow = window.open("/RetailNet/products/addImage/?pid="+productId, "addImage", "config='height=670,width=1400,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,directories=no,status=no'");
	});
});

</script>
<%-- 							<img class="img-fluid" src="<c:url value="/images/${product.productId}/Sketchpad.png"></c:url>"> --%>
<!--================MySingle Product Area =================-->
	<div class="product_image_area">
		<div class="container">
			<div class="row s_product_inner">
				<div class="col-lg-6">
					<div class="owl-carousel owl-theme s_Product_carousel">
					
						<c:forEach items="${productImages}" var="imagemap" >
							<div class="single-prd-item" style="height:500px;">
								<img class="img-fluid" src="<c:url value="/images/${product.productId}/${imagemap.imageName}"></c:url>" alt="Image Loading">
							</div>
						</c:forEach> 
                      
					</div>
					
				</div>
				<div class="col-lg-5 offset-lg-1">
					<div class="s_product_text">
					
						<h3>${product.productName }</h3>
						<h2>${product.price } &#8377;</h2>
						<ul class="list">
							<li><a class="active" href="#"><span>Category</span> : ${product.category.categoryName }</a></li>
							<li><a href="#"><span>Availibility</span> : In Stock</a></li>
							<li><a class="active" href="#"><span>Quantity</span> : ${product.quantity }</a></li>
							
						
						<li><div> <button class="button button-heror" id="addImagesBtn">Add Image</button>  </div></li>
						<li><div><a href="${pageContext.request.contextPath}/products/mysingleproduct/${product.productId}"> <button class="button button-hero" >Edit </button></a>  </div></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--================End Single Product Area =================-->

	 <!-- Product Further Details  -->
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

	<!--================ Start footer Area  =================-->
	<jsp:include page="footer.jsp" />
	<!--================ End footer Area  =================-->
	
	

</body>
</html>
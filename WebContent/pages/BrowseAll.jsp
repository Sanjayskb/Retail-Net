<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendors/nouislider/nouislider.min.css">
  	  <script src="${pageContext.request.contextPath}/assets/vendors/jquery/jquery-3.2.1.min.js"></script>
</head>
<script type="text/javascript">
$(document).ready(function(){
	$('#sortselect').on('change', function(){
		var optionSelected = $("option:selected", this);
	    var searchvalue = this.value;
		console.log("To search :", searchvalue);
		if(searchvalue == '1')
			{
			$('#sortform').attr('action', '${pageContext.request.contextPath}/sector/sortcategorypagehtl');
			}
		else
			{
			$('#sortform').attr('action', '${pageContext.request.contextPath}/sector/sortcategorypagehtl');
			}
	});
	
});
</script>
<body style="background-image: url('${pageContext.request.contextPath}/assets/img/background.jpg');">
<!--================ Start Header Menu Area =================-->
	<jsp:include page="header.jsp" />
	<!--================ End Header Menu Area =================-->
	
	<!-- ================ start banner area ================= -->	
	<section class="blog-banner-area" id="category">
		<div class="container h-100">
			<div class="blog-banner">
				<div class="text-center">
					<h1>Browse All Products</h1>
					<nav aria-label="breadcrumb" class="banner-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/user/index">Home</a></li>
              
            </ol>
          </nav>
				</div>
			</div>
    </div>
	</section>
	<!-- ================ end banner area ================= -->


	<!-- ================ category section start ================= -->		  
  <section class="section-margin--small mb-5">
    <div class="container">
      <div class="row">
        <div class="col-xl-3 col-lg-4 col-md-5">
          <div class="sidebar-categories">
            <div class="head">Browse Sectors</div>
            <ul class="main-categories">
              <li class="common-filter">
              
                   <form action="#">
                  <ul>
                  <c:forEach var="Sector" items="${sectors}">
                    <li class="filter-list"><a href="${pageContext.request.contextPath}/sector/sectorpage/${Sector.sectorId}"><c:out value="${Sector.sectorName}"/></a></li>
                     </c:forEach>
                  </ul>
                </form>
              </li>
            </ul>
          </div>
       
        </div>
        <div class="col-xl-9 col-lg-8 col-md-7">
          <!-- Start Filter Bar -->
          <div class="filter-bar d-flex flex-wrap align-items-center">
            <div class="sorting">
           <form action="" class="aa-sort-form">
           <div>
                  <label for="">Sort by</label>
                  </div>
                  <select id="sort" name="sort" onchange="location = this.value;" >
            		 <option value="0">-- Select --</option>
                    <option value="${pageContext.request.contextPath}/products/browseother" >Default</option>
                    <option value="${pageContext.request.contextPath }/products/otherProductsSortByName">Name</option>
                    <option value="${pageContext.request.contextPath }/products/otherProductsSortByPrice">Price</option>
                
                  </select>
                </form>
            </div>
<!--             <div class="sorting mr-auto"> -->
<!--               <select> -->
<!--                 <option value="1">Show 12</option> -->
<!--                 <option value="1">Show 12</option> -->
<!--                 <option value="1">Show 12</option> -->
<!--               </select> -->
<!--             </div> -->
<!--             <div> -->
<!--               <div class="input-group filter-bar-search"> -->
<!--                 <input type="text" placeholder="Search"> -->
<!--                 <div class="input-group-append"> -->
<!--                   <button type="button"><i class="ti-search"></i></button> -->
<!--                 </div> -->
<!--               </div> -->
<!--             </div> -->
          </div>
          <!-- End Filter Bar -->
          <!-- Start Best Seller -->
          <section class="lattest-product-area pb-40 category-list">
            <div class="row">
            <c:if test="${fn:length(products) == 0}">
            <h3>We are very sorry !!!!</h3>
            <h3>There are No products Available </h3>
            </c:if>
            <c:if test="${fn:length(products) != 0}">
            	<c:forEach  var="product" items="${products}">
         			<div class="col-md-6 col-lg-4">
		                <div class="card text-center card-product">
		                  <div class="card-product__img">
		                  <c:if test="${product.firstImageName != Null}">
		                    <img class="card-img"  style="height: 285px;width: 255px;" src="${pageContext.request.contextPath}/images/${product.productId}/${product.firstImageName}" alt="">
		                  </c:if>
		                  <c:if test="${product.firstImageName == Null}">
		                  <img src="${pageContext.request.contextPath}/assets/img/addimg.png" alt="" style="height: 285px;width: 255px;">
		                  </c:if>
		                  </div>
		                  <div class="card-body">
		                    <p>${product.category.categoryName }</p>
		                    <h4 class="card-product__title"><a href="${pageContext.request.contextPath}/products/singleproduct/${product.productId}">${product.productName }</a></h4>
		                    <p class="card-product__price">${product.price } &#8377;</p>
		                  </div>
		                </div>
	              	</div>
      			</c:forEach>
      			</c:if>
            </div>
          </section>
          <!-- End Best Seller -->
        </div>
      </div>
    </div>
  </section>
	<!-- ================ category section end ================= -->		  

	<!-- ================ top product area start ================= -->	
<!-- 	<section class="related-product-area"> -->
<!-- 		<div class="container"> -->
<!-- 			<div class="section-intro pb-60px"> -->
<!--         <p>Popular Item in the market</p> -->
<!--         <h2>Top <span class="section-intro__style">Product</span></h2> -->
<!--       </div> -->
<!-- 			<div class="row mt-30"> -->
<!--         <div class="col-sm-6 col-xl-3 mb-4 mb-xl-0"> -->
<!--           <div class="single-search-product-wrapper"> -->
<!--             <div class="single-search-product d-flex"> -->
<%--               <a href="#"><img src="${pageContext.request.contextPath}/assets/img/product/product-sm-1.png" alt=""></a> --%>
<!--               <div class="desc"> -->
<!--                   <a href="#" class="title">Gray Coffee Cup</a> -->
<!--                   <div class="price">$170.00</div> -->
<!--               </div> -->
<!--             </div> -->
<!--             <div class="single-search-product d-flex"> -->
<%--               <a href="#"><img src="${pageContext.request.contextPath}/assets/img/product/product-sm-2.png" alt=""></a> --%>
<!--               <div class="desc"> -->
<!--                 <a href="#" class="title">Gray Coffee Cup</a> -->
<!--                 <div class="price">$170.00</div> -->
<!--               </div> -->
<!--             </div> -->
<!--             <div class="single-search-product d-flex"> -->
<%--               <a href="#"><img src="${pageContext.request.contextPath}/assets/img/product/product-sm-3.png" alt=""></a> --%>
<!--               <div class="desc"> -->
<!--                 <a href="#" class="title">Gray Coffee Cup</a> -->
<!--                 <div class="price">$170.00</div> -->
<!--               </div> -->
<!--             </div> -->
<!--           </div> -->
<!--         </div> -->

<!--         <div class="col-sm-6 col-xl-3 mb-4 mb-xl-0"> -->
<!--           <div class="single-search-product-wrapper"> -->
<!--             <div class="single-search-product d-flex"> -->
<%--               <a href="#"><img src="${pageContext.request.contextPath}/assets/img/product/product-sm-4.png" alt=""></a> --%>
<!--               <div class="desc"> -->
<!--                   <a href="#" class="title">Gray Coffee Cup</a> -->
<!--                   <div class="price">$170.00</div> -->
<!--               </div> -->
<!--             </div> -->
<!--             <div class="single-search-product d-flex"> -->
<%--               <a href="#"><img src="${pageContext.request.contextPath}/assets/img/product/product-sm-5.png" alt=""></a> --%>
<!--               <div class="desc"> -->
<!--                 <a href="#" class="title">Gray Coffee Cup</a> -->
<!--                 <div class="price">$170.00</div> -->
<!--               </div> -->
<!--             </div> -->
<!--             <div class="single-search-product d-flex"> -->
<%--               <a href="#"><img src="${pageContext.request.contextPath}/assets/img/product/product-sm-6.png" alt=""></a> --%>
<!--               <div class="desc"> -->
<!--                 <a href="#" class="title">Gray Coffee Cup</a> -->
<!--                 <div class="price">$170.00</div> -->
<!--               </div> -->
<!--             </div> -->
<!--           </div> -->
<!--         </div> -->

<!--         <div class="col-sm-6 col-xl-3 mb-4 mb-xl-0"> -->
<!--           <div class="single-search-product-wrapper"> -->
<!--             <div class="single-search-product d-flex"> -->
<%--               <a href="#"><img src="${pageContext.request.contextPath}/assets/img/product/product-sm-7.png" alt=""></a> --%>
<!--               <div class="desc"> -->
<!--                   <a href="#" class="title">Gray Coffee Cup</a> -->
<!--                   <div class="price">$170.00</div> -->
<!--               </div> -->
<!--             </div> -->
<!--             <div class="single-search-product d-flex"> -->
<%--               <a href="#"><img src="${pageContext.request.contextPath}/assets/img/product/product-sm-8.png" alt=""></a> --%>
<!--               <div class="desc"> -->
<!--                 <a href="#" class="title">Gray Coffee Cup</a> -->
<!--                 <div class="price">$170.00</div> -->
<!--               </div> -->
<!--             </div> -->
<!--             <div class="single-search-product d-flex"> -->
<%--               <a href="#"><img src="${pageContext.request.contextPath}/assets/img/product/product-sm-9.png" alt=""></a> --%>
<!--               <div class="desc"> -->
<!--                 <a href="#" class="title">Gray Coffee Cup</a> -->
<!--                 <div class="price">$170.00</div> -->
<!--               </div> -->
<!--             </div> -->
<!--           </div> -->
<!--         </div> -->

<!--         <div class="col-sm-6 col-xl-3 mb-4 mb-xl-0"> -->
<!--           <div class="single-search-product-wrapper"> -->
<!--             <div class="single-search-product d-flex"> -->
<%--               <a href="#"><img src="${pageContext.request.contextPath}/assets/img/product/product-sm-1.png" alt=""></a> --%>
<!--               <div class="desc"> -->
<!--                   <a href="#" class="title">Gray Coffee Cup</a> -->
<!--                   <div class="price">$170.00</div> -->
<!--               </div> -->
<!--             </div> -->
<!--             <div class="single-search-product d-flex"> -->
<%--               <a href="#"><img src="${pageContext.request.contextPath}/assets/img/product/product-sm-2.png" alt=""></a> --%>
<!--               <div class="desc"> -->
<!--                 <a href="#" class="title">Gray Coffee Cup</a> -->
<!--                 <div class="price">$170.00</div> -->
<!--               </div> -->
<!--             </div> -->
<!--             <div class="single-search-product d-flex"> -->
<%--               <a href="#"><img src="${pageContext.request.contextPath}/assets/img/product/product-sm-3.png" alt=""></a> --%>
<!--               <div class="desc"> -->
<!--                 <a href="#" class="title">Gray Coffee Cup</a> -->
<!--                 <div class="price">$170.00</div> -->
<!--               </div> -->
<!--             </div> -->
<!--           </div> -->
<!--         </div> -->
<!--       </div> -->
<!-- 		</div> -->
<!-- 	</section> -->
<!-- 	<!-- ================ top product area end ================= -->		 -->

<!-- 	<!-- ================ Subscribe section start ================= -->		   -->
<!--   <section class="subscribe-position"> -->
<!--     <div class="container"> -->
<!--       <div class="subscribe text-center"> -->
<!--         <h3 class="subscribe__title">Get Update From Anywhere</h3> -->
<!--         <p>Bearing Void gathering light light his eavening unto dont afraid</p> -->
<!--         <div id="mc_embed_signup"> -->
<!--           <form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="subscribe-form form-inline mt-5 pt-1"> -->
<!--             <div class="form-group ml-sm-auto"> -->
<!--               <input class="form-control mb-1" type="email" name="EMAIL" placeholder="Enter your email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Email Address '" > -->
<!--               <div class="info"></div> -->
<!--             </div> -->
<!--             <button class="button button-subscribe mr-auto mb-1" type="submit">Subscribe Now</button> -->
<!--             <div style="position: absolute; left: -5000px;"> -->
<!--               <input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text"> -->
<!--             </div> -->

<!--           </form> -->
<!--         </div> -->
        
<!--       </div> -->
<!--     </div> -->
<!--   </section> -->
	<!-- ================ Subscribe section end ================= -->		  
	
	<!--================ Start footer Area  =================-->
	<jsp:include page="footer.jsp" />
	<!--================ End footer Area  =================-->
	  <script src="${pageContext.request.contextPath}/assets/vendors/nouislider/nouislider.min.js"></script>
</body>
</html>
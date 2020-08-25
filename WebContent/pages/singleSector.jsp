<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:set var = "Sector" value="${sector}"></c:set>	

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.carousel-container{
	border-radius: 10px 10px 10px 10px;
	min-width: 968px;
	max-height: 230px;
	margin-right: 50px;
	margin-top: 40px;
	margin-left: 50px;
	
	overflow: hidden;
	//border: 5px solid #55a4f2;
	position: relative;
}

.carousel-slide{
	display: flex;
	width: 100%;
	height: 230px;
}

#prevBtn{
	position: absolute;
	top: 50%;
	z-index: 10;
	left: 5%;
	font-size: 30px;
	color: white;
	cursor: pointer;
}

#nextBtn{
	position: absolute;
	top: 50%;
	z-index: 10;
	right: 5%;
	font-size: 30px;
	color: white;
	cursor: pointer;
}
</style>
</head>
<body>
<!--================ Start Header Menu Area =================-->
	<jsp:include page="header.jsp" />
	<!--================ End Header Menu Area =================-->
	
	<!-- ================ start banner area ================= -->	
	<section class="blog-banner-area" id="category">
		<div class="container h-100">
			<div class="blog-banner">
				<div class="text-center">
					<h1>${Sector.sectorName}</h1>
					<nav aria-label="breadcrumb" class="banner-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Sectors</li>
              <li class="breadcrumb-item active" aria-current="page">${Sector.sectorName}</li>
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
      <div class="row" style="margin-left: -140px;">
        <div class="col-xl-3 col-lg-4 col-md-5">
          <div class="sidebar-categories">
            <div class="head">Categories</div>
            <ul class="main-categories">
              <li class="common-filter">
                <form action="#">
                  <ul>
                  <c:forEach var="Category" items="${categories}">
                    <li class="filter-list"><a href="${pageContext.request.contextPath}/sector/categorypage/${Category.categoryId}"><c:out value="${Category.categoryName}"/></a></li>
                     </c:forEach>
                  </ul>
                </form>
              </li>
            </ul>
          </div>
          
        </div>
        <div class="col-xl-9 col-lg-8 col-md-7">
          <!-- Start Filter Bar -->
          
            
            <section class="section-margin mt-0">
    <div class="carousel-container">
	<i class="fa fa-arrow-left"   id="prevBtn" ></i>
		<i class="fa fa-arrow-right"  id="nextBtn"></i>
	<div class="carousel-slide">
		<img src="<c:url value="/resourceimages/${Sector.sectorName}/carousel/image4.jpg"></c:url>" id="lastClone">
		<img src="<c:url value="/resourceimages/${Sector.sectorName}/carousel/image1.jpg"></c:url>">
		<img src="<c:url value="/resourceimages/${Sector.sectorName}/carousel/image2.jpg"></c:url>">
		<img src="<c:url value="/resourceimages/${Sector.sectorName}/carousel/image3.jpg"></c:url>">
		<img src="<c:url value="/resourceimages/${Sector.sectorName}/carousel/image4.jpg"></c:url>">
		<img src="<c:url value="/resourceimages/${Sector.sectorName}/carousel/image1.jpg"></c:url>" id="firstClone">
	</div>
	
		</div>
		</section>
		
         
          <!-- End Filter Bar -->
          <!-- Start Best Seller -->
         
			<div class="imageNav showAll" style="height:125px; width:968px;">
			<c:forEach var="Category" begin="0" end="4" items="${categories}">
			<a class="imageNavItem" href="#" style=" display: block; width: 140px; float: left; margin-bottom: 10px; margin-left: 50px;">
				<div class="imgdiv" style="display: inline-block;width: 60px;height: 60px;border-radius: 30px;margin-bottom: 5px;overflow: hidden;">
				<img src="<c:url value="/resourceimages/${Sector.sectorName}/showall/image1.webp"></c:url>"></div>
				<div><span style="color:black;"><c:out value="${Category.categoryName}"/></span></div>
			</a>
			</c:forEach>
			</div>
			
          
          <!-- End Best Seller -->
        </div>
      </div>
    </div>
  </section>
	<!-- ================ category section end ================= -->		  

	<!-- ================ top product area start ================= -->	
	<section class="related-product-area">
		<div class="container">
			<div class="section-intro pb-60px">
        <p>Popular Item in the market</p>
        <h2>Top <span class="section-intro__style">Product</span></h2>
      </div>
			<div class="row mt-30">
        <div class="col-sm-6 col-xl-3 mb-4 mb-xl-0">
          <div class="single-search-product-wrapper">
            <div class="single-search-product d-flex">
              <a href="#"><img src="${pageContext.request.contextPath}/assets/img/product/product-sm-1.png" alt=""></a>
              <div class="desc">
                  <a href="#" class="title">Gray Coffee Cup</a>
                  <div class="price">$170.00</div>
              </div>
            </div>
            <div class="single-search-product d-flex">
              <a href="#"><img src="${pageContext.request.contextPath}/assets/img/product/product-sm-2.png" alt=""></a>
              <div class="desc">
                <a href="#" class="title">Gray Coffee Cup</a>
                <div class="price">$170.00</div>
              </div>
            </div>
            <div class="single-search-product d-flex">
              <a href="#"><img src="${pageContext.request.contextPath}/assets/img/product/product-sm-3.png" alt=""></a>
              <div class="desc">
                <a href="#" class="title">Gray Coffee Cup</a>
                <div class="price">$170.00</div>
              </div>
            </div>
          </div>
        </div>

        <div class="col-sm-6 col-xl-3 mb-4 mb-xl-0">
          <div class="single-search-product-wrapper">
            <div class="single-search-product d-flex">
              <a href="#"><img src="${pageContext.request.contextPath}/assets/img/product/product-sm-4.png" alt=""></a>
              <div class="desc">
                  <a href="#" class="title">Gray Coffee Cup</a>
                  <div class="price">$170.00</div>
              </div>
            </div>
            <div class="single-search-product d-flex">
              <a href="#"><img src="${pageContext.request.contextPath}/assets/img/product/product-sm-5.png" alt=""></a>
              <div class="desc">
                <a href="#" class="title">Gray Coffee Cup</a>
                <div class="price">$170.00</div>
              </div>
            </div>
            <div class="single-search-product d-flex">
              <a href="#"><img src="${pageContext.request.contextPath}/assets/img/product/product-sm-6.png" alt=""></a>
              <div class="desc">
                <a href="#" class="title">Gray Coffee Cup</a>
                <div class="price">$170.00</div>
              </div>
            </div>
          </div>
        </div>

        <div class="col-sm-6 col-xl-3 mb-4 mb-xl-0">
          <div class="single-search-product-wrapper">
            <div class="single-search-product d-flex">
              <a href="#"><img src="${pageContext.request.contextPath}/assets/img/product/product-sm-7.png" alt=""></a>
              <div class="desc">
                  <a href="#" class="title">Gray Coffee Cup</a>
                  <div class="price">$170.00</div>
              </div>
            </div>
            <div class="single-search-product d-flex">
              <a href="#"><img src="${pageContext.request.contextPath}/assets/img/product/product-sm-8.png" alt=""></a>
              <div class="desc">
                <a href="#" class="title">Gray Coffee Cup</a>
                <div class="price">$170.00</div>
              </div>
            </div>
            <div class="single-search-product d-flex">
              <a href="#"><img src="${pageContext.request.contextPath}/assets/img/product/product-sm-9.png" alt=""></a>
              <div class="desc">
                <a href="#" class="title">Gray Coffee Cup</a>
                <div class="price">$170.00</div>
              </div>
            </div>
          </div>
        </div>

        <div class="col-sm-6 col-xl-3 mb-4 mb-xl-0">
          <div class="single-search-product-wrapper">
            <div class="single-search-product d-flex">
              <a href="#"><img src="${pageContext.request.contextPath}/assets/img/product/product-sm-1.png" alt=""></a>
              <div class="desc">
                  <a href="#" class="title">Gray Coffee Cup</a>
                  <div class="price">$170.00</div>
              </div>
            </div>
            <div class="single-search-product d-flex">
              <a href="#"><img src="${pageContext.request.contextPath}/assets/img/product/product-sm-2.png" alt=""></a>
              <div class="desc">
                <a href="#" class="title">Gray Coffee Cup</a>
                <div class="price">$170.00</div>
              </div>
            </div>
            <div class="single-search-product d-flex">
              <a href="#"><img src="${pageContext.request.contextPath}/assets/img/product/product-sm-3.png" alt=""></a>
              <div class="desc">
                <a href="#" class="title">Gray Coffee Cup</a>
                <div class="price">$170.00</div>
              </div>
            </div>
          </div>
        </div>
      </div>
		</div>
	</section>
	<!-- ================ top product area end ================= -->		

	<!-- ================ Subscribe section start ================= -->		  
  <section class="subscribe-position">
    <div class="container">
      <div class="subscribe text-center">
        <h3 class="subscribe__title">Get Update From Anywhere</h3>
        <p>Bearing Void gathering light light his eavening unto dont afraid</p>
        <div id="mc_embed_signup">
          <form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="subscribe-form form-inline mt-5 pt-1">
            <div class="form-group ml-sm-auto">
              <input class="form-control mb-1" type="email" name="EMAIL" placeholder="Enter your email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Email Address '" >
              <div class="info"></div>
            </div>
            <button class="button button-subscribe mr-auto mb-1" type="submit">Subscribe Now</button>
            <div style="position: absolute; left: -5000px;">
              <input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
            </div>

          </form>
        </div>
        
      </div>
    </div>
  </section>
	<!-- ================ Subscribe section end ================= -->		  
	
	<!--================ Start footer Area  =================-->
	<jsp:include page="footer.jsp" />
	<!--================ End footer Area  =================-->
</body>
</html>

<script>
const carouselSlide = document.querySelector('.carousel-slide');
const carouselImages = document.querySelectorAll('.carousel-slide img');

//buttons

const prevBtn = document.querySelector('#prevBtn');
const nextBtn = document.querySelector('#nextBtn');

//counter

let counter = 1;
const size = carouselImages[0].clientWidth;
carouselSlide.style.transform ='translateX(' + (-size * counter ) + 'px)';

//event listners

nextBtn.addEventListener('click',()=>{
	if(counter>=carouselImages.length -1) return;
	carouselSlide.style.transition = "transform 0.4s ease-in-out";
	counter++;
	carouselSlide.style.transform ='translateX(' + (-size * counter ) + 'px)';
});

prevBtn.addEventListener('click',()=>{
	if(counter<= 0) return;
	carouselSlide.style.transition = "transform 0.4s ease-in-out";
	counter--;
	carouselSlide.style.transform ='translateX(' + (-size * counter ) + 'px)';
});

carouselSlide.addEventListener('transitionend',()=>{
	if(carouselImages[counter].id === 'lastClone'){
		carouselSlide.style.transition = 'none';
		counter = carouselImages.length -2 ;
		carouselSlide.style.transform ='translateX(' + (-size * counter ) + 'px)';
	}

	if(carouselImages[counter].id === 'firstClone'){
		carouselSlide.style.transition = 'none';
		counter = carouselImages.length - counter;
		carouselSlide.style.transform ='translateX(' + (-size * counter ) + 'px)';
	}
});
</script>
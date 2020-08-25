<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Home Page</title>
<style>
.carousel-container{
border-radius: 10px 10px 10px 10px;
	width: 90%;
	height: 60%;
	margin-right: 50px;
	margin-top: 40px;
	margin-left: 72px;
	
	overflow: hidden;
	//border: 5px solid #55a4f2;
	position: relative;
}

.carousel-slide{
	display: flex;
	width: 100%;
	height: 400px;
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

<body style="background-image: url('${pageContext.request.contextPath}/assets/img/background.jpg');">
  <!--================ Start Header Menu Area =================-->
  	 <c:set var = "Sector" value="${sectors}"></c:set>	
	 <jsp:include page="header.jsp" /> 
	<!--================ End Header Menu Area =================-->

	
	
  <main class="site-main">

	<section class="section-margin mt-0">
    <div class="carousel-container">
	<i class="fa fa-arrow-left"   id="prevBtn" ></i>
		<i class="fa fa-arrow-right"  id="nextBtn"></i>
	<div class="carousel-slide">

		<img src="${pageContext.request.contextPath}/assets/img/indeximage3.png" id="lastClone">
		<img src="${pageContext.request.contextPath}/assets/img/indeximage1.jpg">
		<img src="${pageContext.request.contextPath}/assets/img/indeximage2.jpg">
		<img src="${pageContext.request.contextPath}/assets/img/indeximage3.png">
		<img src="${pageContext.request.contextPath}/assets/img/indeximage1.jpg" id="firstClone">
	</div>
	
</div>
</section>

    <!--================ Hero Carousel start =================-->
    <section class="section-margin mt-0">
    <div class="container">
    <div class="section-intro pb-60px" style="padding-bottom:30px;">  
          <h2 style="color:White; margin:auto;" >Shopping Categories</h2>
        </div>
      <div class="owl-carousel owl-theme hero-carousel">
        <div class="hero-carousel__slide">
          <img src="${pageContext.request.contextPath}/assets/img/home/categories.png" alt="" class="img-fluid" style="border: 3px solid blue; border-radius: 10px 10px 10px 10px;">
          <a href="${pageContext.request.contextPath}/sector/allcategoriespage" class="hero-carousel__slideOverlay">
            <h3>SHOP BY</h3>
            <p>Categories</p>
          </a>
        </div>
        <div class="hero-carousel__slide" style="border-radius: 10px 10px 10px 10px;">
          <img src="${pageContext.request.contextPath}/assets/img/home/suppliers.png" alt="" class="img-fluid" style="border: 3px solid blue; border-radius: 10px 10px 10px 10px;">
          <a href="${pageContext.request.contextPath}/sector/supplierpage" class="hero-carousel__slideOverlay">
            <h3>SHOP BY</h3>
            <p>Suppliers</p>
          </a>
        </div>
        <div class="hero-carousel__slide" style="border-radius: 10px 10px 10px 10px;">
          <img src="${pageContext.request.contextPath}/assets/img/home/locations.png" alt="" class="img-fluid" style="border: 3px solid blue; border-radius: 10px 10px 10px 10px;">
          <a href="${pageContext.request.contextPath}/sector/allfirmsbylocation" class="hero-carousel__slideOverlay">
            <h3>SHOP BY</h3>
            <p>Location</p>
          </a>
        </div>
      </div>
      </div>
    </section>
    <!--================ Hero Carousel end =================-->

    <!-- ================ trending product section start ================= -->  
    <section class="section-margin calc-60px">
      <div class="container">
        <div class="section-intro pb-60px">
          <h3 style="color:White;">Popular Item in the market</h3>
          <h2 style="color:White;">Latest Product</h2>
        </div>
        <div class="row">
        <c:forEach var="product" items="${products}">
          <div class="col-md-6 col-lg-4 col-xl-3">
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
        </div>
      </div>
    </section>
    <!-- ================ trending product section end ================= -->  


    <!-- ================ offer section start ================= --> 
    <section class="offer" id="parallax-1" data-anchor-target="#parallax-1" data-300-top="background-position: 20px 30px" data-top-bottom="background-position: 0 20px">
      <div class="container">
        <div class="row">
          <div class="col-xl-5">
            <div class="offer__content text-center">
              <h3>Welcome </h3>
              <h4>To Retail Net</h4>
              <p>Connect to the Suppliers </p>
              <a class="button button--active mt-3 mt-xl-4" href="${pageContext.request.contextPath}/sector/supplierpage">Browse Now</a>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- ================ offer section end ================= --> 

    <!-- ================ Best Selling item  carousel ================= --> 
    <section class="section-margin calc-60px">
      <div class="container">
        <div class="section-intro pb-60px">
          
          <h2 style="color:White;">Our <span class="section-intro__style">Top Sellers</span></h2>
        </div>
        <div class="owl-carousel owl-theme" id="bestSellerCarousel">
        <c:forEach	begin="0" end="7" var="firm" items="${Firm}">
          
          <div class="card text-center card-product">
            
            <div class="card-product__img" style="height:254px; width:254px;">
            <c:if test="${firm.profileImageName == null}">
              <img class="img-fluid" src="${pageContext.request.contextPath}/assets/img/product/user.png" alt="">
              </c:if>
               <c:if test="${firm.profileImageName != null}">
              <img class="img-fluid" src="${pageContext.request.contextPath}/fimages/${firm.firmId}/${firm.profileImageName}" alt="">
              </c:if>
            </div>
            
            <div class="card-body" >  
              <h4 class="card-product__title"><a href="${pageContext.request.contextPath}/sector/supplier/${firm.firmId}">${firm.firmName }</a></h4>
            </div>
          </div>
          
          </c:forEach>

         

         

         
       

          

         

         
        </div>
      </div>
    </section>
    <!-- ================ Best Selling item  carousel end ================= --> 

    <!-- ================ Blog section start ================= -->  
   
    <!-- ================ Blog section end ================= -->  

    <!-- ================ Subscribe section start ================= --> 
    
    <!-- ================ Subscribe section end ================= --> 
 </main>


  <!--================ Start footer Area  =================-->	
	<jsp:include page="footer.jsp"/>
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
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
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/supplierlist.css"> --%>

<style type="text/css">
.sup1:hover {
    border: 1px solid #384aeb;
}
.sup1{
	
    margin: 0;
    padding: 0;
    border: 0;
    font-size: 100%;
    font: inherit;
    vertical-align: baseline;
    display: block;
    width:600px;
    
}
.sup1  .item-main {
	
    border-bottom: 1px solid #dae2ed;
    margin: 1px 1px;
    padding: 0px 0 0px;
}
 .item-title {
    padding-top: 3px;
}
.sup .item-title .title-wrap {
    display: inline;
}
.sup  .title {
    font-size: 18px;
    font-weight: 700;
    margin: 0 0 3px;
    height: 22px;
    line-height: 20px;
    vertical-align: top;
}
.ellipsis {
    width: inherit;
}
</style>

</head>
<body style="background-image: url('${pageContext.request.contextPath}/assets/img/background.jpg');">
<!--================ Start Header Menu Area =================-->
	<jsp:include page="header.jsp" />
	<!--================ End Header Menu Area =================-->
	
	<!-- ================ start banner area ================= -->	
	<section class="blog-banner-area" id="category">
		<div class="container h-100">
			<div class="blog-banner">
				<div class="text-center">
					<h1>Our Suppliers</h1>
					<nav aria-label="breadcrumb" class="banner-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Our Suppliers</li>
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
            <div class="head">Available Locations</div>
            <ul class="main-categories">
              <li class="common-filter">
                <form action="">
                  <ul>
<!--                     <li class="filter-list"><input class="pixel-radio" type="radio" id="men" name="brand"><label for="men">Men<span> (3600)</span></label></li> -->
<!--                     <li class="filter-list"><input class="pixel-radio" type="radio" id="women" name="brand"><label for="women">Women<span> (3600)</span></label></li> -->
<!--                     <li class="filter-list"><input class="pixel-radio" type="radio" id="accessories" name="brand"><label for="accessories">Accessories<span> (3600)</span></label></li> -->
<!--                     <li class="filter-list"><input class="pixel-radio" type="radio" id="footwear" name="brand"><label for="footwear">Footwear<span> (3600)</span></label></li> -->
<!--                     <li class="filter-list"><input class="pixel-radio" type="radio" id="bayItem" name="brand"><label for="bayItem">Bay item<span> (3600)</span></label></li> -->
<!--                     <li class="filter-list"><input class="pixel-radio" type="radio" id="electronics" name="brand"><label for="electronics">Electronics<span> (3600)</span></label></li> -->
<!--                     <li class="filter-list"><input class="pixel-radio" type="radio" id="food" name="brand"><label for="food">Food<span> (3600)</span></label></li> -->
<%--                  <c:set var="count" value="0" scope="page" /> --%>
<%--                    <c:set var="count" value="${count + 1}" scope="page" /> --%>
                  <c:forEach var="City" items="${cities}">

                    <li class="filter-list"><input class="pixel-radio" type="radio" id="${City.cityName}" name="cities"><label for="${City.cityName}">${City.cityName}<span></span></label></li>
                    </c:forEach>
                  </ul>
                </form>
              </li>
            </ul>
          </div>
<!--           <div class="sidebar-filter"> -->
<!--             <div class="top-filter-head">Product Filters</div> -->
<!--             <div class="common-filter"> -->
<!--               <div class="head">Brands</div> -->
<!--               <form action="#"> -->
<!--                 <ul> -->
<!--                   <li class="filter-list"><input class="pixel-radio" type="radio" id="apple" name="brand"><label for="apple">Apple<span>(29)</span></label></li> -->
<!--                   <li class="filter-list"><input class="pixel-radio" type="radio" id="asus" name="brand"><label for="asus">Asus<span>(29)</span></label></li> -->
<!--                   <li class="filter-list"><input class="pixel-radio" type="radio" id="gionee" name="brand"><label for="gionee">Gionee<span>(19)</span></label></li> -->
<!--                   <li class="filter-list"><input class="pixel-radio" type="radio" id="micromax" name="brand"><label for="micromax">Micromax<span>(19)</span></label></li> -->
<!--                   <li class="filter-list"><input class="pixel-radio" type="radio" id="samsung" name="brand"><label for="samsung">Samsung<span>(19)</span></label></li> -->
<!--                 </ul> -->
<!--               </form> -->
<!--             </div> -->
<!--             <div class="common-filter"> -->
<!--               <div class="head">Color</div> -->
<!--               <form action="#"> -->
<!--                 <ul> -->
<!--                   <li class="filter-list"><input class="pixel-radio" type="radio" id="black" name="color"><label for="black">Black<span>(29)</span></label></li> -->
<!--                   <li class="filter-list"><input class="pixel-radio" type="radio" id="balckleather" name="color"><label for="balckleather">Black -->
<!--                       Leather<span>(29)</span></label></li> -->
<!--                   <li class="filter-list"><input class="pixel-radio" type="radio" id="blackred" name="color"><label for="blackred">Black -->
<!--                       with red<span>(19)</span></label></li> -->
<!--                   <li class="filter-list"><input class="pixel-radio" type="radio" id="gold" name="color"><label for="gold">Gold<span>(19)</span></label></li> -->
<!--                   <li class="filter-list"><input class="pixel-radio" type="radio" id="spacegrey" name="color"><label for="spacegrey">Spacegrey<span>(19)</span></label></li> -->
<!--                 </ul> -->
<!--               </form> -->
<!--             </div> -->
<!--             <div class="common-filter"> -->
<!--               <div class="head">Price</div> -->
<!--               <div class="price-range-area"> -->
<!--                 <div id="price-range"></div> -->
<!--                 <div class="value-wrapper d-flex"> -->
<!--                   <div class="price">Price:</div> -->
<!--                   <span>$</span> -->
<!--                   <div id="lower-value"></div> -->
<!--                   <div class="to">to</div> -->
<!--                   <span>$</span> -->
<!--                   <div id="upper-value"></div> -->
<!--                 </div> -->
<!--               </div> -->
<!--             </div> -->
<!--           </div> -->
        </div>
        <div class="col-xl-9 col-lg-8 col-md-7">
          <!-- Start Filter Bar -->
          <div class="filter-bar d-flex flex-wrap align-items-center">
<!--             <div class="sorting"> -->
<!--               <select> -->
<!--                 <option value="1">Default sorting</option> -->
<!--                 <option value="1">Default sorting</option> -->
<!--                 <option value="1">Default sorting</option> -->
<!--               </select> -->
<!--             </div> -->
<!--             <div class="sorting mr-auto"> -->
<!--               <select> -->
<!--                 <option value="1">Show 10</option> -->
<!--                 <option value="1">Show 20</option> -->
<!--                 <option value="1">Show 50</option> -->
<!--               </select> -->
<!--             </div> -->
            <div>
              <div class="input-group filter-bar-search">
                <input type="text" placeholder="Search">
                <div class="input-group-append">
                  <button type="button"><i class="ti-search"></i></button>
                </div>
              </div>
            </div>
          </div>
          <!-- End Filter Bar -->
          <!-- Start Best Seller -->
          <section class="lattest-product-area pb-40 category-list">
            <div class="row">
            <c:forEach var="firm" items="${firm}">
<!--               <div class="sup1" > -->
<!--     			<div class="item-main" > -->
<!--         			<div class="sup2" style="background-color: #384aeb">  -->
<!--             			<div class="sup2 sup3"> -->
<!--                 			<div class="sup3 sup4"  style="padding-top: 3px;width:300px;" >                               -->
<!--                      			 <div class="title-wrap"> -->
<!--                         			<h2 class="title ellipsis" style="padding-left: 10px;"> -->
<%--                             			<a href="${pageContext.request.contextPath}/sector/supplier/${Firm.firmId}" style="color: white;">${Firm.firmName }&nbsp;&nbsp;</a> --%>
<!--                         			</h2> -->
<!--                       			</div> -->
<!--                     		<div class="tags-wrap" style="margin-bottom: 8px;"></div> -->
<!--                 			</div> -->
<!--    		    			</div> -->
<!--         			</div> -->
<!--         			<div class="content util-clearfix" style="margin:10px 0 0; zoom:1;background-color:#f1f6f7;"> -->
<!--             			<div class="right" style="overflow:hidden;"> -->
<!--                 			<div class="attrs" style="min-height: 95px;">       -->
<!--                     			<div class="attr" style="line-height: 18px;margin-bottom:3px;"> -->
<!--                         			<span class="name" style="display: block;width: 110px;float: left;color: #999;">Main Products:</span> -->
<!--                         				<div class="value ellipsis ph" style="color: #333;width: auto;overflow: hidden;word-wrap: normal;white-space: nowrap; ">Ball <strong>Pen</strong>,Metal <strong>Pen</strong>,Brush <strong>Pen</strong>,LED Light <strong>Pen</strong>,Fountain <strong>Pen</strong></div> -->
<!--                     			</div> -->
<!--                     			 <div class="attr" style="line-height: 18px;margin-bottom:3px;"> -->
<!--                         			<span class="name" style="display: block;width: 110px;float: left;color: #999;">State/City:</span> -->
<!--                         				<div class="value"> -->
<%--                        						<span class="ellipsis search" style="color: #333;width: auto;overflow: hidden;word-wrap: normal;white-space: nowrap; ">${Firm.cities.states.stateName} / ${Firm.cities.cityName }</span> --%>
<!--                        					</div> -->
<!--                     			</div> -->
                    			
<!--                     			<div class="attr qr" style="margin-top: 7px;line-height: 18px;margin-bottom: 3px;"> -->
<!--                         			<ul class="record util-clearfix" style="list-style: none;margin-top: 12px;"> -->
<!--                          				<li title="The supplier's transactions conducted via Alibaba.com in the past 6 months."> -->
<!--                                     		<div class="lab" style="font-size: 14px;color: #666;line-height: 20px;"><b>169</b> Transactions(6 months)</div> -->
<!--                                		    </li>                                                                                       -->
<!--                         			</ul> -->
<!--                     			</div> -->
<!--                 			</div> -->
<!--            				</div>		 -->
<!--             		</div> -->
<!--     			</div> -->
<!-- 			</div> -->

			<div class="card text-center card-product" style="margin-left: 10px;">
            
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
          </section>
          <!-- End Best Seller -->
        </div>
      </div>
    </div>
  </section>
	<!-- ================ category section end ================= -->		  

	

	
	
	<!--================ Start footer Area  =================-->
	<jsp:include page="footer.jsp" />
	<!--================ End footer Area  =================-->
	

</body>
</html>
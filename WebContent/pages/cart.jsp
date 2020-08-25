<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
var subtotal;
$(document).ready(function(){
	subtotal = 0;
	
	$('[id^=total]').each(function(){
		
		console.log("total",$(this).html());
		subtotal += parseInt($(this).html());
	});
	
	$('#subtotal').html(subtotal);
	
	var count = $('#countid').val();
	$('#trcart'+count).siblings('.nice-select').remove();
	
	
	$('[id^=remove]').click(function(){
		var id = $(this).attr('id');
		var countId = id.substr(6,id.length);
		
		var cartId = $('#cartid'+countId).val();
		console.log(cartId);
		
		var inputData = "cart_id="+cartId;
		console.log(inputData);
		$.ajax({
			'type' : 'GET',
			'url' : '/RetailNet/Cart/rest/removefromcart',
			'data': inputData,
			
			'success' : function(data, status){
				console.log(data);
				var total = parseInt($('#total'+countId).html());
				subtotal -= total;
				$('#subtotal').html(subtotal);
				$('#trcart'+countId).remove();
			}
	
		});
	});
	
	
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
					<h1>Shopping Cart</h1>
					<nav aria-label="breadcrumb" class="banner-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Shopping Cart</li>
            </ol>
          </nav>
				</div>
			</div>
    </div>
	</section>
	<!-- ================ end banner area ================= -->
  
  

  <!--================Cart Area =================-->
  
 <c:if test="${fn:length(cart) != 0}">
    <section class="cart_area">
      <div class="container">
          <div class="cart_inner">
              <div class="table-responsive">
                  <table class="table">
                      <thead>
                          <tr>
                              <th scope="col">Product</th>
                              <th scope="col">Price</th>
                              <th scope="col">Quantity</th>
                              <th scope="col">Total</th>
                              <th scope="col"></th>
                          </tr>
                      </thead>
                      <tbody>
                      <c:set var="s"  value="0.00"/>
                       <fmt:formatNumber var="total" value = "${s}"  type = "number"/>
                      
                      <c:set var="count" value="0" scope="page" />
                       <c:forEach var="Cart" items="${cart}">
                       
                   
                    <c:set var="count" value="${count + 1}" scope="page" />
                      <input type="hidden" value="${count}" id="countid">
                           <input type="hidden" value="${Cart.cartId}" id="cartid${count}">
                      
                          <tr id="trcart${count}">
                          <c:if test="${Cart.product.status == 0}">
                          <td>
                       	<h4>This Product Is no Longer Available</h4>
                       	<a id="remove" href="#">Remove</a>
                       	</td>
                       	</c:if>
                       	<c:if test="${Cart.product.status != 0}">
                          							<c:if test="${Cart.product.status != 0}">
                                                     <c:if test="${Cart.product.firstImageName != Null}">
                              <td>
                                  <div class="media">
                                      <div class="d-flex">
                                          <img src="${pageContext.request.contextPath}/images/${Cart.product.productId }/${Cart.product.firstImageName}" alt="" height = "50" width="50">
                                  
                                      </div>
<%--                                       <a href="${pageContext.request.contextPath}/cart/removefromcart/${Cart.cartId}">Remove</a> --%>
                                      <a id="remove" href="#">Remove From Cart</a>
                                      </div>
                                      <div class="media-body">
                                          <p>${Cart.product.productName }</p>
                                      </div>
                                 
                              </td>
                              </c:if>
                              <c:if test="${Cart.product.firstImageName == Null}"><td>
                              <div class="media">
                                      <div class="d-flex">
                                          <img src="${pageContext.request.contextPath}/assets/img/addimg.png" alt="" height = "50" width="50">
                                      </div>
<%--                                       <a href="${pageContext.request.contextPath}/cart/removefromcart/${Cart.cartId}">Remove</a> --%>
                                      <a id="remove${count}" href="#">Remove</a>
                                      </div>
                                       <div class="media-body">
                                          <p>${Cart.product.productName }</p>
                                      </div>
                              </td>
                              </c:if>
                              <td>
                                  <h5>&#8377; ${Cart.product.price}  / ${Cart.product.unit.name}</h5>
                              </td>
                              <td>
                                 <h5>${Cart.quantity}</h5>
                              </td>
                              <td>
                                  <h5> <fmt:parseNumber var="i" type="number" value="${Cart.product.price}" />  
                                  <fmt:parseNumber var="j" type="number" value="${Cart.quantity}" />
                                  <c:set var="total" value="${total + i}" />
                                   &#8377; <span id="total${count}"><c:out value="${j*i}" /></span>
                                  </h5>
                              </td>
                              <td><a class="button" href="${pageContext.request.contextPath}/order/contacttosupplier/${Cart.product.productId}">ContactSupplier</a></td>
                          	</c:if>
							</c:if>                          
                          </tr>
                          
                         </c:forEach>
                         
<!--                           <tr class="bottom_button"> -->
<!--                               <td> -->
<!--                                   <a class="button" href="#">Update Cart</a> -->
<!--                               </td> -->
<!--                               <td> -->

<!--                               </td> -->
<!--                               <td> -->

<!--                               </td> -->
<!--                               <td> -->
<!--                                   <div class="cupon_text d-flex align-items-center"> -->
<!--                                       <input type="text" placeholder="Coupon Code"> -->
<!--                                       <a class="primary-btn" href="#">Apply</a> -->
<!--                                       <a class="button" href="#">Have a Coupon?</a> -->
<!--                                   </div> -->
<!--                               </td> -->
<!--                           </tr> -->
                          <tr>
                              <td>

                              </td>
                              <td>

                              </td>
                              <td>
                                  <h5>Subtotal</h5>
                              </td>
                              <td>
                                  <h5><span>&#8377;</span><span id="subtotal"><c:out value="${total}" /></span></h5>
                              </td>
                          </tr>
<!--                           <tr class="shipping_area"> -->
<!--                               <td class="d-none d-md-block"> -->

<!--                               </td> -->
<!--                               <td> -->

<!--                               </td> -->
<!--                               <td> -->
<!--                                   <h5>Shipping</h5> -->
<!--                               </td> -->
<!--                               <td> -->
<!--                                   <div class="shipping_box"> -->
<!--                                       <ul class="list"> -->
<!--                                           <li><a href="#">Flat Rate: $5.00</a></li> -->
<!--                                           <li><a href="#">Free Shipping</a></li> -->
<!--                                           <li><a href="#">Flat Rate: $10.00</a></li> -->
<!--                                           <li class="active"><a href="#">Local Delivery: $2.00</a></li> -->
<!--                                       </ul> -->
<!--                                       <h6>Calculate Shipping <i class="fa fa-caret-down" aria-hidden="true"></i></h6> -->
<!--                                       <select class="shipping_select"> -->
<!--                                           <option value="1">Bangladesh</option> -->
<!--                                           <option value="2">India</option> -->
<!--                                           <option value="4">Pakistan</option> -->
<!--                                       </select> -->
<!--                                       <select class="shipping_select"> -->
<!--                                           <option value="1">Select a State</option> -->
<!--                                           <option value="2">Select a State</option> -->
<!--                                           <option value="4">Select a State</option> -->
<!--                                       </select> -->
<!--                                       <input type="text" placeholder="Postcode/Zipcode"> -->
<!--                                       <a class="gray_btn" href="#">Update Details</a> -->
<!--                                   </div> -->
<!--                               </td> -->
<!--                           </tr> -->
                          <tr class="out_button_area">
                              <td class="d-none-l">

                              </td>
                              <td class="">

                              </td>
                              <td>

                              </td>
                              <td>
                                  <div class="checkout_btn_inner d-flex align-items-center">
                                      <a class="gray_btn" href="${pageContext.request.contextPath}/user/index">Continue Shopping</a>
<!--                                       <a class="primary-btn ml-2" href="#">Proceed to checkout</a> -->
                                  </div>
                              </td>
                          </tr>
                      </tbody>
                  </table>
              </div>
          </div>
      </div>
      
     
  </section>
  </c:if>
  <c:if test="${fn:length(cart) == 0}">
 <section class="hero-banner">
  <div class="container">
        <div class="row no-gutters align-items-center pt-60px">
          <div class="col-5 d-none d-sm-block">
            <div class="hero-banner__img">
              <img class="img-fluid" src="${pageContext.request.contextPath}/assets/img/home/emptycart.png" alt="">
            </div>
          </div>
          <div class="col-sm-7 col-lg-6 offset-lg-1 pl-4 pl-md-5 pl-lg-0">
            <div class="hero-banner__content">
              <h4>Your Cart Is Empty</h4>
              <h1>Browse Our Premium Product</h1>
              <a class="button button-hero" href="${pageContext.request.contextPath}/user/index">Browse Now</a>
            </div>
          </div>
        </div>
      </div>
      </section>
  </c:if>
  
  <!--================End Cart Area =================-->
	
	<!--================ Start footer Area  =================-->
	<jsp:include page="footer.jsp" />
	<!--================ End footer Area  =================-->
</body>
</html>
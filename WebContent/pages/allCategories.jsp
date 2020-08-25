<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.ctg-main{
    width: 865px;
    float: left;
    box-sizing: border-box;
    display: block;
        font-family: Arial, sans-serif;
}

.td1{
border: 1px solid grey;
font-weight: 400;
    float: none!important;
}
}
.td1:hover {
    border: 2px solid #ff7419;
}
.td1 a{
color: #333;
    font-weight: 700;
    position: relative;
    z-index: 2;
    display: block;
    cursor: pointer;
    width: 100%;
}
.td1 a:hover{
color: blue;
}

.ctg-main .ctg-title {
    
    font-size: 22px;
    color: #333;
    }
    
 .ctg-main .item {
    position: relative;
    margin-top: 40px;
    display:block;
    zoom: 1;
}
.ctg-main .sub-item-wrapper{
margin-left: 35px;
box-sizing: border-box;
min-height:280px;
}
.ctg-main .sub-item{
    float: left;
    width: 49.9%;
    display: block;
}
.ctg-main .sub-title {
    height: 14px;
    line-height: 14px;
    font-size: 14px;
    margin: 25px 0 17px 0;
    font-weight: 700;
}

.ctg-main .sub-item-cont-wrapper {
    min-height: 206px;
}
.ctg-main .sub-item-cont {
    height: 180px;
    overflow: hidden;
    list-style: none;
    margin: 0;
    padding: 0;
}
.ctg-main .sub-item-cont li {
    line-height: 18px;
    height: 18px;
    font-size: 12px;
    float: left;
    width: 180px;
    margin-right: 10px;
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;
}
.ctg-main .sub-item-cont a {
    color: #333;
/*     font-size: 16px; */
    
}
.ctg-main .sub-item .sub-item-cont-wrapper .sub-item-cont li a:hover {
    color: blue;
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
					<h1>All Categories</h1>
					<nav aria-label="breadcrumb" class="banner-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">All Categories</li>
            </ol>
          </nav>
				</div>
			</div>
    </div>
	</section>
	<!-- ================ end banner area ================= -->
	<main class="site-main">
	<section class="section-margin mt-0" style="height:6000px;">
	<div class="container">
	<h2 class="cg-title">Products by Category</h2>
	
	<table id="table1" class="table"  style="position: relative;box-sizing:border-box;border-spacing: 2px;border: 2px solid grey;">
                                                        <tbody><tr>
                                        <td class="td1" data-role="anchor1">
                                        <input type="hidden" value="Agriculture &amp; Food">
                        <a id="megsec" class="anchor1 anchor-agricuture" data-role="cont" href="javascript:;">
                            <i class="fa fa-carrot" style="width: 18px;height: 32px;margin-top: -16px;"></i>
                            <span class="desc">
                                Agriculture &amp; Food
                            </span>
                        </a>
                    </td>
                                                                            <td class="td1" data-role="anchor2">
                                                                            <input type="hidden" value="Apparel,Textiles &amp; Accessories">
                        <a id="megsec" class="anchor2 anchor-apparel" data-role="cont" href="javascript:;">
                             <i class="fa fa-tshirt" style="width: 18px;height: 32px;margin-top: -16px;"></i>
                            <span class="desc">
                                Apparel,Textiles &amp; Accessories
                            </span>
                        </a>
                    </td>
                                                                            <td class="td1" data-role="anchor3">
                                                                            <input type="hidden" value="Auto &amp; Transportation">
                        <a id="megsec" class="anchor3 anchor-auto" data-role="cont" href="javascript:;">
                            <i class="cg-icon"></i>
                            <span class="desc">
                                Auto &amp; Transportation
                            </span>
                        </a>
                    </td>
                                                                            <td class="td1" data-role="anchor4">
                                                                            <input type="hidden" value=" Bags, Shoes &amp; Accessories">
                        <a id="megsec" class="anchor4 anchor-bags" data-role="cont" href="javascript:;">
                            <i class="cg-icon"></i>
                            <span class="desc">
                                Bags, Shoes &amp; Accessories
                            </span>
                        </a>
                    </td>
                                                                            <td class="td1" data-role="anchor5">
                                                                            <input type="hidden" value="Electronics">
                        <a id="megsec" class="anchor5 anchor-electronics" data-role="cont" href="javascript:;">
                            <i class="cg-icon"></i>
                            <span class="desc">
                                Electronics
                            </span>
                        </a>
                    </td>
                                                                            <td class="td1" data-role="anchor6">
                                                                            <input type="hidden" value="Electrical Equipment, Components &amp; Telecoms">
                        <a id="megsec" class="anchor6 anchor-electrical" data-role="cont" href="javascript:;">
                            <i class="cg-icon"></i>
                            <span class="desc">
                                Electrical Equipment, Components &amp; Telecoms
                            </span>
                        </a>
                    </td>
                                        </tr>
                                                                            <tr>
                                        <td class="td1" data-role="anchor7">
                                        <input type="hidden" value=" Gifts, Sports &amp; Toys">
                        <a id="megsec" class="anchor7 anchor-gifts" data-role="cont" href="javascript:;">
                            <i class="cg-icon"></i>
                            <span class="desc">
                                Gifts, Sports &amp; Toys
                            </span>
                        </a>
                    </td>
                                                                            <td class="td1" data-role="anchor8">
                                                                            <input type="hidden" value=" Health &amp; Beauty">
                        <a id="megsec" class="anchor8 anchor-health" data-role="cont" href="javascript:;">
                            <i class="cg-icon"></i>
                            <span class="desc">
                                Health &amp; Beauty
                            </span>
                        </a>
                    </td>
                                                                            <td class="td1" data-role="anchor9">
                                                                            <input type="hidden" value="Home, Lights &amp; Construction">
                        <a id="megsec" class="anchor9 anchor-home" data-role="cont" href="javascript:;">
                            <i class="cg-icon"></i>
                            <span class="desc">
                                Home, Lights &amp; Construction
                            </span>
                        </a>
                    </td>
                                                                            <td class="td1" data-role="anchor10">
                                                                            <input type="hidden" value="Machinery, Industrial Parts &amp; Tools">
                        <a id="megsec" class="anchor10 anchor-machinery" data-role="cont" href="javascript:;">
                            <i class="cg-icon"></i>
                            <span class="desc">
                                Machinery, Industrial Parts &amp; Tools
                            </span>
                        </a>
                    </td>
                                                                            <td class="td1" data-role="anchor11">
                                                                            <input type="hidden" value="Metallurgy, Chemicals, Rubber &amp; Plastics">
                        <a id="megsec" class="anchor11 anchor-metallurgy" data-role="cont" href="javascript:;">
                            <i class="cg-icon"></i>
                            <span class="desc">
                                Metallurgy, Chemicals, Rubber &amp; Plastics
                            </span>
                        </a>
                    </td>
                                                                            <td class="td1" data-role="anchor12">
                                                                            <input type="hidden" value="Packaging, Advertising &amp; Office">
                        <a id="megsec" class="anchor12 anchor-packaging" data-role="cont" href="javascript:;">
                            <i class="cg-icon"></i>
                            <span class="desc">
                                Packaging, Advertising &amp; Office
                            </span>
                        </a>
                    </td>
                                        </tr>
                                                </tbody>
                                                </table>
            </div>
            <div class="container">
            <div  class="ctg-main">
            
            <div class="item">
            
            <h3 class="ctg-title">
                            <span id="anchor1" class="anchor-subsitution"></span>
                           <i class="fa fa-carrot" style="width: 18px;height: 32px;margin-top: -16px;"></i>
                            Agriculture &amp; Food
                        </h3>
             
             	<div class="sub-item-wrapper">
             	<c:forEach begin="0" end="1" var="Sector" items="${sectors}"  >
             		<div class="sub-item">
             		<h4 class="sub-title">
                     <a href="${pageContext.request.contextPath}/sector/sectorpage/${Sector.sectorId}"><c:out value="${Sector.sectorName}" /></a>
                     <span>(3978931)</span>
                    </h4>
                   		 <div class="sub-item-cont-wrapper">
                    		<ul class="sub-item-cont">
                    		<c:forEach var="Category" items="${categories}">
                    		<c:if test="${Category.sector.sectorName == Sector.sectorName }">
                                                                                <li>
                                            <a href="${pageContext.request.contextPath}/sector/categorypage/${Category.categoryId}">
                                                <c:out value="${Category.categoryName}" />
                                            </a>
                                        </li>
                                        </c:if>
                                      </c:forEach>                                          
                                   </ul>
                    	</div>
             		</div>
             		
             		</c:forEach>
             	</div>
            </div>
            
            <div class="item" style="min-height:530px;">
            
            <h3 class="ctg-title">
                            <span id="anchor1" class="anchor-subsitution"></span> &nbsp;&nbsp;&nbsp;
                            <i class="fa fa-tshirt" style="width: 18px;height: 32px;margin-top: -16px;"></i> &nbsp;
                            Apparel,Textiles &amp; Accessories
                        </h3>
                        <div class="sub-item-wrapper">
             	<c:forEach begin="2" end="5" var="Sector" items="${sectors}"  >
             		<div class="sub-item">
             		<h4 class="sub-title">
                     <a href="${pageContext.request.contextPath}/sector/sectorpage/${Sector.sectorId}"><c:out value="${Sector.sectorName}" /></a>
                     <span>(3978931)</span>
                    </h4>
                   		 <div class="sub-item-cont-wrapper">
                    		<ul class="sub-item-cont">
                    		<c:forEach var="Category" items="${categories}">
                    		<c:if test="${Category.sector.sectorName == Sector.sectorName }">
                                                                                <li>
                                            <a href="${pageContext.request.contextPath}/sector/categorypage/${Category.categoryId}">
                                                <c:out value="${Category.categoryName}" />
                                            </a>
                                        </li>
                                        </c:if>
                                      </c:forEach>                                          
                                   </ul>
                    	</div>
             		</div>
             		
             		</c:forEach>
             	</div>
             	
            </div>
            
            <div class="item">
            
            <h3 class="ctg-title">
                            <span id="anchor1" class="anchor-subsitution"></span>
                             <i class="fa fa-car" style="width: 18px;height: 32px;margin-top: -16px;"></i> &nbsp;
                            Auto &amp; Transportation
                        </h3>
                        <div class="sub-item-wrapper">
             	<c:forEach begin="6" end="6" var="Sector" items="${sectors}"  >
             		<div class="sub-item" style="width:100%;">
             		<h4 class="sub-title">
                     <a href="${pageContext.request.contextPath}/sector/sectorpage/${Sector.sectorId}"><c:out value="${Sector.sectorName}" /></a>
                     <span>(3978931)</span>
                    </h4>
                   		 <div class="sub-item-cont-wrapper">
                    		<ul class="sub-item-cont">
                    		<c:forEach var="Category" items="${categories}">
                    		<c:if test="${Category.sector.sectorName == Sector.sectorName }">
                                                                                <li>
                                            <a href="${pageContext.request.contextPath}/sector/categorypage/${Category.categoryId}">
                                                <c:out value="${Category.categoryName}" />
                                            </a>
                                        </li>
                                        </c:if>
                                      </c:forEach>                                          
                                   </ul>
                    	</div>
             		</div>
             		
             		</c:forEach>
             	</div>
                        
            </div>
            
            <div class="item">
            
            <h3 class="ctg-title">
                            <span id="anchor1" class="anchor-subsitution"></span>
                            <i class="fa fa-shopping-bag" style="width: 18px;height: 32px;margin-top: -16px;"></i> &nbsp;
                           Bags, Shoes &amp; Accessories
                        </h3>
                        <div class="sub-item-wrapper">
             	<c:forEach begin="7" end="8" var="Sector" items="${sectors}"  >
             		<div class="sub-item">
             		<h4 class="sub-title">
                     <a href="${pageContext.request.contextPath}/sector/sectorpage/${Sector.sectorId}"><c:out value="${Sector.sectorName}" /></a>
                     <span>(3978931)</span>
                    </h4>
                   		 <div class="sub-item-cont-wrapper">
                    		<ul class="sub-item-cont">
                    		<c:forEach var="Category" items="${categories}">
                    		<c:if test="${Category.sector.sectorName == Sector.sectorName }">
                                                                                <li>
                                            <a href="${pageContext.request.contextPath}/sector/categorypage/${Category.categoryId}">
                                                <c:out value="${Category.categoryName}" />
                                            </a>
                                        </li>
                                        </c:if>
                                      </c:forEach>                                          
                                   </ul>
                    	</div>
             		</div>
             		
             		</c:forEach>
             	</div>
                        
            </div>
            
            <div class="item" style="min-height:530px;">
            
            <h3 class="ctg-title">
                            <span id="anchor1" class="anchor-subsitution"></span>
                            <i class="fa fa-tv" style="width: 18px;height: 32px;margin-top: -16px;"></i> &nbsp;
                           Electronics &amp; Electrical Equipment, Components & Telecoms
                        </h3>
                        <div class="sub-item-wrapper">
             	<c:forEach begin="9" end="12" var="Sector" items="${sectors}"  >
             		<div class="sub-item">
             		<h4 class="sub-title">
                     <a href="${pageContext.request.contextPath}/sector/sectorpage/${Sector.sectorId}"><c:out value="${Sector.sectorName}" /></a>
                     <span>(3978931)</span>
                    </h4>
                   		 <div class="sub-item-cont-wrapper">
                    		<ul class="sub-item-cont">
                    		<c:forEach var="Category" items="${categories}">
                    		<c:if test="${Category.sector.sectorName == Sector.sectorName }">
                                                                                <li>
                                            <a href="${pageContext.request.contextPath}/sector/categorypage/${Category.categoryId}">
                                                <c:out value="${Category.categoryName}" />
                                            </a>
                                        </li>
                                        </c:if>
                                      </c:forEach>                                          
                                   </ul>
                    	</div>
             		</div>
             		
             		</c:forEach>
             	</div>
                        
            </div>
            
            
            <div class="item">
            
            <h3 class="ctg-title">
                            <span id="anchor1" class="anchor-subsitution"></span>
                            <i class="fa fa-gift" style="width: 18px;height: 32px;margin-top: -16px;"></i> &nbsp;
                            Gifts, Sports &amp;
                        </h3>
                       <div class="sub-item-wrapper">
             	<c:forEach begin="13" end="14" var="Sector" items="${sectors}"  >
             		<div class="sub-item">
             		<h4 class="sub-title">
                     <a href="${pageContext.request.contextPath}/sector/sectorpage/${Sector.sectorId}"><c:out value="${Sector.sectorName}" /></a>
                     <span>(3978931)</span>
                    </h4>
                   		 <div class="sub-item-cont-wrapper">
                    		<ul class="sub-item-cont">
                    		<c:forEach var="Category" items="${categories}">
                    		<c:if test="${Category.sector.sectorName == Sector.sectorName }">
                                                                                <li>
                                            <a href="${pageContext.request.contextPath}/sector/categorypage/${Category.categoryId}">
                                                <c:out value="${Category.categoryName}" />
                                            </a>
                                        </li>
                                        </c:if>
                                      </c:forEach>                                          
                                   </ul>
                    	</div>
             		</div>
             		
             		</c:forEach>
             	</div>
                        
            </div>
            
             <div class="item">
            
            <h3 class="ctg-title">
                            <span id="anchor1" class="anchor-subsitution"></span>
                            <i class="fa fa-paper-plane" style="width: 18px;height: 32px;margin-top: -16px;"></i> &nbsp;
                            Toys
                        </h3>
                       <div class="sub-item-wrapper">
             	<c:forEach begin="15" end="15" var="Sector" items="${sectors}"  >
             		<div class="sub-item" style="width:100%;">
             		<h4 class="sub-title">
                     <a href="${pageContext.request.contextPath}/sector/sectorpage/${Sector.sectorId}"><c:out value="${Sector.sectorName}" /></a>
                     <span>(3978931)</span>
                    </h4>
                   		 <div class="sub-item-cont-wrapper">
                    		<ul class="sub-item-cont">
                    		<c:forEach var="Category" items="${categories}">
                    		<c:if test="${Category.sector.sectorName == Sector.sectorName }">
                                                                                <li>
                                            <a href="${pageContext.request.contextPath}/sector/categorypage/${Category.categoryId}">
                                                <c:out value="${Category.categoryName}" />
                                            </a>
                                        </li>
                                        </c:if>
                                      </c:forEach>                                          
                                   </ul>
                    	</div>
             		</div>
             		
             		</c:forEach>
             		
             	</div>
                        
            </div>
            
            <div class="item">
            
            <h3 class="ctg-title">
                            <span id="anchor1" class="anchor-subsitution"></span>
                            <i class="fa fa-medkit	" style="width: 18px;height: 32px;margin-top: -16px;"></i> &nbsp;
                            Health &amp; Beauty
                        </h3>
                        <div class="sub-item-wrapper">
             	<c:forEach begin="16" end="17" var="Sector" items="${sectors}"  >
             		<div class="sub-item">
             		<h4 class="sub-title">
                     <a href="${pageContext.request.contextPath}/sector/sectorpage/${Sector.sectorId}"><c:out value="${Sector.sectorName}" /></a>
                     <span>(3978931)</span>
                    </h4>
                   		 <div class="sub-item-cont-wrapper">
                    		<ul class="sub-item-cont">
                    		<c:forEach var="Category" items="${categories}">
                    		<c:if test="${Category.sector.sectorName == Sector.sectorName }">
                                                                                <li>
                                            <a href="${pageContext.request.contextPath}/sector/categorypage/${Category.categoryId}">
                                                <c:out value="${Category.categoryName}" />
                                            </a>
                                        </li>
                                        </c:if>
                                      </c:forEach>                                          
                                   </ul>
                    	</div>
             		</div>
             		
             		</c:forEach>
             		
             	</div>
                        
            </div>
            
            <div class="item" style="min-height:530px;">
            
            <h3 class="ctg-title">
                            <span id="anchor1" class="anchor-subsitution"></span>
                            <i class="fa fa-couch" style="width: 18px;height: 32px;margin-top: -16px;"></i> &nbsp;
                            Home, Lights &amp; Construction
                        </h3>
                        <div class="sub-item-wrapper">
             	<c:forEach begin="18" end="21" var="Sector" items="${sectors}"  >
             		<div class="sub-item">
             		<h4 class="sub-title">
                     <a href="${pageContext.request.contextPath}/sector/sectorpage/${Sector.sectorId}"><c:out value="${Sector.sectorName}" /></a>
                     <span>(3978931)</span>
                    </h4>
                   		 <div class="sub-item-cont-wrapper">
                    		<ul class="sub-item-cont">
                    		<c:forEach var="Category" items="${categories}">
                    		<c:if test="${Category.sector.sectorName == Sector.sectorName }">
                                                                                <li>
                                            <a href="${pageContext.request.contextPath}/sector/categorypage/${Category.categoryId}">
                                                <c:out value="${Category.categoryName}" />
                                            </a>
                                        </li>
                                        </c:if>
                                      </c:forEach>                                          
                                   </ul>
                    	</div>
             		</div>
             		
             		</c:forEach>
             		
             	</div>
                        
            </div>
            
            <div class="item">
            
            <h3 class="ctg-title">
                            <span id="anchor1" class="anchor-subsitution"></span>
                            <i class="cg-icon"></i>
                           Machinery, Industrial Parts 
                        </h3>
                       <div class="sub-item-wrapper">
             	<c:forEach begin="22" end="23" var="Sector" items="${sectors}"  >
             		<div class="sub-item">
             		<h4 class="sub-title">
                     <a href="${pageContext.request.contextPath}/sector/sectorpage/${Sector.sectorId}"><c:out value="${Sector.sectorName}" /></a>
                     <span>(3978931)</span>
                    </h4>
                   		 <div class="sub-item-cont-wrapper">
                    		<ul class="sub-item-cont">
                    		<c:forEach var="Category" items="${categories}">
                    		<c:if test="${Category.sector.sectorName == Sector.sectorName }">
                                                                                <li>
                                            <a href="${pageContext.request.contextPath}/sector/categorypage/${Category.categoryId}">
                                                <c:out value="${Category.categoryName}" />
                                            </a>
                                        </li>
                                        </c:if>
                                      </c:forEach>                                          
                                   </ul>
                    	</div>
             		</div>
             		
             		</c:forEach>
             		
             	</div>
            </div>
            
            <div class="item">
            
            <h3 class="ctg-title">
                            <span id="anchor1" class="anchor-subsitution"></span>
                            <i class="fa fa-tools" style="width: 18px;height: 32px;margin-top: -16px;"></i> &nbsp;
                           Tools and HardWare Items 
                        </h3>
                       <div class="sub-item-wrapper">
             	<c:forEach begin="24" end="24" var="Sector" items="${sectors}"  >
             		<div class="sub-item" style="width:100%;">
             		<h4 class="sub-title">
                     <a href="${pageContext.request.contextPath}/sector/sectorpage/${Sector.sectorId}"><c:out value="${Sector.sectorName}" /></a>
                     <span>(3978931)</span>
                    </h4>
                   		 <div class="sub-item-cont-wrapper">
                    		<ul class="sub-item-cont">
                    		<c:forEach var="Category" items="${categories}">
                    		<c:if test="${Category.sector.sectorName == Sector.sectorName }">
                                                                                <li>
                                            <a href="${pageContext.request.contextPath}/sector/categorypage/${Category.categoryId}">
                                                <c:out value="${Category.categoryName}" />
                                            </a>
                                        </li>
                                        </c:if>
                                      </c:forEach>                                          
                                   </ul>
                    	</div>
             		</div>
             		
             		</c:forEach>
             		
             	</div>
            </div>
            
            <div class="item" style="min-height:560px;">
            
            <h3 class="ctg-title">
                            <span id="anchor1" class="anchor-subsitution"></span>
                            <i class="cg-icon"></i>
                           Metallurgy, Chemicals, Rubber &amp; Plastics
                        </h3>
                        <div class="sub-item-wrapper">
             	<c:forEach begin="25" end="28" var="Sector" items="${sectors}"  >
             		<div class="sub-item">
             		<h4 class="sub-title">
                     <a href="${pageContext.request.contextPath}/sector/sectorpage/${Sector.sectorId}"><c:out value="${Sector.sectorName}" /></a>
                     <span>(3978931)</span>
                    </h4>
                   		 <div class="sub-item-cont-wrapper">
                    		<ul class="sub-item-cont">
                    		<c:forEach var="Category" items="${categories}">
                    		<c:if test="${Category.sector.sectorName == Sector.sectorName }">
                                                                                <li>
                                            <a href="${pageContext.request.contextPath}/sector/categorypage/${Category.categoryId}">
                                                <c:out value="${Category.categoryName}" />
                                            </a>
                                        </li>
                                        </c:if>
                                      </c:forEach>                                          
                                   </ul>
                    	</div>
             		</div>
             		
             		</c:forEach>
             		
             	</div>
                        
            </div>
            
            <div class="item">
            
            <h3 class="ctg-title">
                            <span id="anchor1" class="anchor-subsitution"></span>
                            <i class="cg-icon"></i>
                           Packaging, Advertising &amp; Office
                        </h3>
                        <div class="sub-item-wrapper">
             	<c:forEach begin="29" end="31" var="Sector" items="${sectors}"  >
             		<div class="sub-item" style="width:100%;" >
             		<h4 class="sub-title">
                     <a href="${pageContext.request.contextPath}/sector/sectorpage/${Sector.sectorId}"><c:out value="${Sector.sectorName}" /></a>
                     <span>(3978931)</span>
                    </h4>
                   		 <div class="sub-item-cont-wrapper">
                    		<ul class="sub-item-cont">
                    		<c:forEach var="Category" items="${categories}">
                    		<c:if test="${Category.sector.sectorName == Sector.sectorName }">
                                                                                <li>
                                            <a href="${pageContext.request.contextPath}/sector/categorypage/${Category.categoryId}">
                                                <c:out value="${Category.categoryName}" />
                                            </a>
                                        </li>
                                        </c:if>
                                      </c:forEach>                                          
                                   </ul>
                    	</div>
             		</div>
             		
             		</c:forEach>
             		
             	</div>
                        
            </div>
            
            </div>            
            
	</div>
	
	</section>
	
	</main>
	
	
	 <!--================ Start footer Area  =================-->	
	<jsp:include page="footer.jsp"/>
	<!--================ End footer Area  =================-->
	
</body>
</html>
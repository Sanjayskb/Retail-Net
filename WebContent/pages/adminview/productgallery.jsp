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

</head>
<body>
<div class="preloader" style=" position: fixed;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  z-index: 100000;
  backface-visibility: hidden;
  background: #ffffff;">
    <div class="preloader_img" style="width: 200px;
  height: 200px;
  position: absolute;
  left: 48%;
  top: 48%;
  background-position: center;
z-index: 999999">
        <img src="${pageContext.request.contextPath}/adminassets/img/loader.gif" style=" width: 40px;" alt="loading...">
    </div>
    </div>
    
    <div id="wrap">
    <jsp:include page="top.jsp"></jsp:include>
    
    
    <div class="wrapper">
    <jsp:include page="left.jsp"></jsp:include>
	
	<div id="content" class="bg-container">
            <header class="head">
                <div class="main-bar">
                    <div class="row">
                        <div class="col-lg-6 col-md-4 col-sm-4">
                            <h4 class="nav_top_align">
                                <i class="fa fa-image"></i>
                                ${product.productName}
                            </h4>
                        </div>
                        <div class="col-lg-6 col-md-8 col-sm-8">
                            <ol class="breadcrumb float-right nav_breadcrumb_top_align">
                                <li class="breadcrumb-item">
                                    <a href="index-2.html">
                                        <i class="fa fa-home" data-pack="default" data-tags=""></i>
                                        Dashboard
                                    </a>
                                </li>
                                <li class="breadcrumb-item active">${product.productName} Gallery</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </header>
            <c:if test="${fn:length(images) == 0}">
            <h3>Currently there are no Images of this product !!!!</h3>
            
            </c:if>
            <c:if test="${fn:length(images) != 0}">
            
            
            
            <div class="outer">
                <div class="inner bg-container">
                
                    <div class="row">
                        <div class="col">
                            <div class="card">
                                <div class="card-header bg-white">
                                    ${product.productName}
                                </div>
                                <div class="card-body m-t-35">
                                    <div>
                                        <div class="nav-tabs-custom">
                                            <ul class="nav nav-tabs">
                                                <li class="nav-item">
                                                    <a href="#tab_2" class="nav-link active" data-toggle="tab">Standard
                                                        Gallery</a>
                                                </li>
                                                
                                            </ul>
                                            <div class="tab-content">
                                                <div class="tab-pane gallery-padding active" id="tab_2">
                                                    <div class="row no-gutters">
                                                    <c:forEach var="Image" items="${images}">
                                                        <div class="col-xl-2 col-lg-3 col-md-4 col-6 gallery-border">
                                                            <a class="fancybox zoom thumb_zoom" href="img/gallery/full/1.jpg" data-fancybox-group="gallery" title="Image Title 1">
                                                                <img src="<c:url value="/images/${product.productId}/${Image.imageName}"></c:url>" class="img-fluid gallery-style" alt="Image"></a>
                                                        </div>
                                                        </c:forEach>
                                                    </div>
                                                </div>
                                                
                                                <!-- /standard gallery -->
                                                
                                                <!-- /button helper gallery -->
                                                
                                                <!-- /thumnail helper gallery -->
                                            </div>
                                            <!-- /.tab-content -->
                                        </div>
                                        <!-- nav-tabs-custom -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.inner -->
            </div>
            </c:if>
            <!-- /.outer -->
        </div>
	
	</div>
	</div>
	
<script src="${pageContext.request.contextPath}/adminassets/js/pages/gallery.js"></script>
<script src="${pageContext.request.contextPath}/adminassets/vendors/holderjs/js/holder.js"></script>
<script src="${pageContext.request.contextPath}/adminassets/vendors/fancybox/js/jquery.fancybox.pack.js"></script>
<script src="${pageContext.request.contextPath}/adminassets/vendors/fancybox/js/jquery.fancybox-buttons.js"></script>
<script src="${pageContext.request.contextPath}/adminassets/vendors/fancybox/js/jquery.fancybox-thumbs.js"></script>
<script src="${pageContext.request.contextPath}/adminassets/vendors/fancybox/js/jquery.fancybox-media.js"></script>
</body>
</html>
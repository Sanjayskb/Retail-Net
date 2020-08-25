<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html class="no-js" lang="en">


<head>
<title>Admin Index</title>
<%-- <script src="${pageContext.request.contextPath}/adminassets/js/pages/widget1.js"></script> --%>
<%-- <script src="${pageContext.request.contextPath}/adminassets/vendors/moment/js/moment.min.js"></script> --%>
<%-- <script src="${pageContext.request.contextPath}/adminassets/vendors/bootstrap-switch/js/bootstrap-switch.min.js"></script> --%>
<%-- <script src="${pageContext.request.contextPath}/adminassets/vendors/bootstrapvalidator/js/bootstrapValidator.min.js"></script> --%>
<%-- <script src="${pageContext.request.contextPath}/adminassets/vendors/switchery/js/switchery.min.js"></script> --%>
<%-- <script src="${pageContext.request.contextPath}/adminassets/vendors/swiper/js/swiper.min.js"></script> --%>
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
                        <div class="col-6">
                            <h4 class="m-t-5">
                                <i class="fa fa-home"></i>
                                Dashboard
                            </h4>
                        </div>
                    </div>
                </div>
   	</header>
    <div class="outer">
                <div class="inner bg-container">

					
                    <!--top section widgets-->
                    <div class="row widget_countup">
                        <div class="col-12 col-sm-6 col-xl-3">

                            <div id="top_widget1" style="perspective: 488px; position: relative; transform-style: preserve-3d;">
                                <div class="front" style="backface-visibility: hidden; transform-style: preserve-3d; position: absolute; z-index: 1; height: 100%; width: 100%; transition: all 0.5s ease-out 0s; transform: rotateX(0deg);">
                                    <div class="bg-primary p-d-15 b_r_5" style="backface-visibility: hidden;">
                                        <div class="float-right m-t-5" style="backface-visibility: hidden;">
                                            <i class="fa fa-users" style="backface-visibility: hidden;"></i>
                                        </div>
                                        <div class="user_font" style="backface-visibility: hidden;">Users</div>
                                        <input type="hidden" id="uservalueid" value="${users.size()}">
                                        <div id="widget_countup1" style="backface-visibility: hidden;"></div>
                                        <div class="tag-white" style="backface-visibility: hidden;">
                                            <span id="percent_count1" style="backface-visibility: hidden;"></span>
                                        </div>
                                        <div class="previous_font" style="backface-visibility: hidden;">Total users here</div>
                                    </div>
                                </div>
                                <div class="back" style="backface-visibility: hidden; transform-style: preserve-3d; position: relative; z-index: 0; height: 100%; width: 100%; transform: rotateX(-180deg); transition: all 0.5s ease-out 0s;">
                                    <div class="bg-white b_r_5 section_border" style="backface-visibility: hidden;">
                                        <div class="p-t-l-r-15" style="backface-visibility: hidden;">
                                            <div class="float-right m-t-5" style="backface-visibility: hidden;">
                                                <i class="fa fa-users text-primary" style="backface-visibility: hidden;"></i>
                                            </div>
                                            
                                            <div id="widget_countup12" style="backface-visibility: hidden;">${users.size()}</div>
                                            <div style="backface-visibility: hidden;">Users</div>
                                        </div>

                                        <div class="row" style="backface-visibility: hidden;">
                                            <div class="col-lg-12" style="backface-visibility: hidden;">
                                                <span id="visitsspark-chart-closed" class="spark_line" style="backface-visibility: hidden;"><canvas style="display: inline-block; width: 284.8px; height: 48px; vertical-align: top; backface-visibility: hidden;" width="284" height="48"></canvas></span>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        
                        <div class="col-12 col-sm-6 col-xl-3 media_max_573">
                            <div id="top_widget2" style="perspective: 488px; position: relative; transform-style: preserve-3d;">
                                <div class="front" style="backface-visibility: hidden; transform-style: preserve-3d; position: absolute; z-index: 1; height: 100%; width: 100%; transition: all 0.5s ease-out 0s; transform: rotateX(0deg);">
                                    <div class="bg-success p-d-15 b_r_5" style="backface-visibility: hidden;">
                                        <div class="float-right m-t-5" style="backface-visibility: hidden;">
                                            <i class="fa fa-shopping-cart" style="backface-visibility: hidden;"></i>
                                        </div>
                                        <div class="user_font" style="backface-visibility: hidden;">Products</div>
                                         <input type="hidden" id="productvalueid" value="${products.size()}">
                                        <div id="widget_countup2" style="backface-visibility: hidden;"></div>
                                        <div class="tag-white" style="backface-visibility: hidden;">
                                            <span id="percent_count2" style="backface-visibility: hidden;"></span>
                                        </div>
                                        <div class="previous_font" style="backface-visibility: hidden;">Total Products</div>
                                    </div>
                                </div>

                                <div class="back" style="backface-visibility: hidden; transform-style: preserve-3d; position: relative; z-index: 0; height: 100%; width: 100%; transform: rotateX(-180deg); transition: all 0.5s ease-out 0s;">
                                    <div class="bg-white b_r_5 section_border" style="backface-visibility: hidden;">
                                        <div class="p-t-l-r-15" style="backface-visibility: hidden;">
                                            <div class="float-right m-t-5 text-success" style="backface-visibility: hidden;">
                                                <i class="fa fa-shopping-cart" style="backface-visibility: hidden;"></i>
                                            </div>
                                            <div id="widget_countup22" style="backface-visibility: hidden;">${products.size()}</div>
                                            <div style="backface-visibility: hidden;">Products</div>

                                        </div>

                                        <div class="row" style="backface-visibility: hidden;">
                                            <div class="col-lg-12" style="backface-visibility: hidden;">
                                                <span id="salesspark-chart-closed" class="spark_line" style="backface-visibility: hidden;"><canvas width="268" height="48" style="display: inline-block; width: 268px; height: 48px; vertical-align: top;"></canvas></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        
                        
                        <div class="col-12 col-sm-6 col-xl-3 media_max_1199">
                            <div id="top_widget3" style="perspective: 488px; position: relative; transform-style: preserve-3d;">
                                <div class="front" style="backface-visibility: hidden; transform-style: preserve-3d; position: absolute; z-index: 1; height: 100%; width: 100%; transition: all 0.5s ease-out 0s; transform: rotateX(0deg);">
                                    <div class="bg-warning p-d-15 b_r_5" style="backface-visibility: hidden;">
                                        <div class="float-right m-t-5" style="backface-visibility: hidden;">
                                            <i class="fa fa-comments-o" style="backface-visibility: hidden;"></i>
                                        </div>
                                        <div class="user_font" style="backface-visibility: hidden;">Messages</div>
                                        <input type="hidden" id="messagevalueid" value="${help.size()}">
                                        <div id="widget_countup3" style="backface-visibility: hidden;"></div>
                                        <div class="tag-white " style="backface-visibility: hidden;">
                                            <span id="percent_count3" style="backface-visibility: hidden;"></span>
                                        </div>
                                        <div class="previous_font" style="backface-visibility: hidden;">Total messages</div>
                                    </div>
                                </div>

                                <div class="back" style="backface-visibility: hidden; transform-style: preserve-3d; position: relative; z-index: 0; height: 100%; width: 100%; transform: rotateX(-180deg); transition: all 0.5s ease-out 0s;">
                                    <div class="bg-white b_r_5 section_border" style="backface-visibility: hidden;">
                                        <div class="p-t-l-r-15" style="backface-visibility: hidden;">
                                            <div class="float-right m-t-5 text-warning" style="backface-visibility: hidden;">
                                                <i class="fa fa-comments-o" style="backface-visibility: hidden;"></i>
                                            </div>
                                            <div id="widget_countup32" style="backface-visibility: hidden;">${help.size()}</div>
                                            <div style="backface-visibility: hidden;">Messages</div>
                                        </div>

                                        <div class="row" style="backface-visibility: hidden;">
                                            <div class="col-lg-12" style="backface-visibility: hidden;">
                                                <span id="mousespeed-closed" class="spark_line" style="backface-visibility: hidden;"><canvas width="284" height="48" style="display: inline-block; width: 284.8px; height: 48px; vertical-align: top;"></canvas></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="col-12 col-sm-6 col-xl-3 media_max_1199">
                            <div id="top_widget4" style="perspective: 492px; position: relative; transform-style: preserve-3d;">
                                <div class="front" style="backface-visibility: hidden; transform-style: preserve-3d; position: absolute; z-index: 1; height: 100%; width: 100%; transition: all 0.5s ease-out 0s;">
                                    <div class="bg-danger p-d-15 b_r_5" style="backface-visibility: hidden;">
                                        <div class="float-right m-t-5" style="backface-visibility: hidden;">
                                            <i class="fa fa-star-o" style="backface-visibility: hidden;"></i>
                                        </div>
                                        <div class="user_font" style="backface-visibility: hidden;">Trades</div>
                                        <input type="hidden" id="inquiriesvalueid" value="${inquiries.size()}">
                                        <div id="widget_countup4" style="backface-visibility: hidden;"></div>
                                        <div class="tag-white" style="backface-visibility: hidden;">
                                            <span id="percent_count4" style="backface-visibility: hidden;"></span>
                                        </div>
                                        <div class="previous_font" style="backface-visibility: hidden;">Total trades</div>
                                    </div>
                                </div>

                                <div class="back" style="backface-visibility: hidden; transform-style: preserve-3d; position: relative; z-index: 0; height: 100%; width: 100%; transform: rotateX(-180deg); transition: all 0.5s ease-out 0s;">
                                    <div class="bg-white section_border b_r_5" style="backface-visibility: hidden;">
                                        <div class="p-t-l-r-15" style="backface-visibility: hidden;">
                                            <div class="float-right m-t-5 text-danger" style="backface-visibility: hidden;">
                                                <i class="fa fa-star-o" style="backface-visibility: hidden;"></i>
                                            </div>

                                            <div id="widget_countup42" style="backface-visibility: hidden;">${inquiries.size()}</div>
                                            <div style="backface-visibility: hidden;">Trades</div>
                                        </div>
                                        <div class="row" style="backface-visibility: hidden;">
                                            <div class="col-lg-12" style="backface-visibility: hidden;">
                                                <span id="rating-closed" class="spark_line" style="backface-visibility: hidden;"><canvas width="258" height="50" style="display: inline-block; width: 258px; height: 50px; vertical-align: top;"></canvas></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
            		
            		
					 <div class="row m-t-35">
            <div class="col-lg-4 col-sm-6 col-12">
                            <div class="bg-warning m-t-35 header_align">
                                <div class="row">
                                    <div class="col-lg-12 col-12">
                                        <div class="row">
                                            <div class="col-12 float-left">
                                                <span class="current-date"><br></span>
                                            </div>
                                            <div class="col-12">
                                                <span class="time float-right "></span>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
            </div>
					

            </div> 
            </div>
            	
	</div>
	

    </div>
    </div>


</body>
</html>
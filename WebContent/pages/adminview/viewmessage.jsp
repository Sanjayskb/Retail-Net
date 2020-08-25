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
                    <div class="col-sm-4">
                        <h4 class="nav_top_align">
                            <i class="fa fa-eye"></i>
                            View Message
                        </h4>
                    </div>
                    <div class="col-sm-8">
                        <ol class="breadcrumb float-right  nav_breadcrumb_top_align">
                            <li class="breadcrumb-item">
                                <a href="index-2.html">
                                    <i class="fa fa-home" data-pack="default" data-tags=""></i>
                                    Dashboard
                                </a>
                            </li>
                            <li class="breadcrumb-item">
                                <a href="#">Email</a>
                            </li>
                            <li class="active breadcrumb-item">View Mail</li>
                        </ol>
                    </div>
                    </div>
                </div>
            </header>
            <div class="outer">
                <div class="inner bg-container">
                    <div class="row web-mail mail_compose">
                        
                        <div class="col-lg-9">
                            <div class="card media_max_991">
                                <div class="card-header bg-white">
                                    <p class="m-t-20">Subject: ${help.subject }</p>
                                    <p class="m-t-10"><span>From: ${help.email }</span><span class="float-right">Date: ${help.date }</span></p>
                                </div>
                                <div class="card-body m-t-35">
                                   <p>${help.message }</p>
                                   <br>
                                    <hr>
                                    <a href="${pageContext.request.contextPath}/admin/messagegrid"><button class="btn btn-primary" id="view_reply1"><i class="fa fa-return"></i> Return</button></a>
                                    
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.inner -->
            </div>
            <!-- /.outer -->
        </div>
      
      </div>
      </div>
</body>
</html>
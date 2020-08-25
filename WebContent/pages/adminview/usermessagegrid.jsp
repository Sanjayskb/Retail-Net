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
                            <i class="fa fa-inbox"></i>
                            Inbox
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
                                <a href="#">Inbox</a>
                            </li>
                            
                        </ol>
                    </div>
                    </div>
                </div>
            </header>
            <div class="outer">
                <div class="inner bg-container">
                    <div class="row web-mail">
                        
                        <div class="col-lg-9">
                            <div class="card mail media_max_991">
                                <div class="card-header bg-white">
                                    <div class="row">
                                        
                                        <div class="col-sm-6 col-12">
                                            <div class="input-group margin bottom">
                                                <input type="text" class="form-control inbox_search_height m-t-10" placeholder="Search">
                                                <span class="input-group-btn">
                                                <button type="button" class="btn btn-primary inbox_search_height m-t-10">Search</button>
                                            </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body m-t-25 p-d-0">
                                    <div class="tabs tabs-bordered tabs-icons">
                                        <ul class="nav nav-tabs">
                                            <li class="nav-item" id="primary2">
                                                <a href="#primary" class="nav-link active" data-toggle="tab" aria-expanded="true"><i class="fa fa-inbox"></i> Primary</a>
                                            </li>
                                           
                                        </ul>

                                        <!-- Tab panes -->
                                        <div class="tab-content">
                                            <div class="tab-pane table-responsive reset padding-all fade active show" id="primary">
                                                <table class="table">
                                                    <tbody>
                                                    <c:forEach var="Help" items="${helps}">
                                                    <tr class="mail-unread">
                                                        <td>
                                                            <div class="checker m-l-20">
                                                                <label class="custom-control custom-checkbox">
                                                                    <input name="checkbox" type="checkbox" class="custom-control-input " style="display: none;">
                                                                    <span class="custom-control-indicator"></span>
                                                                </label>
                                                            </div>
                                                        </td>
                                                        <td class="sent_to_mailview">${Help.email }</td>
                                                        <td class="sent_to_mailview">${Help.subject }</td>
                                                        <td class="sent_to_mailview"></td>
                                                        <td class="sent_to_mailview">${Help.date }</td>
                                                        <td><a href="${pageContext.request.contextPath}/admin/viewmessage/${Help.tableId}" data-toggle="tooltip" data-placement="top" title="" data-original-title="View Message"><i class="fa fa-eye text-success"></i></a>&nbsp; &nbsp;<a class="delete hidden-xs hidden-sm" data-toggle="tooltip" data-placement="top" title="" href="${pageContext.request.contextPath}/admin/deletemessage/${Help.tableId}" data-original-title="Delete"><i class="fa fa-trash text-danger"></i></a></td>
                                                    </tr>                      
                                                    </c:forEach>                              
                                                    </tbody>
                                                </table>
                                            </div>
                                            
                                            
                                        </div>
                                    </div>
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
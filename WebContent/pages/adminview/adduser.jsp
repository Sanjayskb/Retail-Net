<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add User</title>
 <!--plugin styles-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/adminassets/vendors/intl-tel-input/css/intlTelInput.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/adminassets/vendors/bootstrapvalidator/css/bootstrapValidator.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/adminassets/vendors/sweetalert/css/sweetalert2.min.css" />
    <!--End of plugin styles-->
    <!--Page level styles-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/adminassets/css/pages/sweet_alert.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/adminassets/css/pages/form_layouts.css" />
    <link rel="stylesheet" href="#" id="skin_change" />
    <!-- end of page level styles -->
     <!--Plugin scripts-->
    <script src="${pageContext.request.contextPath}/adminassets/vendors/intl-tel-input/js/intlTelInput.js"></script>
    <script src="${pageContext.request.contextPath}/adminassets/vendors/bootstrapvalidator/js/bootstrapValidator.min.js"></script>
    <script src="${pageContext.request.contextPath}/adminassets/vendors/sweetalert/js/sweetalert2.min.js"></script>
    <!--End of Plugin scripts-->
    <!--Page level scripts-->
    <script src="${pageContext.request.contextPath}/adminassets/js/pages/form_layouts.js"></script>
    <!-- end of page level js -->
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
                         <div class="col-lg-6 col-sm-4">
                        <h4 class="nav_top_align">
                            <i class="fa fa-user"></i>
                            Add User
                        </h4>
                    </div>
                   
                        </div>
                </div>
            </header>
            <div class="outer form_wizzards">
                <div class="inner bg-container">
                    <div class="row">
                        <div class="col">
                            <div class="card">
                                <div class="card-header bg-white">
                                    <i class="fa fa-file-text-o"></i>
                                    Add User Details
                                </div>
                                <div class="card-body m-t-20">
                                    <div id="rootwizard_no_val">
                                       
                                        <div class="tab-content m-t-20">
                                            <div class="tab-pane active" id="tab11">
                                            <form class="form-group" action="${pageContext.request.contextPath}/admin/adduseraction" method="post" id="register_form">
                                                 <div class="form-group">
                                                    <label for="name" class="control-label">First name</label>
                                                    <input id="firstname" name="firstname" placeholder="Enter your First name" type="text" class="form-control required">
                                                </div>
                                                <div class="form-group">
                                                    <label for="surname" class="control-label">Last name</label>
                                                    <input id="lastname" name="lastname" type="text" placeholder=" Enter your Last name" class="form-control required">
                                                </div>
                                                <div class="form-group">
                                                    <label for="userName1" class="control-label">User name</label>
                                                    <input id="username" name="username" type="text" placeholder="Enter your name" class="form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label for="email1" class="control-label">Email</label>
                                                    <input id="email" name="email" placeholder="Enter your Email" type="text" class="form-control email">
                                                </div>
                                                 <div class="form-group">
                                                    <label>Contact number</label>
                                                    <input type="text" id="contactNo" name="contactNo" class="form-control general_number" placeholder="(999)999-9999">
                                                </div>
                                                <div class="form-group">
                                                    <label for="password1" class="control-label">Password</label>
                                                    <input id="password" name="password" type="password" placeholder="Enter your password" class="form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label for="confirmPassword" class="control-label">Confirm Password</label>
                                                    <input id="confirmPassword"
									name="confirmPassword"  type="password" placeholder="Confirm your password " class="form-control">
                                                </div>
                                                
                                                <input type="hidden" value="1" name="status" id="status">
                                                
                                                <div class="form-group">
                                                <h5>User Type</h5>
                                              <select class="form-control" name="userTypeId" id="userTypeId">
                                                <option value="Select usertype"disabled selected>Select Usertype</option>
                                                    
                                                   <c:forEach var="userType" items="${userTypes}">
											<option value="${userType.userTypeId }">${userType.userTypeText }</option>
										</c:forEach>
                                                </select>
                                                
                                                <!--</div>-->
                                            </div>
                                            <div class="col-md-12 form-group">
								<button type="submit" value="submit"
									class="button button-register w-100">Register</button>
							</div>
							</form>
                                                
                                            </div>
                                         
                                       
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
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       </div>
       </div>
       </body>
       </html>
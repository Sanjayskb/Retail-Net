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
    <script src="${pageContext.request.contextPath}/assets/vendors/jquery/jquery-3.2.1.min.js"></script>
    <!-- end of page level js -->
</head>
<script type="text/javascript">
$(document).ready(function(){
	console.log("page loaded");

	$('#state_id').show();
	$('#cityId').show();
	$('#state_id').siblings('.nice-select').remove();
	$('#cityId').siblings('.nice-select').remove();
	
	$('#state_id').on('change', function(){
 		$('#cityId').find('option').remove();
 		
 		var optionSelected = $("option:selected", this);
	    var stateId = this.value;
		console.log("state Id :", stateId);
		
		var inputData = "state_id="+stateId;
		
		$.ajax({
			'type' : 'POST',
			'url' : '/RetailNet/Location/rest/fetchcitybystateid',
			'data': inputData,
			
			'success' : function(data, status){
				console.log(data);
				dataObj = JSON.parse(data);
				console.log(dataObj);
				for(var i=0; i<dataObj.length; i++){
					
					$('#cityId').append("<option value='"+dataObj[i].city_id+"'>"+dataObj[i].city_name+"</option>");
				}
				
			},
			'error' : function(data, status){
				alert("something went wrong while fetching cities");
			}
		}); 
		
	});
});
</script>
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
                            Add Firm Details
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
                                    Add ${user.userType.userTypeText } Firm Details
                                </div>
                                <div class="card-body m-t-20">
                                    <div id="rootwizard_no_val">
                                       
                                        <div class="tab-content m-t-20">
                                            <div class="tab-pane active" id="tab11">
                                            <form class="form-group" action="${pageContext.request.contextPath}/admin/addfirmdetails" method="post" id="register_form">
                                                 <div class="form-group">
                                                    <label for="name" class="control-label">Firm Name</label>
                                                    <input id="firmName" name="firmName" placeholder="Enter your Firm Name" type="text" class="form-control required">
                                                </div>
                                                <div class="form-group">
                                                    <label for="surname" class="control-label">Firm Email</label>
                                                    <input id="firmEmail" name="firmEmail" type="text" placeholder=" Enter your Firm Email" class="form-control required">
                                                </div>
                                                <div class="form-group">
                                                    <label for="userName1" class="control-label">Firm Contact No.</label>
                                                    <input id="firmContactNo" name="firmContactNo" type="text" placeholder="Enter your Firm Contact No" class="form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label for="email1" class="control-label">Gst No.</label>
                                                    <input id="gstNo" name="gstNo" placeholder="Enter your Gst No" type="text" class="form-control email">
                                                </div>
                                                 <div class="form-group">
                                                    <label>Pan No.</label>
                                                    <input type="text" id="panNo" name="panNo" class="form-control general_number" placeholder="Enter your Pan No">
                                                </div>
                                               
                                                
                                                <input type="hidden" value="1" name="status" id="status">
                                                
                                                <div class="form-group">
                                                
                                              <select class="form-control" name="state_id" id="state_id">
                                                <option value="Select usertype"disabled selected>Select State</option>
                                                    
                                                   <c:forEach var="State" items="${states}">
											<option value="${State.stateId }">${State.stateName }</option>
										</c:forEach>
                                                </select>
                                                
                                                
                                            </div>
                                            <div class="form-group">
                                                
                                              <select class="form-control" name="cityId" id="cityId">
                                                <option value="Select usertype"disabled selected>Select City</option>
                                                    
                                                   
                                                </select>
                                                
                                                
                                            </div>
                                            <div class="col-md-12 form-group">
								<button type="submit" value="submit"
									class="button button-register w-100">Register As ${user.userType.userTypeText }</button>
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
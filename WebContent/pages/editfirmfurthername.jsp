<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page import="com.retailnet.user.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/cssd2.css">
</head>
<body>
<!--================ Start Header Menu Area =================-->
	 <jsp:include page="header.jsp" /> 
<!--================ End Header Menu Area =================-->
<div class="a-container">
      <div class="a-section auth-pagelet-desktop-wide-container">
       
<div class="a-section auth-pagelet-desktop-wide-container">
  
  
  <ol id="breadcrumb_CNEP" class="a-ordered-list a-horizontal">
    <li><span class="a-list-item">
      <a class="a-link-normal" href="${pageContext.request.contextPath}/user/youraccount">
        Your Account
      </a>
    </span></li>
    <li><span class="a-list-item">
      -
    </span></li>
    
      
        <li><span class="a-list-item">
          
          <a class="a-link-normal" >
           Editing Firm Details
          </a>
        </span></li>
        <li><span class="a-list-item">
          -
        </span></li>
        <li><span class="a-list-item a-color-state">
          Change Firm Name
        </span></li>
      
      
    
  </ol>

  <h1 id="ap_cnep_header" class="a-spacing-small">
    Change Firm Name
  </h1>

  <div class="a-box a-spacing-top-medium"><div class="a-box-inner">
    <div class="a-row">
      If you want to change the Firm Name associated with your Retail Net Account, you may do so below. Be sure to click the <b>Save Changes</b> button when you are done.
    </div>


<div class="a-section a-spacing-top-large">
  
  
  <form method="post" action="${pageContext.request.contextPath}/user/editfirmfurthernameaction">
   
    <div class="a-row">
     
      <label class="a-form-label auth-mobile-label">
        New name
      </label>
    </div>
    <div class="a-row a-spacing-large">
      
       <input type="hidden" name="furtheraction" value="editname">
      <input type="text" value="<c:out value='${firm.firmName}'/>" id="firmName" name="firmName" class="a-input-text">
    </div> 
    <div class="a-fixed-right-grid"><div class="a-fixed-right-grid-inner" style="padding-right:0px">
      <div class="a-fixed-right-grid-col" style="float:left;">
      </div>
    </div></div>

   <button class="button button-subscribe mr-auto mb-1" type="submit">Save Changes</button>
  </form>
</div>


  </div></div>
</div>

      </div>
    </div>
    
    <!--================ Start footer Area  =================-->	
	<jsp:include page="footer.jsp"/>
	<!--================ End footer Area  =================-->
	
</body>
</html>
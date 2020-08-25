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
        
  <ol id="breadcrumb_CNEP" class="a-ordered-list a-horizontal">
    <li><span class="a-list-item">
      <a class="a-link-normal" href="/gp/css/homepage.html">
        Your Account
      </a>
    </span></li>
    <li><span class="a-list-item">
      ›
    </span></li>
    
      
        <li><span class="a-list-item">
          
          <a class="a-link-normal" href=""> 
                  Login &amp; Security
          </a>
        </span></li>
        <li><span class="a-list-item">
          ›
        </span></li>
        <li><span class="a-list-item a-color-state">
          Change Firm Mobile Number
        </span></li>
      
      
    
  </ol>

<div id="auth-alert-window" class="a-box a-alert a-alert-error a-spacing-base" aria-live="assertive" role="alert"><div class="a-box-inner a-alert-container"><h4 class="a-alert-heading">There was a problem</h4><i class="a-icon a-icon-alert"></i><div class="a-alert-content">
  <ul class="a-unordered-list a-vertical auth-error-messages">
    <li id="auth-phoneNumber-missing-alert"><span class="a-list-item">Please enter a valid mobile phone number with area code.</span></li>
    <li id="auth-phoneNumber-invalid-phone-alert"><span class="a-list-item">Please enter a valid mobile phone number with area code.</span></li>
  </ul>
</div></div></div>






<div id="auth-pv-client-side-error-box" class="a-box a-alert a-alert-error auth-client-side-message-box a-spacing-base" aria-live="assertive" role="alert"><div class="a-box-inner a-alert-container"><h4 class="a-alert-heading">There was a problem</h4><i class="a-icon a-icon-alert"></i><div class="a-alert-content">
  <ul class="a-unordered-list a-vertical a-spacing-none auth-pv-client-side-error-messages">
    <li id="auth-there-was-an-error-throttled"><span class="a-list-item">
      Sorry, you've reached the maximum number of attempts today. Please try again later.
    </span></li>    
    <li id="auth-there-was-an-error"><span class="a-list-item">
      Internal Error. Please try again later.
    </span></li>    
    
  </ul>
</div></div></div>


<div id="auth-pv-client-side-success-box" class="a-box a-alert a-alert-success auth-client-side-message-box a-spacing-base"><div class="a-box-inner a-alert-container"><h4 class="a-alert-heading">Success</h4><i class="a-icon a-icon-alert"></i><div class="a-alert-content">
  <ul class="a-unordered-list a-nostyle a-vertical a-spacing-none auth-pv-client-side-success-messages">
    <li id="auth-resend-code-succeeded"><span class="a-list-item">
      
    </span></li>
  </ul>
</div></div></div>


<h1>
  Change Firm Mobile Number
</h1>

<div class="a-box"><div class="a-box-inner">
  <div class="a-fixed-right-grid"><div class="a-fixed-right-grid-inner" style="padding-right:0px">
    <div class="a-fixed-right-grid-col" style="float:left;">
      <div class="a-section">
        





  <div class="a-row a-spacing-base">
    <div class="a-row">
      <label class="a-form-label">
        Old mobile number:
      </label>
    </div>
    <div class="a-row">
      
      <div class="a-column a-span12">
        <div id="ap_old_phone_number" class="a-section a-padding-mini">
          IN IN <c:out value="${user.contactNo}"></c:out>
        </div>
      </div>
      
    </div>
  </div>
<script type="a-state" data-a-state="{&quot;key&quot;:&quot;auth-phone-verification-modal&quot;}">{"formIdToBindTo":"auth-change-phone"}</script>

<span class="a-declarative" data-action="a-modal" data-a-modal="{&quot;max-width&quot;:&quot;95%&quot;,&quot;width&quot;:&quot;300px&quot;,&quot;name&quot;:&quot;verifyContinueModal&quot;,&quot;header&quot;:&quot;Verification Required&quot;,&quot;height&quot;:&quot;240px&quot;}" id="auth-verify-modal-action"></span>


<div class="a-popover-preload" id="a-popover-verifyContinueModal">
  
  <div class="a-row">
    <p>
      We will send you a text to verify this number:
    </p>
  </div>

  <div class="a-row">
    <span id="auth-register-verify-mobile-number-text" class="a-size-small a-text-bold">
      
      <span id="auth-verify-mobile-country-code"></span>
      <span>
        +<span id="auth-verify-mobile-calling-code"></span>
      </span>
      <span id="auth-verify-mobile-national-number"></span>
    </span>
  </div>

  <div class="a-row a-spacing-top-extra-large">
    <span class="a-size-mini">
      Message and Data rates may apply.
    </span>
  </div>

  <hr class="a-divider-normal">

  <div class="a-row">
    <div class="a-column a-span6 a-push1">
      <span class="a-declarative" data-action="a-popover-close" data-a-popover-close="{}">
        <span id="auth-verification-cancel" class="a-button a-button-span8 a-button-base"><span class="a-button-inner"><input class="a-button-input" type="submit" aria-labelledby="auth-verification-cancel-announce"><span id="auth-verification-cancel-announce" class="a-button-text" aria-hidden="true">
          Cancel
        </span></span></span>
      </span>
    </div>

    <div class="a-column a-span6 a-push1 a-span-last">
      <span class="a-declarative" data-action="auth-verify-modal-complete" data-auth-verify-modal-complete="{}">
        <span id="auth-verification-ok" class="a-button a-button-span8 a-button-primary"><span class="a-button-inner"><button id="auth-verification-ok-announce" class="a-button-text" type="button">
          OK 
        </button></span></span>
      </span>
    </div>
  </div>
</div>




<form id="auth-change-phone" method="post" novalidate="" action="${pageContext.request.contextPath}/user/editfirmfurtherphoneaction">
  

  

  
  
    
  

  

  <div class="a-row">
    <label for="ap_phone_number" class="a-form-label auth-mobile-label">
      Mobile number
    </label>
  </div>

  <div class="a-row">
    
      
        <div class="mobile-number-container">
          <div class="a-column a-span5 ISD-dropdown">
            








  
  



  
  
    <span class="a-dropdown-container"><select name="countryCode" autocomplete="off" data-a-touch-header="Country/Region Code" id="auth-country-picker" tabindex="-1" class="a-native-dropdown">
      
        
        
        <option data-calling-code="91" data-country-code="IN" value="IN" data-a-html-content="India +91" selected="">
          
          IN +91
        </option>
       
        <option data-calling-code="977" data-country-code="NP" value="NP" data-a-html-content="Nepal +977">
          
          NP +977
        </option>
      
   
        <option data-calling-code="92" data-country-code="PK" value="PK" data-a-html-content="Pakistan +92">
          
          PK +92
        </option>
     
        <option data-calling-code="94" data-country-code="LK" value="LK" data-a-html-content="Sri Lanka +94">
          
          LK +94
        </option>
      
    </select><span tabindex="-1" class="a-button a-button-dropdown" id="a-autoid-0" style="min-width: 0.405405%;"><span class="a-button-inner"><span class="a-button-text a-declarative" data-action="a-dropdown-button" role="button" tabindex="0" aria-hidden="true" id="a-autoid-0-announce"><span class="a-dropdown-prompt">
          
          IN +91
        </span></span><i class="a-icon a-icon-dropdown"></i></span></span></span>
  




          </div>
          <div class="a-column a-span7 New-phone">
          <input type="hidden" name="furtheraction" value="editphone">
            <input type="tel" maxlength="50" id="firmContactNo" name="firmContactNo" tabindex="1" class="a-input-text a-span12 a-spacing-base auth-required-field auth-require-phone-validation" data-validation-id="phoneNumber">
          </div>
          
        </div>
      
      
    
  </div>

  <div class="a-row a-spacing-top-small">
      
        
      
      <span class="a-button a-button-span12 a-button-primary auth-requires-verify-modal" id="a-autoid-1"><span class="a-button-inner"><input id="auth-continue" tabindex="2" name="changeMobilePhone" class="a-button-input" type="submit" aria-labelledby="a-autoid-1-announce"><span class="a-button-text" aria-hidden="true" id="a-autoid-1-announce">
        Save
      </span></span></span>
  </div>
</form>



<div class="a-row a-spacing-top-small">
  <span class="a-button a-button-groupfirst a-button-span12 a-button-base" id="a-autoid-2"><span class="a-button-inner"><a id="auth-change-phone-cancel" tabindex="4" href="${pageContext.request.contextPath}/user/editfirm" name="returnToButton" class="a-button-text" role="button">
    Cancel
  </a></span></span>
</div>




      </div>
    </div>
  </div></div>
</div></div>

      </div>
    </div>

<!--================ Start footer Area  =================-->	
	<jsp:include page="footer.jsp"/>
	<!--================ End footer Area  =================-->
</body>
</html>
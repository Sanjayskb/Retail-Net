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
          
          <a class="a-link-normal" href="https://www.amazon.in/ap/cnep?referringAppAction=CNEP&amp;openid.identity=https%3A%2F%2Fwww.amazon.in%2Fap%2Fid%2Famzn1.account.AH4V5OCIYAXV2HM7WEIJERJLTZ5Q&amp;orig_return_to=https%3A%2F%2Fwww.amazon.in%2Fap%2Fcnep%3Fie%3DUTF8%26orig_return_to%3Dhttps%253A%252F%252Fwww.amazon.in%252Fyour-account%26openid.assoc_handle%3Dinflex%26pageId%3Dinflex&amp;openid.op_endpoint=https%3A%2F%2Fwww.amazon.in%2Fap%2Fsignin&amp;openid.pape.auth_time=2020-02-23T08%3A55%3A00Z&amp;openid.signed=assoc_handle%2Cclaimed_id%2Cidentity%2Cmode%2Cns%2Cop_endpoint%2Cresponse_nonce%2Creturn_to%2Cns.pape%2Cpape.auth_policies%2Cpape.auth_time%2Csigned&amp;pageId=inflex&amp;openid.return_to=https%3A%2F%2Fwww.amazon.in%2Fap%2Fcnep%3Fie%3DUTF8%26orig_return_to%3Dhttps%253A%252F%252Fwww.amazon.in%252Fyour-account%26openid.assoc_handle%3Dinflex%26pageId%3Dinflex&amp;prevRID=EZ9808DGQM28KQ7656S6&amp;openid.assoc_handle=inflex&amp;openid.mode=id_res&amp;openid.ns.pape=http%3A%2F%2Fspecs.openid.net%2Fextensions%2Fpape%2F1.0&amp;openid.pape.auth_policies=http%3A%2F%2Fschemas.openid.net%2Fpape%2Fpolicies%2F2007%2F06%2Fnone&amp;openid.sig=tGblh%2BYKyJtPyUWr9%2FCFpHDNlP7ELrCesIvCRD9D5eM%3D&amp;openid.claimed_id=https%3A%2F%2Fwww.amazon.in%2Fap%2Fid%2Famzn1.account.AH4V5OCIYAXV2HM7WEIJERJLTZ5Q&amp;openid.response_nonce=2020-02-23T08%3A55%3A00Z-1491854402524036707&amp;openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0&amp;timestamp=1582448101000">
            Login &amp; Security
          </a>
        </span></li>
        <li><span class="a-list-item">
          ›
        </span></li>
        <li><span class="a-list-item a-color-state">
          Change Gst Number
        </span></li>
      
    
  </ol>
<div id="auth-alert-window" class="a-box a-alert a-alert-error a-spacing-base" aria-live="assertive" role="alert"><div class="a-box-inner a-alert-container"><h4 class="a-alert-heading">There was a problem</h4><i class="a-icon a-icon-alert"></i><div class="a-alert-content">
  <ul class="a-unordered-list a-vertical auth-error-messages">
    <li id="auth-phoneNumber-missing-alert"><span class="a-list-item">Please enter a valid Gst number </span></li>
    <li id="auth-phoneNumber-invalid-phone-alert"><span class="a-list-item">Please enter a valid Gst number </span></li>
  </ul>
</div></div></div>


<h1>
  Change Gst Number
</h1>

<div class="a-box"><div class="a-box-inner">
  <div class="a-fixed-right-grid"><div class="a-fixed-right-grid-inner" style="padding-right:0px">
    <div class="a-fixed-right-grid-col" style="float:left;">
      <div class="a-section">
        





  <div class="a-row a-spacing-base">
    <div class="a-row">
      <label class="a-form-label">
        Old Gst number:
      </label>
    </div>
    <div class="a-row">
      
      <div class="a-column a-span12">
        <div id="ap_old_phone_number" class="a-section a-padding-mini">
          <c:out value="${firm.gstNo }"></c:out>
        </div>
      </div>
      
    </div>
  </div>
<script type="a-state" data-a-state="{&quot;key&quot;:&quot;auth-phone-verification-modal&quot;}">{"formIdToBindTo":"auth-change-phone"}</script>

<span class="a-declarative" data-action="a-modal" data-a-modal="{&quot;max-width&quot;:&quot;95%&quot;,&quot;width&quot;:&quot;300px&quot;,&quot;name&quot;:&quot;verifyContinueModal&quot;,&quot;header&quot;:&quot;Verification Required&quot;,&quot;height&quot;:&quot;240px&quot;}" id="auth-verify-modal-action"></span>


<form id="auth-change-phone" method="post" novalidate="" action="${pageContext.request.contextPath}/user/editfirmfurthergstaction">
  

  

  
  
    
  

  

  <div class="a-row">
    <label for="ap_phone_number" class="a-form-label auth-mobile-label">
      Gst number
    </label>
  </div>

  <div class="a-row">
    
      
        <div class="mobile-number-container">
          <div class="a-column a-span5 ISD-dropdown">
            
          </div>
          <div class="a-column a-span7 New-phone">
          <input type="hidden" name="furtheraction" value="editphone">
            <input type="tel" maxlength="50" id="gstNo" name="gstNo" tabindex="1" class="a-input-text a-span12 a-spacing-base auth-required-field auth-require-phone-validation" data-validation-id="phoneNumber">
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
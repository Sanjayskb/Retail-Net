<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
        





<div class="a-section auth-pagelet-container">
  
    







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
          
          <a class="a-link-normal" href="https://www.amazon.in/ap/cnep?openid.identity=https%3A%2F%2Fwww.amazon.in%2Fap%2Fid%2Famzn1.account.AH4V5OCIYAXV2HM7WEIJERJLTZ5Q&amp;orig_return_to=https%3A%2F%2Fwww.amazon.in&amp;openid.op_endpoint=https%3A%2F%2Fwww.amazon.in%2Fap%2Fsignin&amp;openid.pape.auth_time=2020-02-23T09%3A13%3A58Z&amp;openid.signed=assoc_handle%2Cclaimed_id%2Cidentity%2Cmode%2Cns%2Cop_endpoint%2Cresponse_nonce%2Creturn_to%2Cns.pape%2Cpape.auth_policies%2Cpape.auth_time%2Csigned&amp;pageId=inflex&amp;returnOnSuccess=false&amp;openid.return_to=https%3A%2F%2Fwww.amazon.in&amp;prevRID=1BZMHDV4D5Z5FDWWY8JE&amp;openid.assoc_handle=inflex&amp;openid.mode=id_res&amp;openid.ns.pape=http%3A%2F%2Fspecs.openid.net%2Fextensions%2Fpape%2F1.0&amp;openid.pape.auth_policies=http%3A%2F%2Fschemas.openid.net%2Fpape%2Fpolicies%2F2007%2F06%2Fnone&amp;openid.sig=KWI1MTkt95Ci9dFRY9%2FPPFA%2BY64gnGsySlhu6V6PDq4%3D&amp;openid.claimed_id=https%3A%2F%2Fwww.amazon.in%2Fap%2Fid%2Famzn1.account.AH4V5OCIYAXV2HM7WEIJERJLTZ5Q&amp;openid.response_nonce=2020-02-23T09%3A13%3A58Z-2487418123125148335&amp;openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0&amp;email=khalerishi998%40gmail.com&amp;timestamp=1582449238000">
            Login &amp; Security
          </a>
        </span></li>
        <li><span class="a-list-item">
          ›
        </span></li>
        <li><span class="a-list-item a-color-state">
          Change Password
        </span></li>
      
      
    
  </ol>









  

  

  

  
  
  




  

  <h1 id="ap_cnep_header">
    Change Password
  </h1>

  <div class="a-box"><div class="a-box-inner">
    <div class="a-section">
      
<div class="a-row a-spacing-base">
  Use the form below to change the password for your Amazon account
</div>



<form method="post" novalidate="" action="${pageContext.request.contextPath}/user/editprofilefurtherpasswordaction">
  
<div class="a-section a-spacing-large">
  <div class="a-row">
    <label for="ap_password" class="a-form-label">
      Current password:
    </label>
  </div>
  <div class="a-row">
    <input type="password" maxlength="1024" id="oldpassword" name="oldpassword" tabindex="1" class="a-input-text">
  </div>
</div>

<div class="a-section a-spacing-large">
  <div class="a-row">
    <label for="ap_password_new" class="a-form-label">
      New password:
    </label>
  </div>
  <div class="a-row">
  <input type="hidden" name="furtheraction" value="editpassword">
    <input type="password" maxlength="1024" id="password" name="password" tabindex="2" class="a-input-text">
  </div>
</div>

<div class="a-section a-spacing-large">
  <div class="a-row">
    <label for="ap_password_new_check" class="a-form-label">
      Reenter new password:
    </label>
  </div>
  <div class="a-row">
    <input type="password" maxlength="1024" id="ap_password_new_check" name="passwordNewCheck" tabindex="3" class="a-input-text">
  </div>
</div>

<div class="a-fixed-right-grid"><div class="a-fixed-right-grid-inner" style="padding-right:0px">
  <div class="a-fixed-right-grid-col" style="float:left;">
    
  </div>
</div></div>
  <div class="a-section a-spacing-large">
    <span class="a-button a-button-primary" id="a-autoid-0"><span class="a-button-inner"><input id="cnep_1D_submit_button" tabindex="5" class="a-button-input" type="submit" aria-labelledby="a-autoid-0-announce"><span class="a-button-text" aria-hidden="true" id="a-autoid-0-announce">
      Save changes
    </span></span></span>
  </div>
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
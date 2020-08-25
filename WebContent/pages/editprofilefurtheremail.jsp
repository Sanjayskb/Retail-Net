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
      <a class="a-link-normal" href="/gp/css/homepage.html">
        Your Account
      </a>
    </span></li>
    <li><span class="a-list-item">
      ›
    </span></li>
    
      
        <li><span class="a-list-item">
          
          <a class="a-link-normal">
            Login &amp; Security
          </a>
        </span></li>
        <li><span class="a-list-item">
          ›
        </span></li>
        <li><span class="a-list-item a-color-state">
          Change E-mail
        </span></li>
      
      
    
  </ol>
<h1 id="ap_cnep_header">
  Change E-mail
</h1>

<div class="a-section a-spacing-top-large">
  <div class="a-box"><div class="a-box-inner">
    <div class="a-row a-spacing-base">
      Use the form below to change the e-mail address for your Amazon account.  Use the new address next time you log in or place an order.
    </div>

    

    

    <form method="post" novalidate="" action="${pageContext.request.contextPath}/user/editprofilefurtheremailaction">
      
 
        <div class="a-section">
          <div class="a-row">
            <label class="a-form-label">
              Old e-mail:
            </label>
          </div>

          <div class="a-row">
            <div id="ap_email_old" class="a-section a-padding-mini">
             <c:out value="${user.email }"></c:out>
            </div>
          </div>
        </div>
      

      <div class="a-section a-spacing-large">
        <div class="a-row">
          <label for="ap_email_new" class="a-form-label">
            New e-mail:
          </label>
        </div>

        
          
          
            <div class="a-row">
              
				<input type="hidden" name="furtheraction" value="editemail">
              <input type="email" id="email" autocomplete="off" name="email" tabindex="1" class="a-input-text a-width-large">
            </div>

            <div class="a-section a-spacing-large">
              <div class="a-row">
                <label for="ap_email_new_check" class="a-form-label">
                  Re-enter new e-mail:
                </label>
              </div>

              <div class="a-row a-spacing-large">
                

                <input type="email" id="ap_email_new_check" autocomplete="off" name="emailNewCheck" tabindex="2" class="a-input-text a-width-large">
              </div>
            </div>
          
        
      </div>

      <div class="a-section a-spacing-large">
        <div class="a-row">
          <label for="auth-password" class="a-form-label">
            Password:
          </label>
        </div>

        <div class="a-row">
          <input type="password" maxlength="1024" id="password" name="password" tabindex="3" class="a-input-text a-width-large">
        </div>
      </div>

      
      
        <div class="a-fixed-right-grid a-spacing-base"><div class="a-fixed-right-grid-inner" style="padding-right:0px">
          <div class="a-fixed-right-grid-col" style="float:left;">
            
   
  <div class="a-section">
    <div id="image-captcha-section" class="a-section a-spacing-large">
      <input type="hidden" name="use_image_captcha" value="true" id="use_image_captcha">
      <div class="a-section a-spacing-base">
        <h4>
          Enter the characters you see
        </h4>
    
<div id="auth-captcha-image-container" class="a-section a-text-center">
  <img alt="Visual CAPTCHA image, continue down for an audio option." src="https://opfcaptcha-prod.s3.amazonaws.com/192747eb9eb048f98ebf432d40f4ef07.jpg?AWSAccessKeyId=AKIA5WBBRBBBUVOQGKFM&amp;Expires=1582445141&amp;Signature=xCnTG1QAGemE%2B43Fnnf4fqSNwlI%3D" data-refresh-url="/ap/captcha?appAction=CNEP_EMAIL&amp;captchaObfuscationLevel=ape%3AZWFzeQ%3D%3D&amp;captchaType=image&amp;marketPlaceId=A21TJRUUN4KGV" id="auth-captcha-image">
</div>
        <div class="a-row">
          <div class="a-column a-span12 a-text-center">
            <a id="auth-captcha-refresh-link" class="a-link-normal" tabindex="4" href="/ap/cnep?openid.identity=https%3A%2F%2Fwww.amazon.in%2Fap%2Fid%2Famzn1.account.AH4V5OCIYAXV2HM7WEIJERJLTZ5Q&amp;orig_return_to=https%3A%2F%2Fwww.amazon.in%2Fyour-account&amp;openid.op_endpoint=https%3A%2F%2Fwww.amazon.in%2Fap%2Fsignin&amp;openid.pape.auth_time=2020-02-23T08%3A00%3A26Z&amp;openid.signed=assoc_handle%2Cclaimed_id%2Cidentity%2Cmode%2Cns%2Cop_endpoint%2Cresponse_nonce%2Creturn_to%2Cns.pape%2Cpape.auth_policies%2Cpape.auth_time%2Csigned&amp;pageId=inflex&amp;returnOnSuccess=false&amp;openid.return_to=https%3A%2F%2Fwww.amazon.in%2Fyour-account&amp;prevRID=0EC55594ZKDFEBCBK6QR&amp;openid.assoc_handle=inflex&amp;openid.mode=id_res&amp;openid.ns.pape=http%3A%2F%2Fspecs.openid.net%2Fextensions%2Fpape%2F1.0&amp;openid.pape.auth_policies=http%3A%2F%2Fschemas.openid.net%2Fpape%2Fpolicies%2F2007%2F06%2Fnone&amp;openid.sig=l7agGXcy%2FdpQiRXYr620eCfYVeN8iQ8qYnkir%2BCbBHg%3D&amp;openid.claimed_id=https%3A%2F%2Fwww.amazon.in%2Fap%2Fid%2Famzn1.account.AH4V5OCIYAXV2HM7WEIJERJLTZ5Q&amp;openid.response_nonce=2020-02-23T08%3A00%3A26Z-6562002209153471233&amp;openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0&amp;email=khalerishi998%40gmail.com&amp;timestamp=1582444827000&amp;use_audio_captcha=0">
              See a new challenge
            </a>
            <a id="auth-captcha-noop-link" class="a-link-normal" href="javascript:void(0);" style="display: none;">
              See a new challenge
            </a>
          </div>
        </div>
  
          <div id="auth-switch-captcha-to-audio-container" class="a-row">
           <div class="a-column a-span12 a-text-center">
             <a id="auth-switch-captcha-to-audio" class="a-link-normal" tabindex="4" href="/ap/cnep?openid.identity=https%3A%2F%2Fwww.amazon.in%2Fap%2Fid%2Famzn1.account.AH4V5OCIYAXV2HM7WEIJERJLTZ5Q&amp;orig_return_to=https%3A%2F%2Fwww.amazon.in%2Fyour-account&amp;openid.op_endpoint=https%3A%2F%2Fwww.amazon.in%2Fap%2Fsignin&amp;openid.pape.auth_time=2020-02-23T08%3A00%3A26Z&amp;openid.signed=assoc_handle%2Cclaimed_id%2Cidentity%2Cmode%2Cns%2Cop_endpoint%2Cresponse_nonce%2Creturn_to%2Cns.pape%2Cpape.auth_policies%2Cpape.auth_time%2Csigned&amp;pageId=inflex&amp;returnOnSuccess=false&amp;openid.return_to=https%3A%2F%2Fwww.amazon.in%2Fyour-account&amp;prevRID=0EC55594ZKDFEBCBK6QR&amp;openid.assoc_handle=inflex&amp;openid.mode=id_res&amp;openid.ns.pape=http%3A%2F%2Fspecs.openid.net%2Fextensions%2Fpape%2F1.0&amp;openid.pape.auth_policies=http%3A%2F%2Fschemas.openid.net%2Fpape%2Fpolicies%2F2007%2F06%2Fnone&amp;openid.sig=l7agGXcy%2FdpQiRXYr620eCfYVeN8iQ8qYnkir%2BCbBHg%3D&amp;openid.claimed_id=https%3A%2F%2Fwww.amazon.in%2Fap%2Fid%2Famzn1.account.AH4V5OCIYAXV2HM7WEIJERJLTZ5Q&amp;openid.response_nonce=2020-02-23T08%3A00%3A26Z-6562002209153471233&amp;openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0&amp;email=khalerishi998%40gmail.com&amp;timestamp=1582444827000&amp;use_audio_captcha=1">
               Hear the challenge
             </a>
           </div>
          </div>
        
      </div>
    </div>

    
      <div id="audio-captcha-section" class="a-section a-spacing-large auth-display-none">
        <input type="hidden" name="use_audio_captcha" value="false" id="use_audio_captcha">
        <h4>
          Enter the numbers you hear
        </h4>
        <div class="a-section a-spacing-base a-spacing-top-medium">
          <div class="a-row">
            <div class="a-column a-span12 a-text-center">
              <a id="auth-refresh-audio" class="a-link-normal" tabindex="4" href="/ap/cnep?openid.identity=https%3A%2F%2Fwww.amazon.in%2Fap%2Fid%2Famzn1.account.AH4V5OCIYAXV2HM7WEIJERJLTZ5Q&amp;orig_return_to=https%3A%2F%2Fwww.amazon.in%2Fyour-account&amp;openid.op_endpoint=https%3A%2F%2Fwww.amazon.in%2Fap%2Fsignin&amp;openid.pape.auth_time=2020-02-23T08%3A00%3A26Z&amp;openid.signed=assoc_handle%2Cclaimed_id%2Cidentity%2Cmode%2Cns%2Cop_endpoint%2Cresponse_nonce%2Creturn_to%2Cns.pape%2Cpape.auth_policies%2Cpape.auth_time%2Csigned&amp;pageId=inflex&amp;returnOnSuccess=false&amp;openid.return_to=https%3A%2F%2Fwww.amazon.in%2Fyour-account&amp;prevRID=0EC55594ZKDFEBCBK6QR&amp;openid.assoc_handle=inflex&amp;openid.mode=id_res&amp;openid.ns.pape=http%3A%2F%2Fspecs.openid.net%2Fextensions%2Fpape%2F1.0&amp;openid.pape.auth_policies=http%3A%2F%2Fschemas.openid.net%2Fpape%2Fpolicies%2F2007%2F06%2Fnone&amp;openid.sig=l7agGXcy%2FdpQiRXYr620eCfYVeN8iQ8qYnkir%2BCbBHg%3D&amp;openid.claimed_id=https%3A%2F%2Fwww.amazon.in%2Fap%2Fid%2Famzn1.account.AH4V5OCIYAXV2HM7WEIJERJLTZ5Q&amp;openid.response_nonce=2020-02-23T08%3A00%3A26Z-6562002209153471233&amp;openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0&amp;email=khalerishi998%40gmail.com&amp;timestamp=1582444827000&amp;use_audio_captcha=1">
                Hear a new challenge
              </a>
            </div>
          </div>
          <div class="a-row">
            <div class="a-column a-span12 a-text-center">
              <a id="auth-switch-captcha-to-image" class="a-link-normal" tabindex="4" href="/ap/cnep?openid.identity=https%3A%2F%2Fwww.amazon.in%2Fap%2Fid%2Famzn1.account.AH4V5OCIYAXV2HM7WEIJERJLTZ5Q&amp;orig_return_to=https%3A%2F%2Fwww.amazon.in%2Fyour-account&amp;openid.op_endpoint=https%3A%2F%2Fwww.amazon.in%2Fap%2Fsignin&amp;openid.pape.auth_time=2020-02-23T08%3A00%3A26Z&amp;openid.signed=assoc_handle%2Cclaimed_id%2Cidentity%2Cmode%2Cns%2Cop_endpoint%2Cresponse_nonce%2Creturn_to%2Cns.pape%2Cpape.auth_policies%2Cpape.auth_time%2Csigned&amp;pageId=inflex&amp;returnOnSuccess=false&amp;openid.return_to=https%3A%2F%2Fwww.amazon.in%2Fyour-account&amp;prevRID=0EC55594ZKDFEBCBK6QR&amp;openid.assoc_handle=inflex&amp;openid.mode=id_res&amp;openid.ns.pape=http%3A%2F%2Fspecs.openid.net%2Fextensions%2Fpape%2F1.0&amp;openid.pape.auth_policies=http%3A%2F%2Fschemas.openid.net%2Fpape%2Fpolicies%2F2007%2F06%2Fnone&amp;openid.sig=l7agGXcy%2FdpQiRXYr620eCfYVeN8iQ8qYnkir%2BCbBHg%3D&amp;openid.claimed_id=https%3A%2F%2Fwww.amazon.in%2Fap%2Fid%2Famzn1.account.AH4V5OCIYAXV2HM7WEIJERJLTZ5Q&amp;openid.response_nonce=2020-02-23T08%3A00%3A26Z-6562002209153471233&amp;openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0&amp;email=khalerishi998%40gmail.com&amp;timestamp=1582444827000&amp;use_audio_captcha=0">
                See the challenge
              </a>
            </div>
          </div>
        </div>
        <div class="a-section a-spacing-top-medium a-text-center">
          
<div id="auth-captcha-audio-container" class="a-section a-spacing-base a-text-center">
  <span id="audio-captcha-play-button" class="a-button a-button-base"><span class="a-button-inner"><input id="audio-captcha-play-pause-button" tabindex="3" class="a-button-input" type="submit" aria-labelledby="audio-captcha-play-button-announce"><span id="audio-captcha-play-button-announce" class="a-button-text" aria-hidden="true">
    Play/Pause
  </span></span></span>
  <audio id="audio-captcha">
    <source id="mp3-file" src="https://opfcaptcha-prod.s3.amazonaws.com/192747eb9eb048f98ebf432d40f4ef07.jpg?AWSAccessKeyId=AKIA5WBBRBBBUVOQGKFM&amp;Expires=1582445141&amp;Signature=xCnTG1QAGemE%2B43Fnnf4fqSNwlI%3D" type="audio/mpeg" data-refresh-url="/ap/captcha?appAction=CNEP_EMAIL&amp;captchaType=audio&amp;marketPlaceId=A21TJRUUN4KGV">
  </audio>
</div>
        </div>
      </div>
    

    <script>
  P.register('auth-captcha-cf');
</script>


    <label for="auth-captcha-guess" class="a-form-label">
      Type characters
    </label>

    

    <input type="text" id="auth-captcha-guess" autocomplete="off" name="guess" tabindex="4" class="a-input-text a-span12 auth-required-field">

    



<div id="auth-guess-missing-alert" class="a-box a-alert-inline a-alert-inline-error auth-inlined-error-message a-spacing-top-mini" aria-live="assertive" role="alert"><div class="a-box-inner a-alert-container"><i class="a-icon a-icon-alert"></i><div class="a-alert-content">
  Enter the characters as they are shown in the image.
</div></div></div>

  </div>

  <div class="a-section a-text-center">
    

    <a class="a-link-normal" href="/gp/help/customer/account-issues/ref=is_auth_captcha_fp?ie=UTF8">
      Having trouble or sight impaired?
    </a>
  </div>



          </div>
        </div></div>
      

      <div class="a-section a-spacing-large">
        <span class="a-button a-button-primary" id="a-autoid-0"><span class="a-button-inner"><input id="cnep_1B_submit_button" tabindex="5" class="a-button-input" type="submit" aria-labelledby="a-autoid-0-announce"><span class="a-button-text" aria-hidden="true" id="a-autoid-0-announce">
          Save changes
        </span></span></span>
      </div>
    </form>
  </div></div>
</div>

</div>

      </div>
    </div>
    
    <!--================ Start footer Area  =================-->	
	<jsp:include page="footer.jsp"/>
	<!--================ End footer Area  =================-->

</body>
</html>
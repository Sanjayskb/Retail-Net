<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.retailnet.sector.*"%>
    <%@page import="com.retailnet.gst.Gst"%>
<%@page import="java.util.ArrayList, com.retailnet.*"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	   
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/index.css">
</head>

<script type="text/javascript">
function addspecification(){
	//alert('function called')
	var eles = [];
	var iCnt = document.getElementById('iCnt').value
	//alert('iteration value'+ iCnt)
	//var inputs = document.getElementsByTagName("input");
	var json = '[';
	for(var i = 1; i <= iCnt; i++) {
		
		var attr = document.getElementById('tb_attribute'+i).value;
		console.log(attr);
		var val = document.getElementById('tb_value'+i).value;
		console.log(val);
		if(attr != '' && val != '')
			{
				//console.log(attr,val);
				json += '{"name":"' + attr + '","value":"' + val + '"},';
			}
		
		
	}
	json = json.substring(0, json.length - 1);
	json += ']';
	console.log(json);
	
	document.getElementById("productSpecifications").value = json;
	
	return true;
	
}
</script>



<body  class="inquiry-main" style="background-image: url('${pageContext.request.contextPath}/assets/img/background.jpg');">

<div id="inquiry-body" style="background: #f5f7fa;"><div data-widget-cid="widget-1">
    <div data-container="discount-ads"></div>
    <form class="inquiry-body" onsubmit="return addspecification()" action="${pageContext.request.contextPath}/order/contacttosupplierAction/${product.productId}" method="post">
        <div class="main-wrap">
            <div class="company-info" data-role="company-items"><div class="company-item company-item-last" data-role="inquiry-item" data-widget-cid="widget-2">
    <p class="company-detail">
        <i class="msg-icon2 icon-avatar"></i>
        <span class="company-contact">${firm.firmName}</span>
        <i data-role="trade-tip" class="msg-icon icon-trade-assurance"></i>
    </p>
    
    <div class="company-products-wrap" data-role="product-content" style="display: block;">
        <div class="products-head util-clearfix">
            <div class="products-info pull-left">Product information</div>
            <div class="product-other">
                <div class="products-quantity pull-left">Quantity</div>
                <div class="products-unit pull-left">Unit</div>
            </div>
        </div>
        <div data-role="product-items"><div class="product-item validate-item product-item-last" data-pid="62433579009" data-widget-cid="widget-3">
    <div class="product-other">
        <div class="products-quantity pull-left">
            <div class="quantity-wrap" data-role="validate-control">
                <input type="text" data-rule="number"  min="0.01" max="10000000" class="quantity-input ui2-textfield-medium ui2-textfield ui2-textfield-single" data-role="quantity" name="quantity" id="quantity" value="1" data-widget-cid="widget-9">
            </div>
        </div>

        <div data-role="unit-trigger" class="products-unit pull-left">
        
            <div class="products-quantity pull-left"><c:out value="${product.unit.name}"></c:out></div>
        </div>

	

    </div>

    <div class="product-info" data-role="validate-control">
        <img class="product-img" src="${pageContext.request.contextPath}/images/${product.productId }/${product.firstImageName}">
        <a data-role="product-name" class="product-name" style="display:block" href="${pageContext.request.contextPath}/products/mysingleproduct/${product.productId}" target="_blank" title="${product.productName}"><c:out value="${product.productName}" /></a>
    </div>

	
    <div class="product-attr">
        <h2 class="product-attr-title">Product Specifications</h2>
        <p class="product-attr-desc">You can fill in the following product attributes to get a quotation from the seller within 24 hours</p>
        <ul class="product-attr-list util-clearfix">
 	
 	<c:set var="counta" value="0" scope="page" />
 	<c:set var="countv" value="0" scope="page" />
 	<c:set var="count" value="0" scope="page" />
        <c:forEach items="${specifications}" var="Specifications" >
         
            <li class="product-attr-item">
                <h3 class="attr-name">${Specifications.name}</h3>
                <c:set var="counta" value="${counta + 1}" scope="page"/>
                <c:set var="countv" value="${countv + 1}" scope="page"/>
                <input type="hidden" id="tb_attribute${counta}" value="${Specifications.name}">
                <div class="composite-box input-mode" data-role="composite-box-2" data-type="stringInput">
                        <input type="text" data-role="attr-input-2" id="tb_value${countv}" class="composite-input" maxlength="40" placeholder="Please type in">
						<c:set var="count" value="${count + 1}" scope="page"/>
                </div>
            </li>
            </c:forEach>   
        </ul>
        <input type="hidden" value="${count}" id="iCnt">
        <input type="hidden" value="${counta}" id="iCnt">
        <input type="hidden" value="${countv}" id="iCnt">
        <input type="hidden" value="" id="productSpecifications" name="productSpecifications">
        <input type="hidden" value="1" name="status" id="status">
    </div>
</div></div>
    </div>
</div></div>
            <div class="require-tip"><span class="required">*</span>Message:
            <span class="form-tip">Enter product details such as color, size, materials etc. and other specification requirements below to receive an accurate quote.</span>
            </div>
            <div class="sample-tip-wrapper util-clearfix">
<!--                 <i class="msg-icon2 icon-smile"></i>
                <div class="sample-tip">Enter product details such as color, size, materials etc. and other specification requirements to receive an accurate quote.</div> -->
                <div data-role="template-list-container">
                    
                    <div data-role="template-list-wrapper" class="template-list-wrapper">
                    </div>
                </div>
            </div>
            <div class="content-main validate-item">
                <div class="content-wrap" data-role="content-wrap validate-control">
                    <textarea id="moreDetails" name="moreDetails" class="ui2-textfield-multiple content ui2-textfield" data-role="content" placeholder="Enter product details such as color, size, materials etc. and other specification requirements to receive an accurate quote." data-widget-cid="widget-8"></textarea>
                </div>
            </div>
            <div class="util-clearfix action-wrap">



                <div data-role="upload-container" class="attach-container"><div class="ui-uploader-file" data-widget-cid="widget-10">
    <div class="ui-uploader-info util-clearfix" style="display:none" data-role="uploader-totalprogressbar"></div>
    <ul class="ui-uploader-file-list util-clearfix" data-role="uploader-list"></ul>
    <div class="ui2-feedback ui2-feedback-small ui2-feedback-wrong ui2-feedback-hasbg util-clearfix" style="display:none;" data-role="uploader-error-box">
        <i class="ui2-icon ui2-icon-error"></i>

    </div>
</div></div>
                <div class="send-action pull-right" data-role="send-action">
                    <div class="aui-form-item aui-check-code" data-role="check-code-element" style="display:none">
                        <input type="text" data-role="check-code-input" name="imagePassword" maxlength="10" size="4" style="width:100px;height:26px;" class="ui-textfield ui-textfield-system" value="">
                    </div>
                    <div class="send-item"><input type="submit" class="ui2-button ui2-button-default ui2-button-primary ui2-button-large" value="Send inquiry" Style="width:80px; height:40px;"></div>
                </div>
            </div>
        </div>
        
        <input type="hidden" name="attaches" data-role="send-attaches">
    </form>
   
</div></div>

</body>
</html>
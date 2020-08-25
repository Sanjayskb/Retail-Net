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
<meta charset="ISO-8859-1">
<c:if test="${products.productId != null}">
<title>Edit Product</title>
</c:if>
<c:if test="${products.productId == null}">
<title>Add Product</title>
</c:if>
</head>



<body>
  <!--================ Start Header Menu Area =================-->
	 <jsp:include page="header.jsp" /> 
	 
	
	 <script>
$(document).ready(function(){
	console.log("page loaded");
	$('#product_sector').show();
	$('#categoryId').show();
	$('#gstId').show();
	$('#unitId').show();
	$('#product_image').show();
	$('#product_sector').siblings('.nice-select').remove();
	$('#categoryId').siblings('.nice-select').remove();
	$('#gstId').siblings('.nice-select').remove();
	$('#unitId').siblings('.nice-select').remove();
	$('#product_image').siblings('.nice-select').remove();
	
	
	$('#product_sector').on('change', function(){
 		$('#categoryId').find('option').remove();
		
		var optionSelected = $("option:selected", this);
	    var sectorId = this.value;
		console.log("sector id :", sectorId);
		
		
		var inputData = "sector_id="+sectorId;
		
		$.ajax({
			'type' : 'POST',
			'url' : '/RetailNet/Sector/rest/fetchcategorybysectorid',
			'data': inputData,
			
			'success' : function(data, status){
				console.log(data);
				dataObj = JSON.parse(data);
				console.log(dataObj);
				for(var i=0; i<dataObj.length; i++){
					
					$('#categoryId').append("<option value='"+dataObj[i].category_id+"'>"+dataObj[i].category_name+"</option>");
				}
				
			},
			'error' : function(data, status){
				alert("something went wrong while fetching categories");
			}
		}); 
	});
});
 </script>
 
 <script>
// $(document).ready(function(){
// 	console.log("page loaded");
	
// 	$('#categoryId').on('change', function(){
//  		$('#brandId').find('option').remove();
		
// 		var optionSelected = $("option:selected", this);
// 	    var categoryId = this.value;
// 		console.log("category id :", categoryId);
		
		
// 		var inputData = "category_id="+categoryId;
		
// 		$.ajax({
// 			'type' : 'POST',
// 			'url' : '/RetailNet/Sector/rest/fetchbrandbycategoryid',
// 			'data': inputData,
			
// 			'success' : function(data, status){
// 				console.log(data);
// 				dataObj = JSON.parse(data);
// 				console.log(dataObj);
// 				for(var i=0; i<dataObj.length; i++){
// 					$('#brandId').append("<option value='"+dataObj[i].brand_id+"'>"+dataObj[i].brand_name+"</option>");
// 				}
				
// 			},
// 			'error' : function(data, status){
// 				alert("something went wrong while fetching categories");
// 			}
// 		}); 
// 	});
// });
 </script>
 <script>
 $(document).ready(function(){
		 $('#product_image').on('change', function(){
			 $('#imagediv').find('#imagename').remove();
			var optionSelected = $("option:selected", this);
			
		    var imageId = this.value;
			console.log("image id :", imageId);
			$('#imagehidden').val(imageId);
			
			var inputData = "image_id="+imageId;
			
			var productId = $("#productId").val();
			
			console.log("product Id :", productId);
			$.ajax({
				'type' : 'POST',
				'url' : '/RetailNet/Image/rest/fetchimagebyid',
				'data': inputData,
				
				'success' : function(data, status){
					console.log(data);
					dataObj = JSON.parse(data);
					console.log(dataObj);
					
					var imageHtml = "";
					imageHtml += '<img id="imagename" src="${pageContext.request.contextPath}/images/'+productId+'/'+dataObj.image_name+'">';
						
						
						
						$('#imagediv').append(imageHtml);	
				}			
			});
			
		 });
 });
	 
	
		 
	 </script>
	 
	 
<script type="text/javascript">
// $(document).ready(function(){
// 	var appendHtml = "";
// 	appendHtml += '<div>';

// 	appendHtml += '<input id="nt1" type="text">'
// 	appendHtml += '<input id="nt1" type="text">'
// 		appendHtml += '</div>';	
	
// 	$('#button1').on('click', function(){

// 		$('#div2').append(appendHtml);
		
// });
// 	$('#button2').on('click', function(){

// 		$('#nt1').last().remove();
		
// });

// });
	
var iCnt = 0;
 $(document).ready(function() {

	 //console.log("Add Product", ${products.productId == null});
	 	
        
     //   CREATE A "DIV" ELEMENT AND DESIGN IT USING jQuery ".css()" CLASS.
        var container = $(document.createElement('div')).css({
            padding: '5px', margin: '20px', width: '470px', border: '1px dashed',
            borderTopColor: '#999', borderBottomColor: '#999',
            borderLeftColor: '#999', borderRightColor: '#999'
        });
	
     	
     	 
        var prodId = $('#productId').val();
     	console.log('Product ID ::::::',prodId);
        
     
        $('#btAdd').click(function() {
            if (iCnt <= 19) {

                iCnt = iCnt + 1;

                // ADD TEXTBOXS.
                $(container).append('<input type=text class="input" id=tb_attribute' + iCnt + ' ' +
                    'placeholder="Attribute ' + iCnt + '" />').append('<input type=text class="input" id=tb_value' + iCnt + ' ' +
                            'placeholder="Value ' + iCnt + '" />');

                // SHOW SUBMIT BUTTON IF ATLEAST "1" ELEMENT HAS BEEN CREATED.
//                 if (iCnt == 1) {
//                     var divSubmit = $(document.createElement('div'));
//                     $(divSubmit).append('<input type=button class="bt"' + 
//                         'onclick="GetTextValue()"' + 
//                             'id=btSubmit value=add />');
//                 }

                // ADD BOTH THE DIV ELEMENTS TO THE "main" CONTAINER.
                if(prodId != undefined){
                	
                $('#div3').after(container);
                
                }
                else{
                	 $('#div2').after(container); 	
                }
            }
            // AFTER REACHING THE SPECIFIED LIMIT, DISABLE THE "ADD" BUTTON.
            // (20 IS THE LIMIT WE HAVE SET)
            else {      
                $(container).append('<label>Reached the limit</label>'); 
                $('#btAdd').attr('class', 'bt-disable'); 
                $('#btAdd').attr('disabled', 'disabled');
            }
        });
        
      
        if(prodId != undefined)
    	 {
       var specification = $('#editSpecifications').val();
       if(specification != "")
       	{
       	dataObj = JSON.parse(specification);
       	
  	 
  	 	
  	 for(var i = 0;i<dataObj.length;i++)
  		 {
  		 	iCnt = iCnt + 1;
  				$(container).append('<input type=text class="input" id=tb_attribute' + iCnt + ' ' +
               'placeholder="Attribute ' + iCnt + '" value='+dataObj[i].name+' />').append('<input type=text class="input" id=tb_value' + iCnt + ' ' +
                       'placeholder="Value ' + iCnt + '" value='+dataObj[i].value+' />');
	
  		 }
  		$('#div3').after(container);
       	}
    	 }

        // REMOVE Two ELEMENT PER CLICK.
        $('#btRemove').click(function() {
            if (iCnt != 0) { $('#tb_attribute' + iCnt).remove();$('#tb_value' + iCnt).remove(); iCnt = iCnt - 1; }
        
            if (iCnt == 0) { 
                $(container)
                    .empty() 
                    .remove(); 

                $('#btSubmit').remove(); 
                $('#btAdd')
                    .removeAttr('disabled') 
                    .attr('class', 'bt');
            }
        });

        // REMOVE ALL THE ELEMENTS IN THE CONTAINER.
        $('#btRemoveAll').click(function() {
            $(container)
                .empty()
                .remove(); 

            $('#btSubmit').remove(); 
            iCnt = 0; 
            
            $('#btAdd')
                .removeAttr('disabled') 
                .attr('class', 'bt');
        });
    });

    // PICK THE VALUES FROM EACH TEXTBOX WHEN "SUBMIT" BUTTON IS CLICKED.
    var divValue, values = '';

    function GetTextValue() {
        $(divValue) 
            .empty() 
            .remove(); 
        
        values = '';

        $('.input').each(function() {
            divValue = $(document.createElement('div')).css({
                padding:'5px', width:'200px'
            });
            values += this.value + '<br />'
        });

        $(divValue).append('<p><b>Your selected values</b></p>' + values);
        $('body').append(divValue);
    }
	
   
	
</script>

<script type="text/javascript">
$(document).ready(function(){
	
	$('#changeImgBtn').on('click', function(){
		var imageId = document.getElementById('product_image').value;
		console.log(imageId);
		var changeImageWindow = window.open("/RetailNet/products/changeImage/?imid="+imageId, "changeImage", "config='height=670,width=1400,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,directories=no,status=no'");
	});
});

</script>

	<script type="text/javascript">
							function addspecification(){
								var eles = [];
								var inputs = document.getElementsByTagName("input");
								var json = '[';
								for(var i = 1; i <= iCnt; i++) {
									
									var attr = document.getElementById('tb_attribute'+i).value;
									var val = document.getElementById('tb_value'+i).value;
									
									if(attr != '' && val != '')
										{
											//console.log(attr,val);
											json += '{"name":"' + attr + '","value":"' + val + '"},';
										}
									
								}
								if(json.length !=1)
									{
								json = json.substring(0, json.length - 1);
								json += ']';
									}
								console.log(json);
								
								document.getElementById("specifications").value = json;
								
								return true;
								
							}

// 			function addspecification(){
							
// 								var inputs = document.getElementsByTagName("input");
// 								var json = '{';
// 								for(var i = 1; i <= iCnt; i++) {
									
// 									var attr = document.getElementById('tb_attribute'+i).value;
// 									var val = document.getElementById('tb_value'+i).value;
									
// 									if(attr != '' && val != '')
// 										{
// 											//console.log(attr,val);
// 											//{"name":"John", "age":30, "city":"New York"}
// 											json +='"'+ attr + '":' + '"' + val + '"' + ',' ;
// 										}
									
// 								}
// 								json = json.substring(0, json.length - 1);
// 								json += '}';
// 								console.log(json);
								
// 								document.getElementById("specifications").value = json;
								
// 								return true;
								
// 					}
							
							</script>
	<!--================ End Header Menu Area =================-->

  <!-- ================ start banner area ================= -->	
	<section class="blog-banner-area" id="category">
		<div class="container h-100">
			<div class="blog-banner">
				<div class="text-center">
					<c:if test="${products.productId == null}">
					<h1>Add Product</h1>
					</c:if>
					<c:if test="${products.productId != null}">
					<h1>Edit Product</h1>
					</c:if>
					<nav aria-label="breadcrumb" class="banner-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <c:if test="${products.productId == null}">
              <li class="breadcrumb-item active" aria-current="page">AddProduct</li>
              </c:if>
              <c:if test="${products.productId != null}">
              <li class="breadcrumb-item active" aria-current="page">EditProduct</li>
              </c:if>
            </ol>
          </nav>
				</div>
			</div>
    </div>
	</section>
	<!-- ================ end banner area ================= -->


	
	<div class="login_form_inner register_form_inner" style="max-width: 650px; margin: auto;">
		<c:if test="${products.productId == null}">
						<form class="row login_form" action="${pageContext.request.contextPath}/products/productAction" onsubmit="return addspecification()" method="post" id="register_form" style="max-width: 580px; margin: auto;" >
							
<!-- 							<input type="hidden" id="productId" name="productId" value="" > -->
							<div class="col-md-12 form-group">Product Name</div>
						
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="productName" name="productName" placeholder="Product Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Product Name'" >
							</div>

							
							
							<div class="col-md-12 form-group">Product Description</div>
							
							<div class="col-md-12 form-group">
								<textarea class="form-control" id="description" name="description"  onfocus="this.placeholder = ''" onblur="this.placeholder = 'Product Description'">
   								</textarea>          
              			</div>
              			
              			<div class="col-md-12 form-group">Product Sector</div>
              
              <div class="col-md-12 form-group">
								<select id="product_sector" name="product_sector" class="form-control">
								<option>--Select--</option>
								<c:forEach var="Sector" items="${sectors}">
											<option value="${Sector.sectorId }">${Sector.sectorName }</option>
										</c:forEach>
								</select>
    							
              </div>
              			
              			<div class="col-md-12 form-group">Product Category</div>
              
              <div class="col-md-12 form-group">
								<select id="categoryId" name="categoryId" class="form-control">
								<option>--Select--</option>
								<c:forEach var="Category" items="${categories}">
											<option value="${Category.categoryId }">${Category.categoryName }</option>
										</c:forEach>
								</select>
    							
              </div>
              
              <div class="col-md-12 form-group">Product Brand</div>
              
              <div class="col-md-12 form-group">
								<input type="text" class="form-control" id="brandName" name="brandName" placeholder="Brand Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Brand Name'">
							</div>
							
              
              <div class="col-md-12 form-group">Product Quantity</div>
              
              <div class="col-md-12 form-group">
								<input type="text" class="form-control" id="productqty" name="quantity" placeholder="Product Quantity" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Product Quantity'">
							</div>
							
							<div class="col-md-12 form-group">Unit</div>
              
              <div class="col-md-12 form-group">
								<select id="unitId" name="unitId" class="form-control">
								<option>--Select--</option>
								<c:forEach var="Unit" items="${units}">
											<option value="${Unit.unitId }">${Unit.name }</option>
										</c:forEach>
								</select>
    							
              </div>
							
							<div class="col-md-12 form-group">Product Rate</div>
              
              <div class="col-md-12 form-group">
								<input type="text" class="form-control" id="productrate" name="rate" placeholder="Product Rate" onfocus="this.placeholder = ''" onblur="this.placeholder = 'price per unit'" >
							</div>
							
							<script type="text/javascript">
							function multiply(){
								var first = document.getElementById("productqty").value
								var second = document.getElementById("productrate").value
								
								var ans = first * second;
								var price = document.getElementById('productprice');
								  price.value = ans
							}
							</script>
							
							<div class="col-md-12 form-group">Product Price</div>
							
              <div class="col-md-12 form-group">
								<input type="text" class="form-control" id="productprice" name="price" placeholder="Product Price" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Product Price'" onclick ="multiply()" autocomplete="off">
							</div>
							
							<div class="col-md-12 form-group">Product Gst Percentage</div>
              
              <div class="col-md-12 form-group">
								<select id="gstId" name="gstId" class="form-control">
								<option>--Select--</option>
    							<c:forEach var="Gst" items="${gsts}">
											<option value="${Gst.gstId }">${Gst.gstSlab }</option>
										</c:forEach>
    							</select>
              </div>
							
							<div class="col-md-12 form-group">Date Of Manufacture</div>
							
              <div class="col-md-12 form-group">
								<input type="date" class="form-control" id="dateOfManufacturing" name="dateOfManufacturing" placeholder="Date Of Manufacturer" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Date Of Manufacturer'">
							</div>
							
							<div class="col-md-12 form-group">Specifications</div>
							
							<div id="div1" class="col-md-12 form-group">
			<input type="button" class="" name="button" id="btAdd"  value="Add Specification" />
			<input type="button" class="" name="button" id="btRemove"  value="Remove Specification" />
			<input type="button" class="" name="button" id="btRemoveAll"  value="Remove all Specification" />
			</div>
			<div id="div2" class="col-md-12 form-group">
			
			</div>
						<input type="hidden" value="" id="specifications" name="specifications">
							<input type="hidden" value="1" name="status" id="status">
							<input type="hidden" value="1" name="availability" id="availability">
							<input type="hidden" value="0" name="sorting" id="sorting">
							<div class="col-md-12 form-group">
								<button type="submit" value="submit" class="button button-register w-100" >Add Product</button>
							</div>
							
						
			
			
			
						</form>
						</c:if>
						
						<!--  ----------------------------------------------------------------------------------------------------------------------------------   -->
						
						<c:if test="${products.productId != null}">
						
						
						
						<form class="row login_form" action="${pageContext.request.contextPath}/products/productActionUpdate" onsubmit="return addspecification()" method="get" id="register_form" style="max-width: 580px; margin: auto;" >
						

						<script type="text/javascript">
							$(document).ready(function(){
						$('#removeimage').click(function(){
							//var optionSelected = $("option:selected", this);
							var imageId = $('#imagehidden').val();
						    
							console.log("image id :", imageId);
							
							var inputData = "image_id="+imageId;
						
						console.log(inputData);
						$.ajax({
						'type' : 'POST',
						'url' : '/RetailNet/Image/rest/removeimage',
						'data': inputData,
		
						'success' : function(data, status){
						console.log(data);
						
						$('.form-group row m-t-15').load();
						}
					});
				});
			});
			</script>
						
 							<c:if test="${fn:length(productimages) != 0}">
								<div class="form-group row m-t-15">
                                                        <div class="col-12 col-lg-3 text-center text-lg-right">
                                                           <div class="col-md-12 form-group">Product Images</div>
                                                        </div>
                                                        <div class="col-12 col-lg-6 text-center text-lg-left">
                                                            <div class="fileinput fileinput-new" data-provides="fileinput">
                                                                <div class="fileinput-new img-thumbnail text-center" id="imagediv">
                                                                	
<%--                                                                     <img src="<c:url value="/images/${products.productId}/${imagemap.imageName}" name="imagename"></c:url>"  alt="not found"> --%>
                                                                    
                                                                    </div>
                                                                    <div>
                                                                    
                                                                    <select id="product_image" name="product_image" class="form-control">
                                                                    <c:forEach var="ProductImage" items="${productimages}">
                                                                    <option  value="${ProductImage.imageId}">${ProductImage.imageName }</option>
                                                                    </c:forEach>
                                                                    </select>
                                                                    </div>
                                                                <div class="fileinput-preview fileinput-exists img-thumbnail" style="line-height: 9px;"></div>
                                                                <div class="m-t-20 text-center">
<!--                                                             <span class="btn btn-primary btn-file"> -->
<!--                                                             <span class="fileinput-new">Select image</span> -->
<!--                                                             <span class="fileinput-exists">Change</span> -->
<!--                                                             <input type="hidden"><input type="file" name="..."> -->
<!--                                                             </span> -->
                                                                    <a href="#" id="changeImgBtn" class="button button-register w-100" style="color: white;" data-dismiss="fileinput">change</a> 
                                                                    <input type="hidden" value="" id="imagehidden" name="imagehidden">                                                                  
                                                                    <a href="#" id="removeimage" name="removeimage" class="button button-register w-100" style="color: white;" data-dismiss="fileinput">Remove</a>

                                                                </div>
                                                            </div>
                                                        </div>
                               </div>
                               </c:if>
<%--                                <c:if test="${productimages.imageId == 0}"> --%>
				<c:if test="${fn:length(productimages) == 0}">
                               <div class="form-group row m-t-15">
                                                        <div class="col-12 col-lg-3 text-center text-lg-right">
                                                           <div class="col-md-12 form-group">Product Images</div>
                                                           </div>
                                                           <div class="col-12 col-lg-6 text-center text-lg-left">
                                                            <div class="fileinput fileinput-new" data-provides="fileinput">
                                                                <div class="fileinput-new img-thumbnail text-center" id="imagediv">
                                                                <img alt="noimg" src="${pageContext.request.contextPath}/assets/img/addimg.png">
                                                                </div>
                                                                </div>
                                                                </div>
                                                           </div>
                                                           
                               </c:if>
							
							<input type="hidden" id="productId" name="productId" value="${products.productId }" >
							<div class="col-md-12 form-group">Product Name</div>
							
							
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="productName" name="productName" value="<c:out value='${products.productName}'/>">
							</div>
							
							
							
							<div class="col-md-12 form-group">Product Description</div>
							
							<div class="col-md-12 form-group">
								<textarea class="form-control" id="description" name="description"><c:out value='${products.description}'/>
   								</textarea>          
              			</div>
              			
              			<div class="col-md-12 form-group">Product Sector ${products.category.sector.sectorId }</div>
              
              <div class="col-md-12 form-group">
								<select id="product_sector" name="product_sector" class="form-control">
								<option>--Select--</option>
									<option selected>${products.category.sector.sectorName}</option>
								<c:forEach var="Sector" items="${sectors}">
<%-- 								<option>${Sector.sectorId == products.category.sector.sectorId}</option> --%>
							<option value="${Sector.sectorId }">${Sector.sectorName }</option>
<%-- 								<c:choose> --%>
<%-- 									<c:when test="${Sector.sectorId == products.category.sector.sectorId} "> --%>
<%-- 											<option value="${Sector.sectorId }" selected="selected">${Sector.sectorName }</option> --%>
<%-- 									</c:when> --%>
<%-- 									<c:otherwise> --%>
<%-- 										<option value="${Sector.sectorId }">${Sector.sectorName }</option> --%>
<%-- 									</c:otherwise> --%>
<%-- 								</c:choose> --%>
										</c:forEach>
								</select>
    							
              </div>
              			
              			<div class="col-md-12 form-group">Product Category</div>
              
              <div class="col-md-12 form-group">
								<select id="categoryId" name="categoryId" class="form-control" >
								<option>--Select--</option>
								<option selected>${products.category.categoryName}</option>
								<c:forEach var="Category" items="${categories}">
											<option value="${Category.categoryId }">${Category.categoryName }</option>
										</c:forEach>
								</select>
    							
              </div>
              
               <div class="col-md-12 form-group">Product Brand</div>
              
              <div class="col-md-12 form-group">
								<input type="text" class="form-control" id="brandName" name="brandName" value="<c:out value='${products.brandName}' />">
							</div>
              
              <div class="col-md-12 form-group">Product Quantity</div>
              
              <div class="col-md-12 form-group">
								<input type="text" class="form-control" id="productqty" name="quantity" value="<c:out value='${products.quantity}'/>">
							</div>
							
							 <div class="col-md-12 form-group">
								<select id="unitId" name="unitId" class="form-control">
								<option>--Select--</option>
								<option selected>${products.unit.name}</option>
								<c:forEach var="Unit" items="${units}">
											<option value="${Unit.unitId }">${Unit.name }</option>
										</c:forEach>
								</select>
    							
              </div>
							
							<div class="col-md-12 form-group">Product Rate</div>
              
              <div class="col-md-12 form-group">
								<input type="text" class="form-control" id="productrate" name="rate" placeholder="Product Quantity" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Price per unit'"  value="<c:out value='${products.rate}'/>" >
							</div>
							
							<script type="text/javascript">
							function multiply(){
								var first = document.getElementById("productqty").value
								var second = document.getElementById("productrate").value
								
								var ans = first * second;
								var price = document.getElementById('productprice');
								  price.value = ans
							}
							</script>
							
							<div class="col-md-12 form-group">Product Price</div>
							
              <div class="col-md-12 form-group">
								<input type="text" class="form-control" id="productprice" name="price" value="<c:out value='${products.price}'/>" autocomplete="off" onclick ="multiply()">
							</div>
							
							<div class="col-md-12 form-group">Product Gst Percentage</div>
              
              <div class="col-md-12 form-group">
								<select id="gstId" name="gstId" class="form-control">
								<option><c:out value='${products.gst.gstSlab}'></c:out></option>
								<option>--Select--</option>
								<option selected>${products.gst.gstSlab}</option>
    							<c:forEach var="Gst" items="${gsts}">
											<option value="${Gst.gstId }">${Gst.gstSlab }</option>
										</c:forEach>
    							</select>
              </div>
							
							<div class="col-md-12 form-group">Date Of Manufacture</div>
							
              <div class="col-md-12 form-group">
								<input type="date" class="form-control" id="dateOfManufacturing" name="dateOfManufacturing" value="<c:out value='${products.dateOfManufacturing}'/>">
							</div>
							
							
							
							<div class="col-md-12 form-group">
								<input type="hidden"  id="editSpecifications" name="editSpecifications" value='${products.specifications}'>
   								          
              			</div>
              			
              			<div class="col-md-12 form-group">Specifications</div>
							
							<div id="div1" class="col-md-12 form-group">
			<input type="button" class="" name="button" id="btAdd"  value="Add Specification" />
			<input type="button" class="" name="button" id="btRemove"  value="Remove Specification" />
			<input type="button" class="" name="button" id="btRemoveAll"  value="Remove all Specification" />
			</div>
			<div id="div3" class="col-md-12 form-group">
			
			</div>
              			
              			<input type="hidden" value="" id="specifications" name="specifications">
							<input type="hidden" value="1" name="status" id="status">
							<input type="hidden" value="1" name="availability" id="availability">
							
							<div class="col-md-12 form-group">
								<button type="submit" value="submit" class="button button-register w-100" >Update Product</button>
							</div>
							
							
						</form>
						</c:if>
					</div>
				
 <!--================ Start footer Area  =================-->	
	<jsp:include page="footer.jsp"/>
	<!--================ End footer Area  =================-->

</body>
</html>


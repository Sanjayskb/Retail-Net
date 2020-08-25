<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inactive Products</title>
 <!--plugin styles-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/adminassets/vendors/select2/css/select2.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/adminassets/vendors/datatables/css/scroller.bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/adminassets/vendors/datatables/css/colReorder.bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/adminassets/vendors/datatables/css/dataTables.bootstrap.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/adminassets/css/pages/dataTables.bootstrap.css"/>
    <!-- end of plugin styles -->
    <!--Page level styles-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/adminassets/css/pages/tables.css"/>
    <link rel="stylesheet" href="#" id="skin_change"/>
    <!--End of page level styles-->

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
                           Inactive Products Grid
                        </h4>
                        </div>
                        <div class="col-lg-6 col-sm-8 col-12">
                            <ol class="breadcrumb float-right  nav_breadcrumb_top_align">
                                <li class="breadcrumb-item">
                                    <a href="index-2.html">
                                        <i class="fa fa-home" data-pack="default" data-tags=""></i> Dashboard
                                    </a>
                                </li>
                                <li class="breadcrumb-item">
                                    <a href="#">Products</a>
                                </li>
                                <li class="active breadcrumb-item">Inactive Products Grid</li>
                            </ol>
                        </div>
                        </div>
                    </div>
                </header>
                <c:if test="${fn:length(products) == 0}">
            <h3>Currently there are no Inactive Products !!!!</h3>
            
            </c:if>
             <c:if test="${fn:length(products) != 0}">
                <div class="outer">
                    <div class="inner bg-container">
                        <div class="card">
                            <div class="card-header bg-white">
                               Inactive Products Grid
                            </div>
                            <div class="card-body m-t-35" id="user_body">
                                <div class="table-toolbar">
                                    <div class="btn-group">
                                        <a href="${pageContext.request.contextPath}/admin/Addproductbyadmin" id="editable_table_new" class=" btn btn-default">
                                        Add Product  <i class="fa fa-plus"></i>
                                    </a>
                                    </div>
                                    <div class="btn-group float-right users_grid_tools">
                                        <div class="tools"></div>
                                    </div>
                                </div>
                                <div>
   <div>
      <div id="editable_table_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">
         <div class="text-right">
            <div class="dt-buttons btn-group">   <button class="btn btn-default buttons-copy buttons-html5" tabindex="0" aria-controls="editable_table"><span>Copy</span></button> <button class="btn btn-default buttons-csv buttons-html5" tabindex="0" aria-controls="editable_table"><span>CSV</span></button> <button class="btn btn-default buttons-print" tabindex="0" aria-controls="editable_table"><span>Print</span></button> </div>
         </div>
         <div>
            <div id="editable_table_filter" class="dataTables_filter"><label>Search:<input type="search" class="form-control input-sm" placeholder="" aria-controls="editable_table"></label></div>
         </div>
         <div class="dataTables_length" id="editable_table_length">
            <label>
               Show 
               <select name="editable_table_length" aria-controls="editable_table" class="form-control input-sm">
                  <option value="10">10</option>
                  <option value="25">25</option>
                  <option value="50">50</option>
                  <option value="100">100</option>
               </select>
               entries
            </label>
         </div>
         <div class="table-responsive">
            <table class="table table-striped table-bordered table-hover dataTable no-footer" id="editable_table" role="grid" aria-describedby="editable_table_info">
               <thead>
                  <tr role="row">
                     <th class="wid-10 sorting_asc" tabindex="0" rowspan="1" colspan="1" aria-controls="editable_table" aria-sort="ascending" aria-label="ProductID activate to sort column descending" style="width: 76.1px;">ProductId</th>
                     <th class="wid-25 sorting" tabindex="0" rowspan="1" colspan="1" aria-controls="editable_table" aria-label="Product Name: activate to sort column ascending" style="width: 185.7;">Product Name</th>
                     <th class="wid-20 sorting" tabindex="0" rowspan="1" colspan="1" aria-controls="editable_table" aria-label="Firm Name: activate to sort column ascending" style="width: 185.7px;">Firm Name</th>
                     <th class="wid-20 sorting" tabindex="0" rowspan="1" colspan="1" aria-controls="editable_table" aria-label="Brand: activate to sort column ascending" style="width: 185.7px;">Brand</th>
                     <th class="wid-25 sorting" tabindex="0" rowspan="1" colspan="1" aria-controls="editable_table" aria-label="Category: activate to sort column ascending" style="width: 188.9px;">Category</th>
                     <th class="wid-15 sorting" tabindex="0" rowspan="1" colspan="1" aria-controls="editable_table" aria-label="Rate: activate to sort column ascending" style="width: 76.1px;">Rate</th>
                     <th class="wid-10 sorting" tabindex="0" rowspan="1" colspan="1" aria-controls="editable_table" aria-label="Quantity: activate to sort column ascending" style="width: 85.9px;">Quantity</th>
                     <th class="wid-20 sorting" tabindex="0" rowspan="1" colspan="1" aria-controls="editable_table" aria-label="Price: activate to sort column ascending" style="width: 85.9px;">Price</th>
                     <th class="wid-20 sorting" tabindex="0" rowspan="1" colspan="1" aria-controls="editable_table" aria-label="Gst: activate to sort column ascending" style="width: 85.9px;">Gst</th>
                     <th class="wid-20 sorting" tabindex="0" rowspan="1" colspan="1" aria-controls="editable_table" aria-label="Unit: activate to sort column ascending" style="width: 85.9px;">Unit</th>
                     <th class="wid-20 sorting" tabindex="0" rowspan="1" colspan="1" aria-controls="editable_table" aria-label="Description: activate to sort column ascending" style="width: 85.9px;">Description</th>
                     <th class="wid-20 sorting" tabindex="0" rowspan="1" colspan="1" aria-controls="editable_table" aria-label="First Image: activate to sort column ascending" style="width: 85.9px;">First Image</th>
                     <th class="wid-20 sorting" tabindex="0" rowspan="1" colspan="1" aria-controls="editable_table" aria-label="Specification: activate to sort column ascending" style="width: 85.9px;">Specification</th>
                     <th class="wid-20 sorting" tabindex="0" rowspan="1" colspan="1" aria-controls="editable_table" aria-label="Status: activate to sort column ascending" style="width: 85.9px;">Status</th>
                     <th class="wid-20 sorting" tabindex="0" rowspan="1" colspan="1" aria-controls="editable_table" aria-label="Availablity: activate to sort column ascending" style="width: 85.9px;">Availablity</th>
                     <th class="wid-20 sorting" tabindex="0" rowspan="1" colspan="1" aria-controls="editable_table" aria-label="DOM: activate to sort column ascending" style="width: 85.9px;">DOM</th>
                     <th class="wid-10 sorting" tabindex="0" rowspan="1" colspan="1" aria-controls="editable_table" aria-label="Actions: activate to sort column ascending" style="width: 85.9px;">Actions</th>
                  </tr>
               </thead>
               <tbody>
               <c:forEach var="products" items="${products}">
                  <tr role="row" class="odd">
                     <td class="sorting_1">${products.productId }</td>
                     <td>${products.productName }</td>
                     <td>${products.firm.firmName }</td>
                     <td>${products.brandName }</td>
                     <td>${products.category.categoryName }</td>
                     <td class="center">${products.rate }</td>
                     <td class="center">${products.quantity }</td>
                     <td class="center">${products.price }</td>
                     <td class="center">${products.gst.gstSlab }</td>
                     <td class="center">${products.unit.name }</td>
                     <td class="center">${products.description }</td>
                     <td class="center">${products.firstImageName }</td>
                     <td class="center">${products.specifications }</td>
                     <td class="center">${products.status }</td>
                     <td class="center">${products.availability }</td>
                     <td class="center">${products.dateOfManufacturing }</td>
                     <td><a href="view_user.html" data-toggle="tooltip" data-placement="top" title="" data-original-title="View User"><i class="fa fa-eye text-success"></i></a>&nbsp; &nbsp;<a class="edit" data-toggle="tooltip" data-placement="top" title="" href="edit_user.html" data-original-title="Edit"><i class="fa fa-pencil text-warning"></i></a>&nbsp; &nbsp;<a class="delete hidden-xs hidden-sm" data-toggle="tooltip" data-placement="top" title="" href="delete_user.html" data-original-title="Delete"><i class="fa fa-trash text-danger"></i></a></td>
                  </tr>
              </c:forEach>
               </tbody>
            </table>
         </div>
         <div class="row">
            <div class="col-md-5 col-12">
               <div class="dataTables_info" id="editable_table_info" role="status" aria-live="polite">Showing 1 to 10 of 67 entries</div>
            </div>
            <div class="col-md-7 col-12">
               <div class="dataTables_paginate paging_simple_numbers" id="editable_table_paginate">
                  <ul class="pagination">
                     <li class="paginate_button previous disabled" id="editable_table_previous"><a href="#" aria-controls="editable_table" data-dt-idx="0" tabindex="0">Previous</a></li>
                     <li class="paginate_button active"><a href="#" aria-controls="editable_table" data-dt-idx="1" tabindex="0">1</a></li>
                     <li class="paginate_button "><a href="#" aria-controls="editable_table" data-dt-idx="2" tabindex="0">2</a></li>
                     <li class="paginate_button "><a href="#" aria-controls="editable_table" data-dt-idx="3" tabindex="0">3</a></li>
                     <li class="paginate_button "><a href="#" aria-controls="editable_table" data-dt-idx="4" tabindex="0">4</a></li>
                     <li class="paginate_button "><a href="#" aria-controls="editable_table" data-dt-idx="5" tabindex="0">5</a></li>
                     <li class="paginate_button "><a href="#" aria-controls="editable_table" data-dt-idx="6" tabindex="0">6</a></li>
                     <li class="paginate_button "><a href="#" aria-controls="editable_table" data-dt-idx="7" tabindex="0">7</a></li>
                     <li class="paginate_button next" id="editable_table_next"><a href="#" aria-controls="editable_table" data-dt-idx="8" tabindex="0">Next</a></li>
                  </ul>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
                                <!-- END EXAMPLE TABLE PORTLET-->
                            </div>
                        </div>
                    </div>
                    <!-- /.inner -->
                </div>
                </c:if>
                <!-- /.outer -->
            </div>
      
      </div>
      <!-- /#wrap -->
<!-- global scripts-->
<script src="js/components.js"></script>
<script src="js/custom.js"></script>
<!--end of global scripts-->
<!--plugin scripts-->
<script src="${pageContext.request.contextPath}/adminassets/vendors/select2/js/select2.js"></script>
<script src="${pageContext.request.contextPath}/adminassets/vendors/datatables/js/jquery.dataTables.js"></script>
<script src="${pageContext.request.contextPath}/adminassets/js/pluginjs/dataTables.tableTools.js"></script>
<script src="${pageContext.request.contextPath}/adminassets/vendors/datatables/js/dataTables.colReorder.js"></script>
<script src="${pageContext.request.contextPath}/adminassets/vendors/datatables/js/dataTables.bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/adminassets/vendors/datatables/js/dataTables.buttons.min.js"></script>
<script src="${pageContext.request.contextPath}/adminassets/vendors/datatables/js/dataTables.responsive.min.js"></script>
<script src="${pageContext.request.contextPath}/adminassets/vendors/datatables/js/dataTables.rowReorder.min.js"></script>
<script src="${pageContext.request.contextPath}/adminassets/vendors/datatables/js/buttons.colVis.min.js"></script>
<script src="${pageContext.request.contextPath}/adminassets/vendors/datatables/js/buttons.html5.min.js"></script>
<script src="${pageContext.request.contextPath}/adminassets/vendors/datatables/js/buttons.bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/adminassets/vendors/datatables/js/buttons.print.min.js"></script>
<script src="${pageContext.request.contextPath}/adminassets/vendors/datatables/js/dataTables.scroller.min.js"></script>
<!-- end of plugin scripts -->
<!--Page level scripts-->
<script src="${pageContext.request.contextPath}/adminassets/js/pages/simple_datatables.js"></script>
<!-- end of global scripts-->
     
     </div>
</body>
</html>
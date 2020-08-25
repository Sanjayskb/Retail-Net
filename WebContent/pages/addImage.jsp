<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  <script src="${pageContext.request.contextPath}/assets/vendors/jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	window.opener.location.reload();
});
</script>
</head>
<% System.out.println("pid : "+ Integer.parseInt(request.getParameter("pid").toString())); %>
<body>
<form name="addImageForm" method="post" action="${pageContext.request.contextPath}/products/addImageAction" enctype="multipart/form-data">
<input type="file" name="imagefile" id="imagefile">
<h3>${product.productId}</h3>
<input type="hidden" name="productId" value="<%=Integer.parseInt(request.getParameter("pid").toString()) %>">
<button type="submit">Upload</button>
</form>
</body>
</html>
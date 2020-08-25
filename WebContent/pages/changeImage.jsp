<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form name="changeImageForm" method="post" action="${pageContext.request.contextPath}/products/changeImageAction" enctype="multipart/form-data">
<input type="file" name="imagefile" id="imagefile">
<h3>${product.productId}</h3>
<input type="hidden" name="productId" value="<%=Integer.parseInt(request.getParameter("pid").toString()) %>">
<button type="submit">Upload</button>
</form>
</body>
</html>
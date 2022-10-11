<%@page import="productData.OuterProduct"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="outer" class="productData.OuterProductRepository"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/shop.css">
</head>
<body>

<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	
	OuterProduct op = outer.getOuterProductById(id);
	
/* 	String company = op.getOuterProductCompany();
	op.getOuterProductCost();
	op.getOuterProductDescription();
	op.getOuterProductSex();
	op.getOuterProductSize();
	int year = op.getOuterProductYear();
	 String id2 = op.getOuterProductID(); */
	
%>

<div align="center">
	<p><%= op.getOuterProductID() %> </p>
	<p><%= op.getOuterProductCompany() %> </p>
	<p><%= op.getOuterProductCost() %> </p>
	<p><%= op.getOuterProductDescription() %> </p>
	<p><%= op.getOuterProductSex() %> </p>
	<p><%= op.getOuterProductSize() %> </p>
	<p><%= op.getOuterProductYear() %> </p>

</div>




</body>
</html>
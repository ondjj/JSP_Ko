<%@page import="java.util.ArrayList"%>
<%@page import="productData.OuterProduct"%>
<%@page import="productData.OuterProductRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="css/shop.css">
<body>
<jsp:useBean id="outer" class="productData.OuterProductRepository"></jsp:useBean>
<%
	OuterProductRepository opr = new OuterProductRepository();
	OuterProduct op = new OuterProduct();
	
	ArrayList<OuterProduct> out1 = outer.getAllProducts();
	
%>

<div>
	<h1> 제품 정보 메인 페이지입니다.</h1>
	<% 
		for(int i=0; i<outer.getAllProducts().size(); i++){
			String id = out1.get(i).getOuterProductID();
			String company =  out1.get(i).getOuterProductCompany();
			String description = out1.get(i).getOuterProductDescription();
			int year = out1.get(i).getOuterProductYear(); 
			String size = out1.get(i).getOuterProductSize();
			int price = out1.get(i).getOuterProductCost();
			String gender = out1.get(i).getOuterProductSex();
	%>
	
</div>
	<div>
		<h1><%= i+1 %> 번째 제품 요약 정보입니다.</h1>
		<p><b>제품 번호 <%= id %></b> &nbsp; <b>제조사 <%= company %></b></p> <br>
		
		<h3>상품정보</h3>
		<p> <%= description %> </p>
		<p> 성별 - <%= gender %> &nbsp; 사이즈 : <%= size %></p>
		<p> <%= year %>년 생산 &nbsp; 가격 : <%= price %>원</p>
		<hr>
		<a href='main2.jsp?id=<%= id %>'>제품 세부 정보</a>
	</div>
	
	<% 	} %>

</body>
</html>
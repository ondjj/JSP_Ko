<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.ArrayList" %>   
<%@ page import ="dto.Product" %>   
<%@ page import="dao.ProductRepository" %>
<%@ page import="java.net.URLDecoder" %>

<%
	request.setCharacterEncoding("UTF-8");

	String cartId = session.getId();
	
	String Shipping_cartId = "";
	String Shipping_Name = "";
	String Shipping_Date = "";
	String Shipping_Country = "";
	String Shipping_ZipCode = "";
	String Shipping_AddressName = "";
	
	Cookie[] cookies = request.getCookies();
	
	if(cookies != null){
		for(int i = 0; i < cookies.length; i++){
			Cookie thisCookie = cookies[i];
			String n = thisCookie.getName();
			if(n.equals("Shipping_cartId"))
				Shipping_cartId = URLDecoder.decode((thisCookie.getValue()),"utf-8");
			if(n.equals("Shipping_Name"))
				Shipping_Name = URLDecoder.decode((thisCookie.getValue()),"utf-8");
			if(n.equals("Shipping_Date"))
				Shipping_Date = URLDecoder.decode((thisCookie.getValue()),"utf-8");
			if(n.equals("Shipping_Country"))
				Shipping_Country = URLDecoder.decode((thisCookie.getValue()),"utf-8");
			if(n.equals("Shipping_ZipCode"))
				Shipping_ZipCode = URLDecoder.decode((thisCookie.getValue()),"utf-8");
			if(n.equals("Shipping_AddressName"))
				Shipping_AddressName = URLDecoder.decode((thisCookie.getValue()),"utf-8");
		}
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="./resources/css/bootstrap.min.css"/>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">주문 정보</h1>
		</div>
	</div>
	
	<div class="container col-8 alert alert-info">
		<div class="text-center">
			<h1>영수증</h1>
		</div>

		<div class="row justify-content-between">
			<div class="col-4" align="left">
				<strong>배송 주소</strong> <br>
				성명 : <% out.println(Shipping_Name); %> <br>
				우편번호 : <% out.println(Shipping_ZipCode); %> <br>
				주소 : <% out.println(Shipping_AddressName); %>(<% out.println(Shipping_Country); %>)<br>
			</div>
			<div class="col-4" align="right">
				<p><em>배송일 : <% out.println(Shipping_Date); %></em>
			</div>
		</div>
		
		<div>
			<table class="table table-hover">
				<tr>
					<th class="text-center">제품명</th>
					<th class="text-center">수량</th>
					<th class="text-center">가격</th>
					<th class="text-center">소계</th>
				</tr>
				
				<%
					int sum = 0;
					ArrayList<Product> cartList = (ArrayList<Product>) session.getAttribute("cartlist");
					if(cartList == null){
						cartList = new ArrayList<Product>();
					}
					for(int i = 0; i < cartList.size(); i++){
						Product product = cartList.get(i);
						int total = product.getUnitPrice() * product.getQuantity();
						sum = sum + total;
					
				%>
				<tr>
					<td class="text-center"><em><%=product.getPname()%></em>
					<td class="text-center"><em><%=product.getQuantity()%></em>
					<td class="text-center"><em><%=product.getUnitPrice()%></em>
					<td class="text-center"><em><%=total%> ₩</em>
				</tr>
				<% } %>
				<tr>
					<td> </td>
					<td> </td>
					<td class="text-right"><strong>총액 : </strong> </td>
					<td class="text-center text-danger"><strong><%= sum %> ₩</strong></td>
				</tr>
			</table>
					<a href="./shippinginfo.jsp?cartId=<%= Shipping_cartId %>" class="btn btn-secondary" role="button">이전</a>
					<a href="./thankCustomer.jsp?" class="btn btn-success" role="button">완료</a>
					<a href="./checkOutCancelled.jsp" class="btn btn-danger" role="button">취소</a>
		</div>
	</div>
</body>
</html>
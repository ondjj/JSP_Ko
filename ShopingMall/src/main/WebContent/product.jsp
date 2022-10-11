<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Product" %>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" 
	  href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
</head>
<body>
	<jsp:include page="menu.jsp"/>
		<div class="jumbotron">
		<div class="container">
			<h1 class="dispaly-3">
				상품 상세 정보
			</h1>
		</div>
	</div>
	<%
		String id = request.getParameter("id");
		Product product = productDAO.getProductById(id);
	%>
	
	<div class="container">
		<div class = "row">
			<div class = "col-md-6">
				<h3><%=product.getPname() %></h3>
				<p><%= product.getDescription() %></p>
				<p>상품 코드 : <%= product.getProductId() %> </p>
				<p>제조사 : <%=product.getManufacturer() %> </p>
				<p>분류 : <%=product.getCategory() %> </p>
				<p>재고 수량 : <%=product.getUnitsInStock()%> 개 </p>
				<h4>가격 : <%=product.getUnitPrice() %> ₩</h4>
				<a href="#" class="btn btn-info">상품 주문</a>
				<a href="./products.jsp" class="btn btn-secondary">목록</a>
			</div>
		</div>
		
	</div>
	<%@ include file="footer.jsp" %>
</body>
</html>
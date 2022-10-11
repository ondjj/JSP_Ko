<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session"/>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" 
	  href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>상품 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
		<div class="jumbotron">
		<div class="container">
			<h1 class="dispaly-3">
				상품목록
			</h1>
		</div>
	</div>
	
	<% 
		ArrayList<Product> listOfProducts = productDAO.getAllProducts();
	%>
	<div class="container">
		<div class="row" align="center">
			<%
				for(int i = 0 ; i < listOfProducts.size(); i++){
					Product product = listOfProducts.get(i);
			%>
			<div class="col-md-4">
				<h3><%= product.getPname() %></h3>
				<p><%= product.getDescription() %></p>
				<p><%=product.getUnitPrice() %> </p>
				<p><a href="./product.jsp?id=<%=product.getProductId() %>"
					class="btn btn-secondary" role="button"> 상세 정보 </a>
				</p>
			</div>
			<%
				}
			%>
		</div>
	</div>
		<%-- <%@ include file="footer.jsp" %> --%>
	<jsp:include page="footer.jsp">
		<jsp:param value="footer.jsp" name="footer"/>
	</jsp:include>
</body>
</html>
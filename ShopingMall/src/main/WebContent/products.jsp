<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<%-- <jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session"/> --%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
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
		ProductRepository dao = ProductRepository.getInstacne();
		ArrayList<Product> listOfProducts = dao.getAllProducts();
	%>
		<!-- 신규 데이터 포함하여 출력 -->
	
	<div class="container">
		<div class="row" align="center">
			<%
				for(int i = 0 ; i < listOfProducts.size(); i++){
					Product product = listOfProducts.get(i);
			%>
			<div class="col-md-4">
				<img alt="" src="C:\\upload\<%= product.getFilename() %>" style="width:100%">
				<h3><%= product.getPname() %></h3>
				<p><%= product.getDescription() %></p>
				<p><%=product.getUnitPrice() %> 원 </p>
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import ="java.util.ArrayList" %>   
 <%@ page import ="dto.Product" %>   
 <%@ page import="dao.ProductRepository" %>
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="./resources/css/bootstrap.min.css"/>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
       <jsp:include page="menu.jsp"></jsp:include>
   <div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품목록</h1>
		</div>
	</div>
	<!--신규로 입력한 데이터도 포함하여 출력  -->
	<%
	  ProductRepository dao = ProductRepository.getInstance();
	  ArrayList<Product> listOfProducts = dao.getAllProducts();
	%>
	
	<div class="container">
	  <div class ="row" align="center">
	    <%
	        for(int i=0; i<listOfProducts.size(); i++){
	        	
	          Product product = listOfProducts.get(i);
	    %>
	        	   
	       <div class="col-md-4">
	       <img src="/img<%=product.getFilename() %>"style="width:100%">
	         <h3><%=product.getPname() %></h3>
	          <p><%=product.getDescription() %> 
	          <p><%=product.getUnitPrice() %> 원
	           <p><a href="./product.jsp?id=<%=product.getProductId() %>"
	                 class="btn btn-secondary" role ="button"> 상세정보</a>
	        </div> 	
	     <% 
	        }
	    %>
	  </div>
	  <hr>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
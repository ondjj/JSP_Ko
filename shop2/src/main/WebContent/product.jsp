<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Product" %> 
<%@ page import="dao.ProductRepository" %>
<%@ page errorPage="exceptionNoProductld.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="./resources/css/bootstrap.min.css"/>
<meta charset="UTF-8">
<title>상품 상세 정보</title>

<script type="text/javascript">
	function addToCart(){
		if(confirm("상품을 장바구니에 추가하시겠습니까?")){
			document.addForm.submit();
		}else{
			document.addForm.reset();
		}
	}

</script>
</head>
<body>
    <jsp:include page="menu.jsp"></jsp:include>
   <div class="jumbotron">
		<div class="container">

			<h1 class="display-3">
			   상품 상세 정보
			</h1>
		</div>

	</div>
	
	<%
	   String id=request.getParameter("id");
	   ProductRepository dao = ProductRepository.getInstance();
	   Product product = dao.getProductById(id);
	%>
	
	
   <div class="container">
   
     <div class="row">
     
       <div class="col-md-6">
       
       <img  src="/img<%=product.getFilename() %>"style="width:100%">
       
	         
       <h3><%=product.getPname()%></h3>
       
        <p><%=product.getDescription() %>
        
        <p>상품코드: <%=product.getProductId() %>
        
        <p> 제조사 : <%=product.getManufactirer() %>
        
        <p>분류 : <%=product.getCategory() %>
        
        <p> 재고 수량 : <%=product.getUnitsInStock()%>개
        
        <h4>제품가격: <%=product.getUnitPrice() %>원</h4>
        
        
        <p> <form name="addForm" action="./addCart.jsp?id=<%=product.getProductId()%>" method="post">
        	<a href="#" class="btn btn-info" onclick="addToCart()"> 상품 주문</a>
        	<a href="./cart.jsp" class="btn btn-warning" onclick="addToCart()"> 장바구니</a>
        	<a href="./products.jsp" class="btn btn-secondary"> 상품목록</a>
        </form>
       
       </div>
     
     </div>
   
	<hr>
   </div>	
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
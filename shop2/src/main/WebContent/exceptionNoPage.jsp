<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet"
	href="./resources/css/bootstrap.min.css"/>
<meta charset="UTF-8">
<title>ErrorPage</title>
</head>
<body>

	<jsp:include page="menu.jsp"></jsp:include>
	<div class="jumbotron">
	<div class="container" align="center">
		<div class="col-md-4 col-md-offset-4">
			<h5 class="form-signin-heading">요청하신 페이지를 찾을 수 없습니다.</h5>
		</div>
	</div>
	</div>
	<div class="container">
		<p><%= request.getRequestURL() %>
		<p><a href="products.jsp" class="btn btn-secondary">상품 목록</a>
	</div>
</body>
</html>
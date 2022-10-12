<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" 
	  href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
	  <title>상품 등록</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
		<div class="jumbotron">
		<div class="container">
			<h1 class="dispaly-3">
				상품등록
			</h1>
		</div>
	</div>
	
<div class="container">
	<form action="" name="newProduct" method="post" class="form-horizontal">
	<div class="form-group row">
		<label class="col-sm-2">상품 코드</label>
		<div class="col-sm-3">
			<input type="text" name="productId" class="form-control">
		</div>
	</div>
	
	<div class="form-group row">
		<label class="col-sm-2">상품명</label>
		<div class="col-sm-3">
			<input type="text" name="name" class="form-control">
		</div>
	</div>
		
	<div class="form-group row">
		<label class="col-sm-2">가격</label>
		<div class="col-sm-3">
			<input type="text" name="unitPrice" class="form-control">
		</div>
	</div>
	
	<div class="form-group row">
		<label class="col-sm-2">상세정보</label>
		<div class="col-sm-5">
			<textarea rows="4" cols="50" class="form-control" name="description"></textarea>
		</div>
	</div>
	
	<div class="form-group row">
		<label class="col-sm-2">제조사</label>
		<div class="col-sm-3">
			<input type="text" name="productCompany" class="form-control">
		</div>
	</div>
	
	<div class="form-group row">
		<label class="col-sm-2">분류</label>
		<div class="col-sm-3">
			<input type="text" name="productCategory" class="form-control">
		</div>
	</div>
	
	<div class="form-group row">
		<label class="col-sm-2">재고수</label>
		<div class="col-sm-3">
			<input type="text" name="productCount" class="form-control">
		</div>
	</div>
	
	<div class="form-group row">
		<label class="col-sm-2">재고수</label>
		<div class="col-sm-3">
			<input type="radio" name="productStatus" value="신규 제품" >신규 제품
			<input type="radio" name="productStatus" value="중고 제품" >중고 제품
			<input type="radio" name="productStatus" value="재생 제품" >재생 제품
		</div>
	</div>
	 
	</form>
</div>
</body>
</html>
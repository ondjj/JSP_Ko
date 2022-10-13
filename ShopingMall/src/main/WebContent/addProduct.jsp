<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
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
	<form action="./processAddProduct.jsp" name="newProduct" method="post" class="form-horizontal" enctype="multipart/form-data">
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
			<input type="text" name="manufacturer" class="form-control">
		</div>
	</div>
	
	<div class="form-group row">
		<label class="col-sm-2">분류</label>
		<div class="col-sm-3">
			<input type="text" name="category" class="form-control">
		</div>
	</div>
	
	<div class="form-group row">
		<label class="col-sm-2">재고수</label>
		<div class="col-sm-3">
			<input type="text" name="unitsInStock" class="form-control">
		</div>
	</div>
	
	<div class="form-group row">
		<label class="col-sm-2">상태</label>
		<div class="col-sm-5">
			<input type="radio" name="condition" value="New" >신규 제품
			<input type="radio" name="condition" value="Old" >중고 제품
			<input type="radio" name="condition" value="Refurbished" >재생 제품
		</div>
	</div>
	
	<div class="form-group row">
		<label class="col-sm-2">이미지</label>
		<div class="col-sm-5">
			<input type="file" name="productImage" class="form-control">
		</div>
	</div>
	
	<div class="form-group row">
		<div class="col-sm-offset-2 col-sm-10">
			<input type="submit" class="btn btn-primary" value="등록">
		</div>
	</div>
	 
	</form>
</div>
</body>
</html>
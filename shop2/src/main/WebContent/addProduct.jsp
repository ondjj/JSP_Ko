<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet"
	href="./resources/css/bootstrap.min.css"/>
	
<script type="text/javascript" src="./resources/js/validation.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <jsp:include page="menu.jsp"></jsp:include>
   <div class="jumbotron">
		<div class="container">

			<h1 class="display-3">
			   상품등록

			</h1>
		</div>

	</div>
	
<div class="container">
	
	<div class="text-right">
		<a href="logout.jsp" class="btn btn-sm btn-success pull-right">logout</a>
	</div>

	<form name="newproduct" action="./processAddProduct.jsp" method="post" class="form-horizontal" enctype="multipart/form-data">
		<div class="form-group row">
			<label class="col-sm-2">상품코드</label>
			<div class="col-sm-3">
				 <input type="text" name="productId" id="productId" class="form -control"><br>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2">상품명</label>
			<div class="col-sm-3">
				 <input type="text" name="name"  id="name" class="form -control"><br>
			</div>
		</div>
      <div class="form-group row">
			<label class="col-sm-2">가격</label>
			<div class="col-sm-3">
				 <input type="text" name="unitPrice"  id="unitPrice" class="form -control"><br>
			</div>
		</div>
 
     <div class= "form-group row">
       <label class="col-sm-2">상세정보</label>
       <div class ="col-sm-3">
          <textarea   name ="description" rows="2" cols="50"></textarea>
           </div>
        </div>
     
     
      <div class= "form-group row">
       <label class="col-sm-2">제조사</label>
       <div class ="col-sm-3">
          <textarea   name ="manufacturer" rows="2" cols="50"></textarea>
           </div>
        </div>
     
   <div class= "form-group row">
       <label class="col-sm-2">분류</label>
       <div class ="col-sm-3">
          <textarea   name ="category" rows="2" cols="50"></textarea>
           </div>
        </div>
 
 
   <div class= "form-group row">
       <label class="col-sm-2">재고 수</label>
       <div class ="col-sm-3">
          <textarea   name ="unitsInStock" id="unitsInStock" rows="2" cols="50"></textarea>
           </div>
        </div>
 
  
  <div class="form-group row">
        <label class="col-sm-2">상태</label>
        <div class = "col-sm-5">
            <input type="radio" name="condition" value="New"> 신규제품
            <input type="radio" name="condition" value="Old"> 중고제품
            <input type="radio" name="condition" value="Refurbished"> 재생제품
        </div>
  </div>
         
     <div class= "form-group row">
       <label class="col-sm-2">이미지</label>
       <div class ="col-sm-5">
       <input type="file" name="productImage" class="form-control">
           </div>
        </div>    
         
 <div class ="form -group row">
    <div class="col-sm-offset-2 col-sm-10">
    <input type="submit" class="btn btn-primary" value="등록" onclick="return CheckAddProduct()">
    </div>
 </div>               
</form>
</div>
</body>
</html>

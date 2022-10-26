function CheckAddProduct() {

   var productId = document.getElementById("productId").value; // 상품코드
   var name = document.getElementById("name").value;
   var unitPrice = document.getElementById("unitPrice").value; // 상품가격
   var unitsInStock = document.getElementById("unitsInStock").value; // 재고수량 


   var Expid = /^[A-Za-z0-9]*$/;
   var ExpName = /^[a-zA-Z0-9가-힣]{4,12}$/;
   var ExpPs = /^[0-9]*$/;
   
   if (!Expid.test(productId)) {
      alert('상품코드는 영어와 숫자만 입력');
      history.go(-1);
   }    
   if (!ExpName.test(name)) {
      alert('상품명은 4~12자리만 입력');
      history.go(-1);
   }
   if (!ExpPs.test(unitPrice) || !ExpPs.test(unitsInStock)) {
      alert('상품가격과 재고수량은 숫자만 입력');
      history.go(-1);
   }
   document.newproduct.submit();
} 
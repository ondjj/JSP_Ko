<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<script type="text/javascript">

/* 	function checkForm(){
		var regExp = /Java/i;		// var 변수 이름 = /정규표현식/
		var str = document.frm.title.value;
		var result = regExp.exec(str); // 정규 표현식의 메소드로 매개변수 값을 추출
		alert(result[0]);	// 추출한 문자열 중 첫번째 데이터를 경고문으로 출력
		
		// 입력란에 Java Server를 입력하였으면 결과는 Java가 출력된다.
	} */
	
	// 이름 입력시 숫자로 시작하지 않는 정규 표현식
	function checkForm(){	
		var name = document.frm.name.value; // form에서 입력한 input 값을 가져옴
		var regExp = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		
		// test 메소드는 정규식에 맞는지 검사하는 메소드
		if(!regExp.test(name)){ 
			alert("이름은 숫자로 시작 할 수 없습니다.");
			return;
		}
	}
</script>
<body>

	<form name="frm">
		<p> 이름 : <input type="text" name="name">
		<input type="submit" value="전송" onclick="checkForm()">	
	</form>
</body>
</html>
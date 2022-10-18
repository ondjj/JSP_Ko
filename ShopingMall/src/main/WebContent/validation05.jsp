<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">

	function checkForm(){
		var regExp = /Java/i;		// var 변수 이름 = /정규표현식/
		var str = document.frm.title.value;
		var result = regExp.exec(str); // 정규 표현식의 메소드로 매개변수 값을 추출
		alert(result[0]);	// 추출한 문자열 중 첫번째 데이터를 경고문으로 출력
	}
	
</script>
<body>

	<form name="frm">
		<p> 제목 : <input type="text" name="title">
		<input type="submit" value="전송" onclick="checkForm()">	
	</form>
</body>
</html>
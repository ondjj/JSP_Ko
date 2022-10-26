<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<script type="text/javascript">

	function checkMember(){
		
		var id = document.Member.id.value;
		var password = document.Member.password.value;
		var name = document.Member.name.value;
		var phone = "010" + "-" + form.phone2.value + "-" + form.phone3.value;
		var eamil = document.Member.email.value;
		
		var idRegExp = /^[a-z|A-Z]/;
		var passRegExp = /^[0-9]*$/;
		var phoneRegExp = /^\d{3}-\d{3,4}-\d{4}$/;
		var nameRegExp = /^[가-힣]*$/;
		var emailRegExp = /^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/;
		
		if(!idRegExp.test(id)){
			alert("아이디는 문자로 시작해주세요.");
			return;
		}
		if(!passRegExp.test(password)){
			alert("비밀번호는 숫자로 입력해주세요.")
			return;
		}
		if(!nameRegExp.test(name)){
			alert("이름은 한글만 입력해주세요.")
			return;
		}
		if(!phoneRegExp.test(phone)){
			alert("핸드폰 번호를 옳바르게 입력해주세요.")
			return;
		}
		if(!emailRegExp.test(email)){
			alert("이메일 형식을 확인해주세요.")
			return;
		}
	}
</script>

<body>
	<h3>회원가입</h3>
	<form action="#" name="Member" method="post">
	
		<p> 아이디 : <input type="text" name="id"> </p>
		<p> 비밀번호 : <input type="password" name="password"> </p>
		<p> 이름 : <input type="text" name="name"> </p>
		<p> 연락처 : 010 -
						<input type="text" maxlength="4" size="4" name="phone2"> -
						<input type="text" maxlength="4" size="4" name="phone3"> </p>
		<p> 이메일 : <input type="text" name="email"> </p>
		<p> <input type="submit" value="가입하기" onclick="checkMember()"> </p>
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="./resources/css/login.css"/>
</head>
<body>

<div id="login">

<form action="loginProcess.jsp" method="post">

	<section id="mix">
		<p>아이디 <input type="text" name="id" placeholder="아이디"></p> 	
		<p>비밀번호 <input type="text" name="pass" placeholder="비밀번호"> </p> 
	</section>
	
	<section id="loginButton">
		<p><input type="submit" value="로그인"></p>
	</section>
	


</form>
</div>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:useBean id="login" class="test.LoginTest" scope ="page"></jsp:useBean>
<body>
<div align="center">
<h1>로그인 상세</h1>

<b>아이디 : <%= login.getId() %></b>
<b>비밀번호 : <%= login.getPass() %></b>
</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<form action="sessionProcess.jsp" method="post">
	<table>
	<tr>
		<td>아이디</td>
		<td><input type="text" name="id"></td>
	</tr>
		<tr>
		<td>비밀번호</td>
		<td><input type="password" name="pass"></td>
	</tr>
	<tr>
		<td colspan="2">
		<input type="submit" value ="로그인"/>
	</tr>
	</table>
	</form>
</div>

</body>
</html>
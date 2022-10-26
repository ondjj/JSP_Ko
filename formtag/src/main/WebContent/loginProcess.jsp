<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
%>
<div align="center">
<h3>아이디 : <%= id %></h3> <br>
<h3>비밀번호 : <%= pass %></h3>
</div>

</body>
</html>
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
		String id = (String)session.getAttribute("id");
		String pass = (String)session.getAttribute("pass");
		String seId = session.getId();
		session.setMaxInactiveInterval(5);
	%>
	
	<%= id %>
	<%= pass %> <br>
	<%= seId %>
</body>
</html>
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
	String admin = request.getParameter("id");
	String pass = request.getParameter("pass");
%>

<% if(admin.equals("admin") && pass.equals("1234")) { %>

	<h1> 로그인 성공 !</h1>
<%}else{ %>
	<script>
	alert("로그인 실패");
    location.href="welcome.jsp";
	</script>
<% } %>

</body>
</html>
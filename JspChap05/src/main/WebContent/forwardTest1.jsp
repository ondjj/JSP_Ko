<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	request.setCharacterEncoding("UTF-8");
%>
<body>
	<jsp:forward page='<%= request.getParameter("forwardPage") %>'>
		<jsp:param name="tel" value="010-1234-5678"/>
	</jsp:forward>
</body>
</html>
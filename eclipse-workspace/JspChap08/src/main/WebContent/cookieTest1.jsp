<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie cookie = new Cookie("name", "Kimgildong");
	cookie.setMaxAge(600);
	response.addCookie(cookie);
%>
<!-- 쿠키 이름 설정, 10분간 쿠키값 유지  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<p><%= cookie.getName() %>
	<p><%= cookie.getValue() %>
	<p><%= cookie.getMaxAge() %>
	<a href="cookieTest2.jsp">쿠키 값 불러오기</a>

</body>
</html>
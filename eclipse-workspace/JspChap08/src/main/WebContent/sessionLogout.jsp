<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	session.removeAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>로그아웃 되었습니다.</h3>
	<h3>로그인 아이디 : <%= (String) session.getAttribute("id") %></h3>
	<h3>로그인 비밀번호 : <%= (String) session.getAttribute("pass") %></h3>
</body>
</html>
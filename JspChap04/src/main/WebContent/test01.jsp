<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	<h1> 현재 시간은 <%= new SimpleDateFormat("hh:mm:ss").format(new Date()) %>입니다.</h1>
	<%@ include file="footer.jsp" %>
</body>
</html>
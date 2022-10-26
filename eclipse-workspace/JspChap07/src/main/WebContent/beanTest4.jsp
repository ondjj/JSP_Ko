<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:useBean id="beanTest" class="test.BeanTest2" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="beanTest"/>
<body>
	<h1>전체 속성값 출력</h1>
	<h3><%= beanTest.getName() %></h3>
	<h3><%= beanTest.getAddr() %></h3>
	<h3><%= beanTest.getEmail() %></h3>
	<h3><%= beanTest.getBirthday() %></h3>
</body>
</html>
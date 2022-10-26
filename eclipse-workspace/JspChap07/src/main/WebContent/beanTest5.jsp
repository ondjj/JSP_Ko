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
<jsp:useBean id="beanTest" class="test.BeanTest" scope="page"></jsp:useBean>
<body>
	<h1>자바빈 setproperty 사용 예제</h1>
	<h3><%= beanTest.getName() %></h3>
	<h3><jsp:getProperty name="beanTest" property="name"/></h3>
</body>
</html>
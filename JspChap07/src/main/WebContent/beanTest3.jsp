<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<jsp:useBean id="beanTest" class="test.BeanTest" scope="page"></jsp:useBean>
<jsp:setProperty property="name" name="beanTest" param="name"/>
<body>
	<b>자바빈 사용 예제</b>
	<h3><%= beanTest.getName() %></h3>

</body>
</html>
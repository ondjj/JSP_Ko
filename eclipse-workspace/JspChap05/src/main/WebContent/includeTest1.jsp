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
%>
	<h2>인쿠르드 액션태그</h2>
	<jsp:include page = "includeTest2.jsp">
		<jsp:param name="name" value="홍길동"/>
	</jsp:include>

</body>
</html>
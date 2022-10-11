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
	String name;
	if(session.getAttribute("name") != null){
		name = (String)session.getAttribute("name");
	}else{
		name = "NONE";
	}
	String id = "admin";
	String pass = "1234";
%>

<h2>세션 테스트</h2>
<input type="button" onclick="location.href='sessionSet.jsp'" value="세션 값 저장">
<input type="button" onclick="location.href='sessionDel.jsp'" value="세션 값 삭제">
<input type="button" onclick="location.href='sessionInvalidate.jsp'" value="세션 값 초기화">
<h3><%=name%></h3>
<h3><%=id%></h3>
<h3><%=pass%></h3>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String subject = request.getParameter("subject");
	String fileName1 = request.getParameter("fileName1");
	String fileName2 = request.getParameter("fileName2");
	String origfileName1 = request.getParameter("origfileName1");
	String origfileName2 = request.getParameter("origfileName2");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

올린 사람 : <%= name %> <br>
제목 : <%= subject %> <br>
파일명1 : <a href="file_down.jsp?file_name=<%= fileName1 %>">
		<%= origfileName1 %></a> <br>
파일명2 : <a href="file_down.jsp?file_name=<%= fileName2 %>">
		<%= origfileName2 %></a> <br>

</body>
</html>
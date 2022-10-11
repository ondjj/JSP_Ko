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
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	
	if(id.equals("admin") && pass.equals("1234")){
		session.setAttribute("id", id);
		session.setAttribute("pass", pass);
		out.println("로그인 성공");
	}else{
		out.println("로그인 실패");
	}
%>
</body>
</html>
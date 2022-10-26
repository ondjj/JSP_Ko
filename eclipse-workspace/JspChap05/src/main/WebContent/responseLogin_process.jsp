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
	
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	
	if(id.equals("java") && pass.equals("1234")){
		response.sendRedirect("successLogin.jsp");
	}else{
		response.sendRedirect("failLogin.jsp");
	}
%>

</body>
</html>
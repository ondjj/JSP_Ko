<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	
	<%
		String id = request.getParameter("id");
		session.setAttribute("id", id);
		String pass = request.getParameter("password");
		session.setAttribute("pass", pass);
		String name = request.getParameter("name");
		session.setAttribute("name", name);
		String tel = request.getParameter("tel");
		session.setAttribute("tel", tel);
		
		response.sendRedirect("Session01_remove.jsp");
	%>
	<%-- <%
		 id = (String)session.getAttribute("id");	
		 pass = (String)session.getAttribute("pass");	
	%> --%>
<body>


</body>
</html>
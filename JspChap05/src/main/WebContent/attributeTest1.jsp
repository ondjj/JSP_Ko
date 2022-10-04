<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String id = request.getParameter("id");
	if( name.equals("") || id.equals("")){

		response.sendRedirect("attributeTest_Form.jsp");
	}else{
		application.setAttribute("name", name);
		application.setAttribute("id", id);
	}
	
%>
<body>



	이름 : <%= name %> <br>
	아이디 : <%= id %>

</body>
</html>
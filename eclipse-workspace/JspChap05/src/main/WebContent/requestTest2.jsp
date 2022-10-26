<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	h2 {text-align:center ;}
	div {
		margin : auto;
		width : 500px;
		border : 1px solid black;
		text-aling:center;
	}
</style>
</head>
<%
request.setCharacterEncoding("UTF-8");
response.setContentType("text/html; charset=UTF-8");

String name = request.getParameter("name");
String tel = request.getParameter("tel");
String email = request.getParameter("email");
String[] info = request.getParameterValues("info");
%>
<body>
<div>
	
	<p>이름 :  <%= name %> </p>
	<p>전화번호 : <%= tel %> </p>
	<p>이메일 : <%= email %> </p>
	<p> 취미 : 
	<% for(int i=0; i<info.length; i++){
			out.println(info[i]); }
	%>
	</p>
	
	
	

</div>


</body>
</html>
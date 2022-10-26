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
	String pass = request.getParameter("password");
	
	if(id.equals("admin") && pass.equals("1234")){
		Cookie cookie_id = new Cookie("id", id);
		Cookie cookie_pass = new Cookie("pass", pass);
		
		response.addCookie(cookie_id);
		response.addCookie(cookie_pass);
		out.println("쿠키 생성 완료");
	}else{
		out.println("쿠키 생성 실패");

	}
%>
<body>

</body>
</html>
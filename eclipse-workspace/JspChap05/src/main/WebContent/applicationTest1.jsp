<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>애플리케이션 테스트</h1>

	JSP 버전 : <%= application.getMajorVersion() %>.<%= application.getMinorVersion() %> <br>
	컨테이너 정보 : <%= application.getServerInfo() %>
		
		

</body>
</html>
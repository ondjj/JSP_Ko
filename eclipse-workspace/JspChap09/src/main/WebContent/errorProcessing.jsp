<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
	
	<table>
		<h3>
			발생한 에러 종류 : <%= exception.getClass().getName() %>
		</h3>
	</table>
	</div>
</body>
</html>
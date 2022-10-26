<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Locale" %>

<%
	Locale locale = request.getLocale();
	String displayLanguage = locale.getDisplayLanguage();
	String language = locale.getLanguage();
	String displayCountry = locale.getDisplayCountry();
	String country = locale.getCountry();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	로케일	:	<%= locale %> <br>
	로케일 언어 : <%=  displayLanguage %> <br>
	국가 코드 : <%=  country%> <br>
	국가 : <%= displayCountry %>
	

</body>
</html>
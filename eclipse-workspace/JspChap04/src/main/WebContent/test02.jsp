<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%! int i = 2;
	int j = 3;
	
	String makeItUpper(String str){
		return str.toUpperCase();
	}
	
%>
<body>
	page Sum is:
	<%
		out.println(i +"+" + j +"="+ (i+j));
	%>
	<br>
	<br>
	<%
		out.println(makeItUpper("Hello World"));
	%>
	<br>
	<%
		for(int i=1; i<11; i++){
			if(i % 2 == 0){
				out.println(i+"<br>");
			}
		}
	%>

</body>
</html>
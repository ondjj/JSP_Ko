<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		Calendar c = Calendar.getInstance();
		int hour = c.get(Calendar.HOUR_OF_DAY);
		int minute = c.get(Calendar.MINUTE);
		int second = c.get(Calendar.SECOND);
 		String onoff = "";
		
		if(hour >= 12){
			onoff = "지금은 오후입니다.";
		}else{
			onoff = "지금은 오전입니다.";
		} 
		
		int a = 10;
		int b = 20;
		int d = 30;
	%>
	
	<h1>현재 시간은 <%= hour %>시 <%= minute %>분 <%= second %>초 입니다.</h1>
	<h2><%=onoff %></h2>
	
	<%
		if(hour < 12){
			out.println("<h2>"+ "지금은 오전입니다." + "</h2>");
		}else{
			out.println("<h2>"+ "지금은 오후입니다." + "</h2>");
		}
	%>
	
	
	<%
		if(hour < 12){ %>
			<h2>지금은 오전입니다.</h2>
	<%  } else { %>
			<h2>지금은 오후입니다.</h2>
			<%
		}
	%>
	
	<p>
		<%= new java.util.Date() %>
	</p>
	
	<h2>세 값의 결과는 <%= a + b + d %>	 입니다. </h2>

</body>
</html>
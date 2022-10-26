<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	String email = (String)session.getAttribute("email");
	String address = (String)session.getAttribute("address");
	String tel = (String)session.getAttribute("tel");
	String name = (String)application.getAttribute("name");
	String id = (String)application.getAttribute("id");
%>
<body>
<div align="center">
<form action="attributeTest_Form.jsp" method="post">
	
		<table border="1">
			<tr>
				<td colspan="2">
					세션 영역에 저장된 내용들
				</td>
			</tr>
			<tr>
				<td>
					email
				</td>
				<td>
					<%= email %>
				</td>
			</tr>
			<tr>
				<td>
					tel
				</td>
				<td>
					<%= tel %>
				</td>
			</tr>
			<tr>
				<td>
					address
				</td>
				<td>
					<%= address %>
				</td>
			</tr>
			</table>
			<br>
			<table border="1">
			<tr>
				<td colspan="2"> 어플리케이션 영역에 저장된 내용들</td>
			</tr>
			<tr>
				<td>
					name
				</td>
				<td>
					<%= name %>
				</td>
			</tr>
			<tr>
				<td>
					id
				</td>
				<td>
					<%= id %>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="작성하러가기"/>
				</td>
			</tr>
			</table>
	</form>
</div>

</body>
</html>
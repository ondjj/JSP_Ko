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
	if( name.equals("") || id.equals("")){ %>
		<jsp:forward page="attributeTest_Form.jsp"></jsp:forward>
<% }else{
		application.setAttribute("name", name);
		application.setAttribute("id", id);
	}
%>
<body>
<div align="center">
<table border="1">
<tr>
	<td colspan="2"> 애플리케이션 저장 객체 </td>
</tr>
<tr>
	<td> 이름 : <%= name %></td> 
	<td> 아이디 : <%= id %></td>
</tr>
</table>
	<form action="attributeTest2.jsp" method="post">
		<table border="1">
			<tr>
				<td colspan="2">
					세션에 저장할 내용들
				</td>
			</tr>
			<tr>
				<td>
					이메일 주소
				</td>
				<td>
					<input type="text" name="email">
				</td>
			</tr>
			<tr>
				<td>
					집 주소
				</td>
				<td>
					<input type="text" name="address">
				</td>
			</tr>
			<tr>
				<td>
					전화번호
				</td>
				<td>
					<input type="text" name="tel">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="전송">
				</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>
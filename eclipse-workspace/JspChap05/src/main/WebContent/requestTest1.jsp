<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	h1 {text-align:center;}
	table {
		margin : auto;
		width : 400px;
		border : 1px solid red;
	}
</style>


</head>
<body>

	<table>
			<tr>
				<td>
					이름
				</td>
				<td>
					<%= request.getParameter("name") %>
				</td>
			</tr>
			<tr>
				<td>
					성별
				</td>
				<td>
					<% 
						if(request.getParameter("gender").equals("male")) { %>
							남자
					<% } else { %> 
						여자
					<% } %>
				</td>
			</tr>
			<tr>
				<td>
					취미
				</td>
				<td>
					<%
						String[] hobby = request.getParameterValues("hobby"); 
							for(int i=0; i<hobby.length; i++){
								out.println(hobby[i]);
							}
					%>
				</td>
			</tr>
		</table>

</body>
</html>
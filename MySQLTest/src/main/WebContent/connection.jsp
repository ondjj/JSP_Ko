<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Connection conn = null;
		
	
		try{
			
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test01", "root", "1234");
			out.println("연결 성공!");
			
		}catch(Exception e){
			out.println("연결이 실패했습니다.");
		}finally {
			if(conn != null){
				conn.close();
			}
		}
	
	%>
</body>
</html>
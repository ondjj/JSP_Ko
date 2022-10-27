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
<%@ include file="dbConn.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("password");
	String name = request.getParameter("name");
	
	Statement stmt = null;
	
	try{
		
		stmt = conn.createStatement();
		String sql = "update member set name = '홍길동' where name = '전창준'";
		String sql2 = "delete from member where name = '홍길동'";
		/* stmt.executeUpdate("insert into member values('" + id + "', '"+ pw + "','" + name + "')"); */
		
		
		stmt.executeUpdate(sql2);
		
		
		out.println("연결 성공");
	}catch(SQLException e){
		e.printStackTrace();
		out.println("연결 실패");
	}finally{
		if(stmt != null){
			stmt.close();
		}
		if(conn != null){
			conn.close();
		}
	}
%>

</body>
</html>
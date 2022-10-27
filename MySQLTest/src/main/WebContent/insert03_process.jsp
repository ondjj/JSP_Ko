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
	
	PreparedStatement pstmt = null;
	
	try{
		/* String sql = "update member set name = '홍길동' where name = '전창준'"; */
		/* String sql2 = "delete from member where name = '홍길동'"; */
		/* stmt.executeUpdate("insert into member values('" + id + "', '"+ pw + "','" + name + "')"); */
		String sql ="insert into member(id,passwd,name) values(?,?,?)";
		String sql2 = "update member set name=? where id = ?";
		String sql3 = "delete from member where id = ?";
		pstmt = conn.prepareStatement(sql3);
		pstmt.setString(1, "odd");
		/* pstmt.setString(2, "odd"); */
/* 		pstmt.setString(3, name); */
/* 		pstmt = conn.prepareStatement(sql);	 */
		
		pstmt.executeUpdate();
		
		out.println("연결 성공");
		
	}catch(SQLException e){
		e.printStackTrace();
		out.println("연결 실패");
	}finally{
		if(pstmt != null){
			pstmt.close();
		}
		if(conn != null){
			conn.close();
		}
	}
%>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table {
		width:30px;
		border : 1px solid black;
		}
	tr,td {
		border : 1px solid black;
		text-align : center;
		}
</style>
</head>
<body>
<%@ include file="dbConn.jsp" %>
	<table>
		<tr>
			<td>아이디</td>
			<td>비밀번호</td>
			<td>이름</td>
		</tr>
		<%
			ResultSet rs = null;
			PreparedStatement pstmt = null;
			
			try{
				String sql = "select * from member";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				
				while(rs.next()){
					String id = rs.getString("id");
					String passwd = rs.getString("passwd");
					String name = rs.getString("name");
		%>
		<tr>
			<td><%= id %></td>
			<td><%= passwd %></td>
			<td><%= name %></td>
		</tr>
		<%
				}
			}catch(SQLException e){
				e.printStackTrace();
				out.println("연결 실패");
			}finally{
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}
		%>
	</table>
</body>
</html>
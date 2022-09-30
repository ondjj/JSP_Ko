<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% session.setMaxInactiveInterval(10); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>세션 테스트</h2>
새로운 세션인가요? <%=session.isNew()%> <br>
생성 시간 : <%= session.getCreationTime() %> <br>
최종 접속 시간 : <%= session.getLastAccessedTime() %> <br>
세션 ID : <%= session.getId() %> <br>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" 
	  href="./resources/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>WelCome</title>
</head>
<body>
<%-- <%@ include file="menu.jsp" %> --%>
<jsp:include page="menu.jsp">
	<jsp:param value="menu.jsp" name="menu"/>
</jsp:include>

	<%! String greeting = "쇼핑몰";
		String tagline = "웹 쇼핑몰에 오신걸 환영합니다.";
	%>
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="dispaly-4">
				<%= greeting %>
			</h1>
			
			<a href="admin_login.jsp" class="btn btn-secondary" role="button">관리자 로그인</a>
		</div>
	</div>
	
	<main role="main">
		<div class="container">
			<div class="text-center">
				<h3>
					<%= tagline %>
				</h3>
				<%
					response.setIntHeader("Refresh", 5);
					Date day = new java.util.Date();
					int hour = day.getHours();
					int minute = day.getMinutes();
					int second = day.getSeconds();
					
					String am_pm = "";
					
					if(hour/12 == 0 ){
						am_pm = "am";
					}else{
						am_pm = "pm";
					}
					
					out.println("지금은 "+am_pm+" "+(hour-12)+"시 "+minute+"분 "+second+"초" + "입니다.");
				%>
				
			</div>
		</div>
	</main>
	<%-- <%@ include file="footer.jsp" %> --%>
	<jsp:include page="footer.jsp">
		<jsp:param value="footer.jsp" name="footer"/>
	</jsp:include>
</body>
</html>
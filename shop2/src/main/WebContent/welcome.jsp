<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>
   
   <jsp:include page="menu.jsp"></jsp:include>
   
   <% String greeting = "쇼핑몰";
   String tagline = "웹 쇼핑몰에 오신걸 환영합니다";%>
   <div class="jumbotron">
      <div class="container">
         <h1 class="display-4">
            <%= greeting %>
         </h1>
         <!-- <a href="./login.jsp">관리자 로그인</a> -->
      </div>
   </div>
   <main role="main">
      <div class="container">
         <div class="text-center">
            <h3>
               <%= tagline %>
            </h3>
            <% 
            response.setIntHeader("Refresh", 1);
            Date date = new Date();
            int hour = date.getHours();
            int minute = date.getMinutes();
            int second = date.getSeconds();
            String am_pm;
            if(hour/12==0){
               am_pm = "am";
            }else{
               am_pm = "pm";
               hour -= 12;
            }
            String CT = "현재 시각은 "+am_pm + hour +"시 "+  minute + "분 " + second + "초 입니다.";
            out.println(CT);
            
            %>
            
         </div>
         <hr>
      </div>
   </main>
   
   <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
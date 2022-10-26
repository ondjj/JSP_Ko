<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

	String uploadPath = request.getRealPath("c://upload");

	int size = 10 * 1024 * 1024;
	String name = "";
	String subject = "";
	String fileName1 = "";
	String fileName2 = "";
	String origfileName1 = "";
	String origfileName2 = "";
	
	try{
		
		MultipartRequest multi = new MultipartRequest(request,
										uploadPath,
										size,
										"UTF-8",
										new DefaultFileRenamePolicy());
		
		name = multi.getParameter("name");
		subject = multi.getParameter("subject");
		
		Enumeration files = multi.getFileNames();
		
		String file1 = (String)files.nextElement();
		fileName1 = multi.getFilesystemName(file1);
		origfileName1 = multi.getOriginalFileName(file1);
		
		String file2 = (String)files.nextElement();
		fileName2 = multi.getFilesystemName(file2);
		origfileName2 = multi.getOriginalFileName(file2);
		
	}catch(Exception e){
		e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="filecheck.jsp" method="post" name="filecheck">
<input type="hidden" name="name" value="<%= name %>">
<input type="hidden" name="subject" value="<%= subject %>">
<input type="hidden" name="fileName1" value="<%= fileName1 %>">
<input type="hidden" name="fileName2" value="<%= fileName2 %>">
<input type="hidden" name="origfileName1" value="<%= origfileName1 %>">
<input type="hidden" name="origfileName2" value="<%= origfileName2 %>">
</form>

<a href="#" onclick="javascript:filecheck.submit()">업로드 확인 및 다운로드 페이지 이동</a>

</body>
</html>
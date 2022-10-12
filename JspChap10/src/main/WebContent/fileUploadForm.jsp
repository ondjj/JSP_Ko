<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	#uploadFormArea{
		margin : auto;
		width : 350px;
		border : 1px solid black;
		align : center;
	}
	.td_title{
		font-size : xx-large;
		font-align : center;
	}
</style>
</head>
<body>
<section id = "uploadFormArea">
<form action="fileUpload.jsp" method="post" enctype="multipart/form-data">
	<table>
		<tr>
			<td colspan="2" class=  "td_title">파일 업로드 폼</td>
		</tr>
		<tr>
			<td><label for = "name">올린 사람 : </label></td><td><input type="text" name="user"></td>
		</tr>
		<tr>
			<td><label for = "subject">제목 : </label></td><td><input type="text" name="subject"></td>
		</tr>
		<tr>
			<td><label for = "fileName1">파일명1 : </label></td><td><input type="file" name="fileName1"></td>
		</tr>
				<tr>
			<td><label for = "fileName2">파일명2 : </label></td><td><input type="file" name="fileName2"></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="전송"></td>
		</tr>
	
	</table>


</form>

</section>
</body>
</html>
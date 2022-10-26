<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#loginArea{
		width : 400px;
		margin : auto;
		border : 1px solid black;
	}
	
	table {
		margin : auto;
	}
	
	td {
		text-align : center;
	}

</style>

</head>
<body>
	<section id="loginArea">
		<form action="sessionLogin2.jsp" method="post">
			<table>
				<tr>
					<td>아이디 : <input type="text" name="id"></td>
				</tr>
				<tr>
					<td>비밀번호 : <input type="password" name="pass"></td>
				</tr>
				<tr>
					<td colspan="2">
					<input type="submit" value="로그인">
					<input type="reset" value="취소">
					</td>
				</tr>
			</table>
		</form>
	</section>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#forArea {
		margin : auto;
		width : 400px;
		border : 1px solid gray;
		text-align : center;
	}
	
	h1 {
		text-align : center;
	}
	
	table {
		width : 380px;
		margin : auto;
		text-align : center;
	}
</style>
</head>
<body>
	<section id="forArea">
		<h1>회원정보입력</h1>
		<form action="joinChk.jsp" method="post">
			<table>
				<tr>
					<td>아이디:</td>
					<td><input type="text" name="id"/></td>
				</tr>
				<tr>
					<td>비밀번호:</td>
					<td><input type="password" name="pass"/></td>
				</tr>
				<tr>
					<td>이름:</td>
					<td><input type="text" name="name"/></td>
				</tr>
				<tr>
					<td>성별:</td>
					<td><input type="radio" name= "sex" value="1" checked/>남</td>
					<td><input type="radio" name= "sex" value="2" />여</td>
				</tr>
				<tr>
					<td>나이:</td>
					<td><input type="text" name="age"/></td>
				</tr>
				<tr>
					<td>이메일 주소:</td>
					<td><input type="text" name="email"/></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="가입"/>
									<input type="reset" value="다시작성"/>
					</td>
				</tr>
			</table>
		</form>
	</section>


</body>
</html>
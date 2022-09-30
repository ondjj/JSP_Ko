<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

	h2 {text-align:center ;}
	table {
		margin : auto;
		width : 500px;
		border : 1px solid black;
	}
</style>
</head>
<body>
<h2> 회원 가입 양식 </h2>
<form action="requestTest2.jsp" method="post">
	<table>
		<tr>
			<td><label for="name">이름</label></td>
			<td><input type="text" size=10 name="name" id="name"></td>
		</tr>
		<tr>
			<td><label for="tel">전화번호</label></td>
			<td><input type="tel" name="tel" id="tel"></td>
		</tr>
		<tr>
			<td><label for="email">이메일</label></td>
			<td><input type="email" name="email" id="email"></td>
		</tr>
		<tr>
			<td><label for="info">관심분야</label></td>
			<td>
			<input type="checkbox" name="info" id="info" value="운동">운동
			<input type="checkbox" name="info" id="info" value="독서">독서
			<input type="checkbox" name="info" id="info" value="게임">게임
			</td>
		</tr>
		<tr>
			<td>
				<input type="submit" value="입력 완료">
				<input type="reset" value="취소">
			</td>
		</tr>
	</table>

</form>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
	<form action="logout.do" method="post">
		이메일<input type="email" id="memEm" name="memEm" placeholder="E-mail" required>
<br>
		비밀번호<input type="password"
			class="pw_check" id="memPw" name="memPw" placeholder="PASSWORD" required>
<br>
	<button id="logout" type="button" class="btn btn-primary">로그아웃</button>
	</form>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script type="text/javascript">
	
	
	
	</script>
	
</body>
</html>
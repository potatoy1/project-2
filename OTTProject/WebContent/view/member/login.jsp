<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<form action="login.do" method="post">
		이메일<input type="email" id="memEm" name="memEm" placeholder="E-mail" required>
<br>
		비밀번호<input type="password"
			class="pw_check" id="memPw" name="memPw" placeholder="PASSWORD" required>
<br>
	<button id="login" type="button" class="btn btn-primary">로그인</button>
	</form>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script type="text/javascript">
	
	$("#login").click(function(e) {
		
		e.preventDefault();
		
		let memEm = $("#memEm").val();
		let memPw = $("#memPw").val();

		$.ajax({
			url : "login.do",
			type : "post",
			data : "memEm="+memEm + "&memPw="+memPw,
			dataType : "json",
			success : function(resp) {
				
				if (resp.result != 'ok') {
					alert("아이디나 비밀번호를 다시 입력해주세요.");
				} else {
					alert("D지니 +에 오신것을 환영합니다!")
				}
			},
			error : function(request, status, error) {
				console.log("code: " + request.status)
				console.log("message: " + request.responseText)
				console.log("error: " + error);
			}
		})
	})
	
	</script>
	
</body>
</html>
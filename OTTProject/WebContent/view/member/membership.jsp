<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>회원가입 화면</title>

</head>

<body>
	<h3>회원가입</h3>
	<form action="membership.do" method="post">

		이메일<input type="email" id="memEm" name="memEm" placeholder="E-mail" 
			required pattern="^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$">
	<button id="emailCheck" onclick="emailSend()">인증번호 받기</button>
				<font id="email_font" size="2"></font>
<br>
		인증번호<input type="text"
				class="num_check" id="memNum" name="memNum" placeholder="인증번호를 입력하세요"
				required>
	<button id="numCheck" onclick="emailCertification()">인증하기</button>
<br>
		비밀번호<input type="password"
				class="pw_check" id="memPw" name="memPw" placeholder="PASSWORD"
				required pattern="^[A-Za-z0-9]{4,12}$">
<br>
		이름<input type="text"
				class="name_check" id="memName" name="memName" placeholder="Name"
				required pattern="^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$">
<br>
		전화번호<input type="tel"
				class="tel_check" id="memTel" name="memTel" placeholder="-뺴고 입력하시오" 
				required pattern="^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$">
<br>
		생년월일<input type="date"
				class="bir_check" id="memBir" name="memBir" required>
<br>
		국적<input type="text"
				class="nal_check" id="memNal" name="memNal" required>
<br>
			<button type="submit" class="btn btn-primary">회원가입</button>
	</form>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script type="text/javascript">
		$("#memEm").keyup(function() {
			let memEm = $("#memEm").val();

			$.ajax({
				url : "duplicateEmail.do",
				type : "post",
				data : {memEm : memEm},
				dataType : "json",
				success : function(result) {
					if (result >= 1) {
						$("#email_font").html("사용 할 수 없는 이메일입니다.");
						$("#email_font").attr("color","red");
					} else {
						$("#email_font").html("사용 할 수 있는 이메일입니다.");
						$("#email_font").attr("color","green");
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

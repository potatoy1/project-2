<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호찾기</title>
</head>
<body>
	<form action="passwordfind.do" method="post">
		이메일<input type="email" id="memEm" name="memEm" placeholder="E-mail" required>
<br>
	<button id="pwfind" type="button" class="btn btn-primary">비밀번호 찾기</button>
	</form>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script type="text/javascript">
	
	$("#pwfind").click(function (e) {

        e.preventDefault();

        let memEm = $("#memEm").val();
        let arr = new Uint32Array(1);
        let crypto = window.crypto || window.webkitCrypto || window.mozCrypto || window.oCrypto || window.msCrypto;
        window.crypto.getRandomValues(arr);
        let sRanNum = arr[0];

        $.ajax({
           url: "passwordfind.do",
           type: "post",
           data: {"memEm": memEm, "emailNum": sRanNum},
           dataType: "text",
           success: function (result) {

              if (result != 'OK') {
                 alert("이메일 전송에 오류가 생겼습니다. 관리자에게 문의해주세요.");
                 window.location.href = "http://localhost:8089/OTTProject/member/passwordfind.do"
              } else {
                 alert("임시번호 전송이 완료되었습니다.")
                 window.location.href = "http://localhost:8089/OTTProject/member/login.do"

              }
           },
           error: function (request, status, error) {
              console.log("code: " + request.status)
              console.log("message: " + request.responseText)
              console.log("error: " + error);
           }
        })
     })
	
	
	
	</script>
	
</body>
</html>
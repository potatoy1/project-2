<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원가입 화면</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- 부가적인 테마 -->
 <style>
    body {
      min-height: 100vh;

      background: -webkit-gradient(linear, left bottom, right top, from(#92b5db), to(#1d466c));
      background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
    }

    .input-form {
      max-width: 680px;

      margin-top: 80px;
      padding: 32px;

      background: #fff;
      -webkit-border-radius: 10px;
      -moz-border-radius: 10px;
      border-radius: 10px;
      -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
    }
  </style>
</head>

<body>
<div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <h4 class="mb-3">D++ 회원가입</h4>
        <form id="guanwu" action="membership.do" method="post" onsubmit="return f_memShip()">
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="memName">이름</label>
              <input type="text" class="form-control" id="memName" name="memName" placeholder="Name" value="" required pattern="^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$">
              
              <div class="invalid-feedback">
              </div>
            </div>
            <div class="col-md-6 mb-3">
              <label for="memTel">전화번호</label>
              <input type="text" class="form-control" id="memTel" name="memTel" placeholder="-빼고 입력하시오" value="" required pattern="^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$">
              <div class="invalid-feedback">
              </div>
            </div>
          </div>

          <div class="mb-3">
            <label for="memEm">이메일</label>
            <input type="email" class="form-control" id="memEm" name="memEm" placeholder="you@example.com" required pattern="^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$">
            <input type="button" value="인증번호발송" id="eNum">
            <div class="invalid-feedback">
              이메일을 입력해주세요.
            </div>
          </div>

          <div class="mb-3">
            <label for="codeNum">인증번호</label>
            <input type="text" class="form-control" id="codeNum" name="codeNum" placeholder="인증번호를 입력하세요" required>
            <input id="cerCfm" type="submit" value="인증하기">
            <div class="invalid-feedback">
              인증번호를 입력해주세요.
            </div>
          </div>

          <div class="mb-3">
            <label for="memBir">생년월일</label>
            <input type="date" class="form-control" id="memBir" name="memBir" required>
          </div>
          <div class="invalid-feedback">
             생년월일를 입력해주세요.
            </div>
            
            
          <div class="mb-3">
            <label for="memNal">국적</label>
            <input type="text" class="form-control" id="memNal" name="memNal" required>
          </div>
          <div class="invalid-feedback">
             국적를 입력해주세요.
            </div>
            
            
          <div class="mb-3">
            <label for="memPw">비밀번호</label>
            <input type="password" class="form-control" id="memPw" name="memPw" placeholder="Passwrod" required pattern="^[A-Za-z0-9]{4,12}$">
          </div>
          <div class="invalid-feedback">
             비밀번호를 입력해주세요.
            </div>

          <hr class="mb-4">
          <div class="custom-control custom-checkbox">
            <input type="checkbox" class="custom-control-input" id="aggrement" required>
            <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
          </div>
          <div class="mb-4"></div>
          <button class="btn btn-primary btn-lg btn-block" type="submit">가입 완료</button>
          <button type="submit" class="btn btn-warning btn-lg btn-block" >가입취소</button>
        </form>
      </div>
    </div>
    <footer class="my-3 text-center text-small">
      <p class="mb-1">&copy; 2022 YD</p>
    </footer>
  </div>
  
			
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script type="text/javascript">
	 $("#memEm").change(function () {
         let memEm = $("#memEm").val();

         $.ajax({
             url: "duplicateEmail.do",
             type: "post",
             data: { memEm: memEm },
             dataType: "json",
             success: function (result) {
                 if (result >= 1) {
                     $("#email_font").html("사용 할 수 없는 이메일입니다.");
                     $("#email_font").attr("color", "red");
                 } else {
                     $("#email_font").html("사용 할 수 있는 이메일입니다.");
                     $("#email_font").attr("color", "green");
                     
                    let arr = new Uint32Array(1);
     				let crypto = window.crypto || window.webkitCrypto || window.mozCrypto || window.oCrypto || window.msCrypto;
     				window.crypto.getRandomValues(arr);
     				let sRanNum = arr[0];
      
      
     				$("#eNum").click(function cerCfm() {
                    eMailCheck(sRanNum);
            		 });
                 }
             },
             error: function (request, status, error) {
                 console.log("code: " + request.status)
                 console.log("message: " + request.responseText)
                 console.log("error: " + error);
             }
         });
     });
	 
	 function eMailCheck(sRanNum) {
		   console.log("뜨냐?")
		   console.log(sRanNum);
		   $.ajax({
			  type:"post",
			  url:"eMailCheck.do",
			  data:{   "emailNum": sRanNum,
					"memEm":   $("#memEm").val()
			  },
			  dataType:"text",
			  success:function(eqNum){
				 if(eqNum == "OK"){
					alert("인증번호 전송이 완료되었습니다.");
					let cerCfm = $("#cerCfm");
					cerCfm.click(function cerLast() {
					   if(sRanNum == $("#codeNum").val()){
						  alert("인증번호가 일치합니다.");
					   }else {
						  console.log($("#codeNum").val());
						  alert("인증번호를 다시 확인해주세요.")
					   }
					})
				 }else{
					alert("이메일 전송에 오류가 생겼습니다. 관리자에게 문의해주세요.");
				 }
				 //cerConfirm(eqNum);
			  },
			  error: function (request, status, error) {
				   console.log("code: " + request.status)
				   console.log("message: " + request.responseText)
				   console.log("error: " + error);
			  }
		   })
		}
	 
	 function f_memShip() {
		 	event.preventDefault();
		     $.ajax({
		    	 type:"post",
		    	 url:$("#guanwu")[0].action,
		    	 data:$("#guanwu").serialize(),
		    	 dataType:"text",
		    	 success:function(rslt){
		    		 console.log(rslt);
		 		 	if(rslt == "성공"){
			 		 	alert("D++가족이 되신걸 환영합니다!")
						location.href="/OTTProject/view/main/main.jsp";		 		 		
		 		 	} else {
		 		 		alert("다시 정보입력하쇼!")
		 		 	}
		    	 },
				 error: function (request, status, error) {
					 console.log("code: " + request.status)
					 console.log("message: " + request.responseText)
					 console.log("error: " + error);
				 }
		     })
		 
	    }
		
	</script>
	
</body>
</html>

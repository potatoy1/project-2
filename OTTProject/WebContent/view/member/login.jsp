<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="../css/login-main.css" type="text/css">
<link rel="stylesheet" href="../css/login-register.css" type="text/css">
<style type="text/css">
html{
    background-color: #f3f3f3;
}

.form-register{
    max-width: 1000px;
    width: 100%;
    margin: 0 auto;

    font: bold 14px sans-serif;
    text-align: center;
}

.form-register-with-email{
    position: relative;
    display: inline-block;
    vertical-align: top;
    margin-right: 30px;
    text-align: center;
}

.form-register-with-email .form-white-background{
    width: 570px;
    box-sizing: border-box;
    background-color: #ffffff;
    box-shadow: 0 1px 3px 0 rgba(0, 0, 0, 0.1);
    padding: 60px 45px;
    margin-bottom: 35px;
}

.form-register-with-email .form-row{
    text-align: left;
    margin-bottom: 23px;
}

.form-register-with-email .form-title-row{
    text-align: center;
    margin-bottom: 50px;
}

.form-register-with-email h1{
    display: inline-block;
    box-sizing: border-box;
    color:  #4c565e;
    font-size: 24px;
    padding: 0 20px 15px;
    border-bottom: 2px solid #e74c3c;
    margin: 0;
}

.form-register-with-email .form-row > label span{
    display: inline-block;
    box-sizing: border-box;
    color:  #5f5f5f;
    width: 125px;
    text-align: right;
    padding-right: 25px;
}

.form-register-with-email input{
    color:  #5f5f5f;
    box-sizing: border-box;
    width: 230px;
    box-shadow: 1px 2px 4px 0 rgba(0, 0, 0, 0.08);
    padding: 12px 18px;
    border: 1px solid #dbdbdb;
}

.form-register-with-email .form-checkbox input{
    margin-left: 128px;
    margin-right: 10px;
    width: auto;
    vertical-align: top;
}

.form-register-with-email .form-row .form-checkbox span{
    font-size: 12px;
    font-weight: normal;
    display: inline-block;
    text-align: left;
    width: 220px;
    margin: 0;
}

.form-register-with-email .form-checkbox span a{
    text-decoration: none;
    color:  #6caee0;
}

.form-register-with-email button{
    display: block;
    border-radius: 2px;
    background-color:  #6caee0;
    color: #ffffff;
    font-weight: bold;
    box-shadow: 1px 2px 4px 0 rgba(0, 0, 0, 0.08);
    padding: 15px 35px;
    border: 0;
    margin: 55px auto 0;
    cursor: pointer;
}

.form-register-with-email .form-log-in-with-existing{
    text-decoration: none;
    padding: 15px 45px;
    font-weight: normal;
    color: #7b9d62;
    background-color: #d6f0c3;
}

/*.form-register-with-email:after{
    content: 'OR';
    position: absolute;
    bottom: 330px;
    right: -100px;

    border-radius: 50%;
    background-color: #edeca5;
    width: 50px;
    height: 50px;
    color: #93923b;
    font-size: 17px;
    line-height: 50px;
}*/

.form-sign-in-with-social{
    display: inline-block;
    max-width: 180px;
    box-sizing: border-box;
    vertical-align: top;
    text-align: center;
    margin-top: 100px;
}

.form-sign-in-with-social .form-title-row{
    margin-bottom: 50px;
}

.form-sign-in-with-social .form-title{
    box-sizing: border-box;
    color:  #4c565e;
    font-size: 24px;
    padding: 15px 20px;
    border-bottom: 2px solid #6caee0;
}

.form-sign-in-with-social .form-google-button{
    color:  #ffffff;
    display: block;
    width: 145px;
    height: 40px;
    font-size: 12px;
    line-height: 40px;
    background-color:  rgba(222, 110, 60, 0.9);
    box-shadow: 1px 2px 2px 0 rgba(0, 0, 0, 0.08);
    border-radius: 2px;
    margin: 8px auto;
    text-decoration: none;
}

.form-sign-in-with-social .form-facebook-button{
    color:  #ffffff;
    display: block;
    width: 145px;
    height: 40px;
    font-size: 12px;
    line-height: 40px;
    background-color:  rgba(75, 136, 194, 0.9);
    box-shadow: 1px 2px 2px 0 rgba(0, 0, 0, 0.08);
    border-radius: 2px;
    margin: 8px auto;
    text-decoration: none;
}

.form-sign-in-with-social .form-twitter-button{
    color:  #ffffff;
    display: block;
    width: 145px;
    height: 40px;
    font-size: 12px;
    line-height: 40px;
    background-color:  rgba(123, 195, 226, 0.9);
    box-shadow: 1px 2px 2px 0 rgba(0, 0, 0, 0.08);
    border-radius: 2px;
    margin: 8px auto;
    text-decoration: none;
}


/*	Making the form responsive. Remove these media queries
    if you don't need the form to work on mobile devices. */

@media (max-width: 900px) {

    .form-register{
        margin: 20px auto;
    }

    .form-register-with-email{
        position: relative;
        display: block;
        margin: 0;
    }

    .form-register-with-email .form-white-background{
        margin: 0 auto 32px;
    }

    .form-register-with-email:after{
        bottom: -80px;
        left: 50%;
        margin-left: -25px;
    }

    .form-sign-in-with-social {
        margin-top: 105px;
    }

}

@media (max-width: 600px) {

    .form-register-with-email .form-white-background{
        width: 300px;
        padding-left: 35px;
        padding-right: 35px;
    }

    .form-register-with-email .form-row > label span{
        display: block;
        text-align: left;
        padding: 0 0 10px;
    }

    .form-register-with-email input{
        display: block;
        margin: 0 auto;
    }

    .form-register-with-email .form-checkbox input{
        display: inline-block;
        margin-left: 0;
    }

    .form-register-with-email .form-checkbox span{
        width: 200px !important;
    }

    .form-register-with-email:after{
        bottom: -80px;
        left: 50%;
        margin-left: -25px;
    }

}

@import url('http://fonts.googleapis.com/css?family=Open+Sans:400,700');
@import url(login-register.css);

*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

html{
	background-color: #efefef;
}

body{
	font:14px/1.5 Arial, Helvetica, sans-serif;
	margin:0;
}


header{
    box-sizing: border-box;
	text-align: center;
    width: 100%;
    padding: 25px 40px;
    background-color: #673AB7;
    overflow: hidden;
}


header h1{
    float: left;
	font: normal 24px/1.5 'Open Sans', sans-serif;
	color: #fff;
}

header a{
    color:#fff;
    float: right;
    text-decoration: none;
    display: inline-block;
    padding: 13px 50px;
    border-radius: 3px;
    font: bold 14px/1 'Open Sans', sans-serif;
    text-transform: uppercase;
    background-color:#F05283;

}

ul {
    list-style: none;
    border-bottom: 1px solid #EAEAEA;
    background-color: #A9A9A9;
    padding: 20px;
    margin-top: 0;
    text-align: center;
    margin-bottom: 75px;
}

ul a{
    text-decoration: none;
    color: #FFF;
    text-align: left;
    background-color: #e74c3c;
    padding: 10px 16px;
    border-radius: 2px;
    opacity: 0.8;
    font-size: 16px;
    display: inline-block;
    margin: 4px;
    line-height: 1;
    outline: none;

    transition: 0.2s ease;
}

ul li a.active{
    background-color: #e74c3c;
    pointer-events: none;
}

ul li a:hover {
    opacity: 1;
}


ul li{
    display: inline-block;
}


@media (max-width: 1000px) {


    header h1{
        float: none;
    }

    header a{
        margin-top: 25px;
        float: none;
    }

}

.main-content{
    margin-bottom: 75px;
}

/* -- Demo ads -- */

@media (max-width: 1200px) {
	#bsaHolder{ display:none;}
}

/* -- Link to Tutorialzine -- */

.tz-link{
	text-decoration: none;
	color: #fff !important;
	font: bold 36px Arial,Helvetica,sans-serif !important;
}

.tz-link span{
	color: #da431c;
}

</style>
</head>
<body>
	<form class="form-register" action="login.do" method="post">
		<div class="form-register-with-email">
			<div class="form-white-background">
				<div class="form-title-row">
					<h1>D++ Login</h1>				
				</div>
				<p style="color:red">
				<%
				if(request.getAttribute("errorMsg")!=null){
					out.println(request.getAttribute("errorMsg"));
				}
				%>
				</p>
				<br>
				<div class="form-row">
					<label>
						<span>Email(id)</span>					
						<input type="email" id="memEm" name="memEm" placeholder="enter E-mail" required>
					</label>
				</div><br>
				
				<div class="form-row">
					<label>
						<span>Password</span>
						<input type="password" class="pw_check" id="memPw" name="memPw" placeholder="enter password" required>
					</label>
				</div><br>
			<button type="button" id="login" class="btn btn-primary" >로그인</button>
			</div>
			<button id="pwfind" type="button" class="form-log-in-with-existing">비밀번호 찾기</button>
		</div>
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
					window.location.href = "/OTTProject/member/login.do"
				} else {
					alert("D지니+에 오신것을 환영합니다!")
					window.location.href = "/OTTProject/main/main.do"
					
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
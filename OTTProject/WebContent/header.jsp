<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<header id="header">
	<h1><a href="/OTTProject/index.jsp"><img id="logo" src="/OTTProject/view/img/logo.png"></a></h1>
	<button type="button" onclick="location='view/main/genre.jsp'">kids</button>
		
	<nav id="nav">
		<ul>
			<li class="special">
				<a href="#menu" class="menuToggle"><span>Menu</span></a>
				<div id="menu">

					<ul>
						<div class="accordion-box">
							<ul class="list">
								<li>
									<p class="title"><a class="title" href="index.jsp">Home</a></p>
								</li>
								<li>
									<p class="title"><a href="/OTTProject/main/main.do">인기영상</a></p>
								</li>
								<li>
									<p class="title"><a href="#">장르별 조회</a></p>
									<div class="con">
									<a href="/OTTProject/view/main/genre.jsp" style="text-decoration:none">로맨스</a><br>
									<a href="/OTTProject/view/main/genre.jsp">코미디</a><br>
									<a href="/OTTProject/view/main/genre.jsp">스릴러</a><br>
									<a href="/OTTProject/view/main/genre.jsp">미스터리</a><br>
									<a href="/OTTProject/view/main/genre.jsp">액션</a><br>
									<a href="/OTTProject/view/main/genre.jsp">판타지</a><br>
									<a href="/OTTProject/view/main/genre.jsp">공포</a><br>
									<a href="/OTTProject/view/main/genre.jsp">키즈</a><br>
									<a href="/OTTProject/view/main/genre.jsp">애니메이션</a><br>
									</div>
								</li>
								<li>
									<p class="title"><a href="#">마이페이지</a></p>
									<div class="con"><a href="elements.html" style="text-decoration:none">본인정보</a><br>
									<a href="/OTTProject/subpay.jsp">결제내역</a><br>
									<a href="/OTTProject/lkhis/list.do">시청기록</a><br>
									<a href="/OTTProject/wislist/list.do">찜목록</a><br>
									<a href="/OTTProject/ntc/list.do">고객센터</a><br>
								</div>
								</li>
								<li>
									<p class="title"><a href="#">log out</a></p>
								</li>
							
							</ul>
						</div>
					</ul>
				</div>
			</li>
		</ul>
	</nav>
</header>
<!-- <li><a href="index.html">Home</a></li>
	<li><a href="generic.html">인기영상</a></li>
	<li><a href="elements.html">내가 찜한 목록</a></li>
	<li><a href="#">Sign Up</a></li>
	<li><a href="#">Log In</a></li> -->


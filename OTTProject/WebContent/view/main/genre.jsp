<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE HTML>

<html>
	<head>
		<meta charset="UTF-8">
		<title>Disney Main</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../css/main.css" />
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>	

		<style>
			div{
				/* border: 3px solid red; */
			}
		</style>
	</head>

	
	<body class="is-preload">

		<!-- Page Wrapper -->
			<div id="page-wrapper">

				<!-- Header -->
				<header id="header" class="alt">
					<h1><a href="index.jsp"><img id="logo" src="../img/logo.png"></a></h1>
					<button type="button">kids</button>
					
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
													<p class="title"><a href="view/main/main.jsp">인기영상</a></p>
												</li>
												<li>
													<p class="title"><a href="#">장르별 조회</a></p>
													<div class="con">
													<a href="genre.jsp" style="text-decoration:none">로맨스</a><br>
													<a href="genre.jsp">코미디</a><br>
													<a href="genre.jsp">스릴러</a><br>
													<a href="genre.jsp">미스터리</a><br>
													<a href="genre.jsp">액션</a><br>
													<a href="genre.jsp">판타지</a><br>
													<a href="genre.jsp">공포</a><br>
													<a href="genre.jsp">키즈</a><br>
													<a href="genre.jsp">애니메이션</a><br>
												</div>
												</li>
												<li>
													<p class="title"><a href="#">마이페이지</a></p>
													<div class="con"><a href="elements.html" style="text-decoration:none">본인정보</a><br>
													<a href="elements.html">결제내역</a><br>
													<a href="elements.html">시청기록</a><br>
													<a href="elements.html">찜목록</a><br>
													<a href="ntc/list.do">고객센터</a><br>
												</div>
												</li>
												<li>
													<p class="title"><a href="#">log out</a></p>
													<div class="con">Lore type of Lorem Ipsum.</div>
												</li>
											
											</ul>
										</div>
										<!-- <li><a href="index.html">Home</a></li>
													<li><a href="generic.html">인기영상</a></li>
													<li><a href="elements.html">내가 찜한 목록</a></li>
													<li><a href="#">Sign Up</a></li>
													<li><a href="#">Log In</a></li> -->
									</ul>
								</div>
							</li>
						</ul>
					</nav>
				</header>>

				<!-- Main -->
					<div id="main-banner">
						<div id="slideShow">
							<input type="button" value="&lang;" id="btnLeft">
							<input type="button" value="&rang;" id="btnRight">
							<div class="slider" id="slider">
								<img src="../img/contents/공조가로2.jpg" id="main-img">
								<img src="../img/contents/수리남가로.jpg" id="main-img">
								<img src="../img/contents/마녀가로.jpg" id="main-img">
								<img src="../img/contents/헤어질결심가로.jpg" id="main-img">
							</div>
						</div>
						
						<div id="category"><h1 style="font-size: 2em;">로맨스</h1></div>

						<section class="wrapper style5">
							<div class="inner">
								<div>
									<div class="swiper-content" id="swiperContent">
										<img src="../img/contents/공조.jpg" id="content-img">
										<img src="../img/contents/수리남.jpg" id="content-img">
										<img src="../img/contents/마녀.jpg" id="content-img">
										<img src="../img/contents/헤어질결심.jpg" id="content-img">
										<img src="../img/contents/범죄도시.jpg" id="content-img">
									</div>
								</div>
								<div>
									<div class="swiper-content" id="swiperContent">
										<img src="../img/contents/공조.jpg" id="content-img">
										<img src="../img/contents/수리남.jpg" id="content-img">
										<img src="../img/contents/마녀.jpg" id="content-img">
										<img src="../img/contents/헤어질결심.jpg" id="content-img">
										<img src="../img/contents/범죄도시.jpg" id="content-img">
									</div>
								</div>
								<div>
									<div class="swiper-content" id="swiperContent">
										<img src="../img/contents/공조.jpg" id="content-img">
										<img src="../img/contents/수리남.jpg" id="content-img">
										<img src="../img/contents/마녀.jpg" id="content-img">
										<img src="../img/contents/헤어질결심.jpg" id="content-img">
										<img src="../img/contents/범죄도시.jpg" id="content-img">
									</div>
								</div>
								<div>
									<div class="swiper-content" id="swiperContent">
										<img src="../img/contents/공조.jpg" id="content-img">
										<img src="../img/contents/수리남.jpg" id="content-img">
										<img src="../img/contents/마녀.jpg" id="content-img">
										<img src="../img/contents/헤어질결심.jpg" id="content-img">
										<img src="../img/contents/범죄도시.jpg" id="content-img">
								</div>
							</div>
						</section>
					</div>

					<script>
						var $slider = $("#slider");
							$("#btnLeft").on("click", function () {
								var $childs = $slider.children();
								$slider.append(
									$childs.eq(0));
							})

							$("#btnRight").on("click", function () {
								var $childs = $slider.children();
								$slider.prepend(
									$childs.eq(3));
							})


					</script>
					
					<br>

					<!-- Footer -->
					<footer id="footer">
					<p class="footnote">디지니플러스플러스 책임회사 | 대표자: 이승연 | 서울특별시 강남구 테헤란로 15295638, 747층 (우편번호: 0600236) |
						Email: helper@disineyplusplus.kr | 연락처: 0800 80122 14016 |<br> 사업자등록번호: 22110-801-033147 | 통신판매업 신고번호:
						제24021-서울강남-0542456호 |<br>
						비디오물배급업 신고번호: 제2016-142726호 <br><br>디지니++의 콘텐츠는 서비스 여부에 따라 달라질 수 있습니다.<br>
						© 2022 Disineyplusplus and its related entities. All Rights Reserved.</p>
					<ul class="copyright">
						<li>&copy; Disineyplusplus</li>
						<li>Design: <a href="http://html5up.net">Disineyplusplus</a></li>
					</ul>
				</footer>

			</div>

	</body>
</html>
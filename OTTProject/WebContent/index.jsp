<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
<link rel="stylesheet" href="view/css/main.css" />

</head>
<body class="landing is-preload">

	<!-- Page Wrapper -->
	<div id="page-wrapper">

		<!-- Header -->
		<%@include file ="header.jsp" %>

		<!-- Banner -->
		<section id="banner">
			<div class="inner">
				<h2>Disney++</h2>
				<p id="dpl">Disney++에 오신 것을 환영 푸푸<br />
					다양한 디바이스에서 시청하세요. 원하실 때 해지할 수 있어요.<br />
					</p>
				<ul class="actions special">
					<li><a href="#" class="button primary">회원가입</a></li>
					<li><a href="#" class="button primary">로그인</a></li>
				</ul>
			</div>
			<a href="#one" class="more scrolly">구경해보기</a>
		</section>

		<!-- One -->
		<section id="one" class="wrapper style1 special">
			<div class="inner">
				<header class="major">
					<h2>디즈니++ 데이와 함께 당신이 사랑하는 모든 이야기와 콘텐츠를 즐기세요.</h2>
				</header>
				<ul class="icons major">
					<li><span class="icon fa-gem major style1"><span class="label">Lorem</span></span></li>
					<li><span class="icon fa-heart major style2"><span class="label">Ipsum</span></span></li>
					<li><span class="icon solid fa-code major style3"><span class="label">Dolor</span></span></li>
				</ul>
			</div>
		</section>

		<!-- Two -->
		<section id="two" class="wrapper alt style2">
			<section class="spotlight">
				<div class="image"><img src="view/img/pcmoblie.jpg" /></div>
				<div class="content">
					<h2>취향에 따라 골라보는 다양한<br />
						컨텐츠가 모두 한자리에</h2>
					<p>디즈니++는 디즈니, 픽사, 마블, 스타워즈, 내셔널지오그래픽, Star의 최고 콘텐츠들을 모두 한곳에 모아 제공합니다.<br /></p>
					
					<p>Aliquam ut ex ut augue consectetur interdum. Donec hendrerit imperdiet. Mauris eleifend fringilla
						nullam aenean mi ligula.</p>
				</div>
			</section>
			<section class="spotlight">
				<div class="our-story-card-img-container boxani">
					<div class="our-story-card-animation-container">
						<img alt="" class="our-story-card-img" src="https://assets.nflxext.com/ffe/siteui/acquisition/ourStory/fuji/desktop/device-pile.png" data-uia="our-story-card-img">
						<div class="our-story-card-animation boxani1" data-uia="our-story-card-animation">
							<video class="our-story-card-video" data-uia="our-story-card-video" autoplay="" playsinline="" muted="" loop="" style="width: 300px; height: 160px">
								<source src="https://assets.nflxext.com/ffe/siteui/acquisition/ourStory/fuji/desktop/video-devices.m4v" type="video/mp4">
							</video>
							<div class="our-story-card-animation-text"></div>
							<div class="our-story-card-animation-custom" data-uia="our-story-card-custom" aria-hidden="true"></div>
						</div>
					</div>
				</div>
				<div class="content">
					<h1>다양한 디바이스에서 시청하세요
						</h1><br>
					<p>각종 영화와 시리즈를 스마트폰, 태블릿, 노트북, TV에서 무제한으로 스트리밍하세요. 추가 요금이 전혀 없습니다.</p>
				</div>
			</section>
<!-- 			<section class="spotlight"> -->
<!-- 				<div class="image"><img src="images/pic03.jpg" alt="" /></div> -->
<!-- 				<div class="content"> -->
<!-- 					<h2>Augue eleifend aliquet<br /> -->
<!-- 						sed condimentum</h2> -->
<!-- 					<p>Aliquam ut ex ut augue consectetur interdum. Donec hendrerit imperdiet. Mauris eleifend fringilla -->
<!-- 						nullam aenean mi ligula.</p> -->
<!-- 				</div> -->
<!-- 			</section> -->
<!-- 		</section> -->

		<!-- Three -->
		<section id="three" class="wrapper style3 special">
			<div class="inner">
				<header class="major">
					<h2>더 감동적으로, 무한한 Star의 세상</h2>
					<p>디즈니+에서 Star와 함께 새로운 엔터테인먼트의 세계를 경험해 보세요.<br>
						Star는 어른을 위한 시리즈와 영화를 포함해 모든 취향을 고려한 다양한 콘텐츠를 제공합니다.</p>
				</header>
				<div class="contentimg">
					<div class="videoimg">
						<picture class="">
							<source media="(min-width: 1025px)" srcset="//cnbl-cdn.bamgrid.com/assets/d2653e611500f8460620be11ca39f7ac727cdf87f91f001f5fb077bd2a49095c/original">
							<img src="//cnbl-cdn.bamgrid.com/assets/d2653e611500f8460620be11ca39f7ac727cdf87f91f001f5fb077bd2a49095c/original" width="450" height="350" alt="Sound Track #1" loading="lazy">
						</picture>
					</div>
					<div class="videoimg">
						<picture class="">
							<source media="(min-width: 1025px)" srcset="//cnbl-cdn.bamgrid.com/assets/f48a3c9eeea44f75f97e5545abe3216ac70ea05d36458794d6093fdc7512efbe/original">
							<img src="//cnbl-cdn.bamgrid.com/assets/f48a3c9eeea44f75f97e5545abe3216ac70ea05d36458794d6093fdc7512efbe/original" width="450" height="350" alt="Grid " loading="lazy">
						</picture>
					</div>
					<div class="videoimg">
						<picture class="">
							<source media="(min-width: 1025px)" srcset="//cnbl-cdn.bamgrid.com/assets/f0a2ffa3d2621e8ab5a2c720e18cc6a8e2dd1718b42ce0134eeef3b429014b34/original">
							<img src="//cnbl-cdn.bamgrid.com/assets/f0a2ffa3d2621e8ab5a2c720e18cc6a8e2dd1718b42ce0134eeef3b429014b34/original" width="450" height="350" alt=" Rookie Cops" loading="lazy">
						</picture>
					</div>
				</div>
				<div class="contentimg">
					<div class="videoimg">
						<picture class="">
							<source media="(min-width: 1025px)" srcset="//cnbl-cdn.bamgrid.com/assets/d2653e611500f8460620be11ca39f7ac727cdf87f91f001f5fb077bd2a49095c/original">
							<img src="//cnbl-cdn.bamgrid.com/assets/d2653e611500f8460620be11ca39f7ac727cdf87f91f001f5fb077bd2a49095c/original" width="450" height="350" alt="Sound Track #1" loading="lazy">
						</picture>
					</div>
					<div class="videoimg">
						<picture class="">
							<source media="(min-width: 1025px)" srcset="//cnbl-cdn.bamgrid.com/assets/f48a3c9eeea44f75f97e5545abe3216ac70ea05d36458794d6093fdc7512efbe/original">
							<img src="//cnbl-cdn.bamgrid.com/assets/f48a3c9eeea44f75f97e5545abe3216ac70ea05d36458794d6093fdc7512efbe/original" width="450" height="350" alt="Grid " loading="lazy">
						</picture>
					</div>
					<div class="videoimg">
						<picture class="">
							<source media="(min-width: 1025px)" srcset="//cnbl-cdn.bamgrid.com/assets/f0a2ffa3d2621e8ab5a2c720e18cc6a8e2dd1718b42ce0134eeef3b429014b34/original">
							<img src="//cnbl-cdn.bamgrid.com/assets/f0a2ffa3d2621e8ab5a2c720e18cc6a8e2dd1718b42ce0134eeef3b429014b34/original" width="450" height="350" alt=" Rookie Cops" loading="lazy">
						</picture>
					</div>
				</div>
				<div class="contentimg">
					<div class="videoimg">
						<picture class="">
							<source media="(min-width: 1025px)" srcset="//cnbl-cdn.bamgrid.com/assets/d2653e611500f8460620be11ca39f7ac727cdf87f91f001f5fb077bd2a49095c/original">
							<img src="//cnbl-cdn.bamgrid.com/assets/d2653e611500f8460620be11ca39f7ac727cdf87f91f001f5fb077bd2a49095c/original" width="450" height="350" alt="Sound Track #1" loading="lazy">
						</picture>
					</div>
					<div class="videoimg">
						<picture class="">
							<source media="(min-width: 1025px)" srcset="//cnbl-cdn.bamgrid.com/assets/f48a3c9eeea44f75f97e5545abe3216ac70ea05d36458794d6093fdc7512efbe/original">
							<img src="//cnbl-cdn.bamgrid.com/assets/f48a3c9eeea44f75f97e5545abe3216ac70ea05d36458794d6093fdc7512efbe/original" width="450" height="350" alt="Grid " loading="lazy">
						</picture>
					</div>
					<div class="videoimg">
						<picture class="">
							<source media="(min-width: 1025px)" srcset="//cnbl-cdn.bamgrid.com/assets/f0a2ffa3d2621e8ab5a2c720e18cc6a8e2dd1718b42ce0134eeef3b429014b34/original">
							<img src="//cnbl-cdn.bamgrid.com/assets/f0a2ffa3d2621e8ab5a2c720e18cc6a8e2dd1718b42ce0134eeef3b429014b34/original" width="450" height="350" alt=" Rookie Cops" loading="lazy">
						</picture>
					</div>
				</div>
			</div>
		</section>

		<!-- CTA -->
		<section id="cta" class="wrapper style4">
			<div class="accordion-box">
				<div class="list">
					<h2 class="qa">자주 묻는 질문</h2>
					<div class="accordion-container">
						<div>
							<p class="title"><span>디즈니++는 무엇인가요?</span><span class="qna">+</span></p>
							<div class="con">
								<p>디즈니++는 디즈니, 픽사, 마블, 스타워즈, 내셔널지오그래픽, Star의 콘텐츠를 모두 즐길 수 있는 곳입니다. 최신 공개작부터 시대를 초월한 명작과 독점 오리지널에 이르기까지 다양하고 풍성한 콘텐츠를 광고 없이 시청할 수 있습니다.</p>
							</div>
						</div>
						</div>
						<div>
							<p class="title">디즈니++에서 어떤 콘텐츠를 시청할 수 있나요?</p>
							<div class="con">
								<p>디즈니++는 새로운 콘텐츠를 계속해서 추가하고 있습니다.</p>
								<p></p>
								<p>- 최신 공개작과 시대를 초월한 명작</p><p>- 독점 공개하는 새로운 오리지널 영화와 시리즈</p><p>- 흥미진진한 스페셜과 기간 한정 스트리밍되는 특별 콘텐츠</p>
								<p>- 그때 그 시절 추억의 작품과 인기 시리즈의 지난 시즌 에피소드</p><p>- 스카이워커 사가 전체와 대부분의 마블 시네마틱 유니버스 작품</p><p>- 인기 단편과 실험적인 단편</p>
								<p>- 다큐멘터리, 리얼리티 시리즈 등</p>
							</div>
						
						<div>
							<p class="title">디즈니++를 어디에서 시청할 수 있나요?</p>
							<div class="con">
								<p>디즈니++ 앱은 모바일 기기, 웹 브라우저, 게임 콘솔, 셋톱박스, 스마트 TV에서 이용할 수 있습니다.</p>
							</div>
						</div>
						<div>
							<p class="title">디즈니++는 무엇을 제공하나요?</p>
							<div class="con">
								<p>디즈니+는 다음을 제공합니다.</p>
								<p></p><p>- 광고 없는 탁월한 시청 경험</p><p>- 최대 10대의 기기에 원하는 콘텐츠 마음껏 저장</p>
								<p>- 300편이 넘는 작품 고화질 4K UHD 및 HDR로 시청</p><p>- 추가 요금 없이 최대 4대의 기기에서 동시 스트리밍</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- Footer -->
	<%@include file ="footer.jsp" %>
	</div>

	<!-- Scripts -->
	<script src="view/js/jquery.min.js"></script>
	<script src="view/js/jquery.scrollex.min.js"></script>
	<script src="view/js/jquery.scrolly.min.js"></script>
	<script src="view/js/browser.min.js"></script>
	<script src="view/js/breakpoints.min.js"></script>
	<script src="view/js/util.js"></script>
	<script src="view/js/main.js"></script>

	<script>
		$("p.title").on('click', function () {
			$(this).next(".con").slideToggle(100);
		});

	</script>
</body>
</html>
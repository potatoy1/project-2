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
		<%@include file ="../../header.jsp" %>

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

		<!-- Footer -->
		<%@include file ="../../footer.jsp" %>

		</div>
		<!-- Scripts -->
		<script src="/OTTProject/view/js/jquery.min.js"></script>
		<script src="/OTTProject/view/js/jquery.scrollex.min.js"></script>
		<script src="/OTTProject/view/js/jquery.scrolly.min.js"></script>
		<script src="/OTTProject/view/js/browser.min.js"></script>
		<script src="/OTTProject/view/js/breakpoints.min.js"></script>
		<script src="/OTTProject/view/js/util.js"></script>
		<script src="/OTTProject/view/js/main.js"></script>
		<script>
		$("p.title").on('click', function () {
			$(this).next(".con").slideToggle(100);
		});

		</script>
	</body>
</html>
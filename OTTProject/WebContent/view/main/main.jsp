<%@page import="comm.vo.AtchFileVO"%>
<%@page import="comm.service.IAtchFileService"%>
<%@page import="comm.service.AtchFileServiceImpl"%>
<%@page import="kr.or.ddit.ott.vdodtl.vo.VdodtlVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
VdodtlVO vo = (VdodtlVO) request.getAttribute("vo");
AtchFileVO fv = (AtchFileVO) request.getAttribute("fv");
List<AtchFileVO> atchFileList = (List<AtchFileVO>) request.getAttribute("atchFileList");
List<VdodtlVO> vdodtlList = (List<VdodtlVO>) request.getAttribute("vdodtlList");
System.out.println("null인가요:?" + atchFileList);
%>
<!DOCTYPE HTML>

<html>
	<head>
		<meta charset="UTF-8">
		<title>Disney Main</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>	
		<link rel="stylesheet" href="/OTTProject/view/css/main.css" />

		<style>
			div{
				/* border: 3px solid red; */
			}
			.mySlides {
				display:none;
			}
			.w3-btn-floating{
				position:absolute;
				top:45%;
				padding: 40px;
				font-size: 50px;
			}
		</style>
	</head>

	
	<body class="is-preload">

		<!-- Page Wrapper -->
		<div id="page-wrapper">

			<!-- Header -->
			<%@include file ="/header.jsp" %>

			<!-- Main -->
			<div id="main-banner">
				<div id="slideShow">
					<div class="slider" id="slider">
						<img class="mySlides" id="main-img" src="/OTTProject/view/img/contents/공조가로2.jpg">
						<img class="mySlides" id="main-img" src="/OTTProject/view/img/contents/수리남가로.jpg">
						<img class="mySlides" id="main-img" src="/OTTProject/view/img/contents/마녀가로.jpg">
						<img class="mySlides" id="main-img" src="/OTTProject/view/img/contents/헤어질결심가로.jpg">

						<a class="w3-btn-floating" style="left:0" onclick="plusDivs(-1)" href="#">❮</a>
						<a class="w3-btn-floating" style="right:0" onclick="plusDivs(1)" href="#">❯</a>						

					</div>
				</div>
				
				<section class="wrapper style5">
					<div class="inner">
						<div>
							<h1>실시간 인기 프로그램</h1>
						</div>
						<div>
							<input type="button" value="&lang;" id="content1-btnLeft" class="btncommL">
							<input type="button" value="&rang;" id="content1-btnRight" class="btncommR">
							<div class="swiper-content" id="swiperContent1">
								<img src="/OTTProject/view/img/contents/공조.jpg" id="content-img">
								<%
									int vdodtlSize = vdodtlList.size();
										if(vdodtlSize > 0){
											for(int i=0; i< vdodtlSize; i++){
										
								%>
								<a href="main.do?vdodtlNum=<%=vdodtlList.get(i).getVdodtlNum()%>"><img src="/OTTProject/hsImages/<%= vdodtlList.get(i).getStreFileNm() %>" id="content-img"></a>
								<%
										}
										}
								%>
								<img src="/OTTProject/view/img/contents/수리남.jpg" id="content-img">
								<img src="/OTTProject/view/img/contents/마녀.jpg" id="content-img">
								<img src="/OTTProject/view/img/contents/헤어질결심.jpg" id="content-img">
								<img src="/OTTProject/view/img/contents/범죄도시.jpg" id="content-img">
							</div>
						</div>
						<div>
							<h1>오늘의 TOP 20</h1>
						</div>
						<div>
							<input type="button" value="&lang;" id="content2-btnLeft" class="btncommL">
							<input type="button" value="&rang;" id="content2-btnRight" class="btncommR">
							<div class="swiper-content" id="swiperContent2">
								<img src="/OTTProject/view/img/contents/공조.jpg" id="content-img">
								<img src="/OTTProject/view/img/contents/수리남.jpg" id="content-img">
								<img src="/OTTProject/view/img/contents/마녀.jpg" id="content-img">
								<img src="/OTTProject/view/img/contents/헤어질결심.jpg" id="content-img">
								<img src="/OTTProject/view/img/contents/범죄도시.jpg" id="content-img">
							</div>
						</div>
						<div>
							<h1>온 가족이 함께 보면 좋을 영화</h1>
						</div>
						<div>
							<input type="button" value="&lang;" id="content3-btnLeft" class="btncommL">
							<input type="button" value="&rang;" id="content3-btnRight" class="btncommR">
							<div class="swiper-content" id="swiperContent3">
								<img src="/OTTProject/view/img/contents/공조.jpg" id="content-img">
								<img src="/OTTProject/view/img/contents/수리남.jpg" id="content-img">
								<img src="/OTTProject/view/img/contents/마녀.jpg" id="content-img">
								<img src="/OTTProject/view/img/contents/헤어질결심.jpg" id="content-img">
								<img src="/OTTProject/view/img/contents/범죄도시.jpg" id="content-img">
							</div>
						</div>
						<div>
							<h1>두근두근 Coming Soon</h1>
						</div>
						<div>
							<input type="button" value="&lang;" id="content4-btnLeft" class="btncommL">
							<input type="button" value="&rang;" id="content4-btnRight" class="btncommR">
							<div class="swiper-content" id="swiperContent4">
								<img src="/OTTProject/view/img/contents/공조.jpg" id="content-img">
								<img src="/OTTProject/view/img/contents/수리남.jpg" id="content-img">
								<img src="/OTTProject/view/img/contents/마녀.jpg" id="content-img">
								<img src="/OTTProject/view/img/contents/헤어질결심.jpg" id="content-img">
								<img src="/OTTProject/view/img/contents/범죄도시.jpg" id="content-img">
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>

		<script>
			var myIndex = 0;
			carousel();

			function carousel() {
				var i;
				var x = document.getElementsByClassName("mySlides");
				for (i = 0; i < x.length; i++) {
					x[i].style.display = "none";
				}
				myIndex++;
				if (myIndex > x.length) { myIndex = 1 }
				x[myIndex - 1].style.display = "block";
				setTimeout(carousel, 2000); // Change image every 2 seconds
			}

			var slideIndex = 1;
			showDivs(slideIndex);

			function plusDivs(n) {
				showDivs(slideIndex += n);
			}

			function showDivs(n) {
				var i;
				var x = document.getElementsByClassName("mySlides");
				if (n > x.length) { slideIndex = 1 }
				if (n < 1) { slideIndex = x.length };
				for (i = 0; i < x.length; i++) {
					x[i].style.display = "none";
				}
				x[slideIndex - 1].style.display = "block";
			}

		</script>

		<script>
			var $swiperContent1 = $("#swiperContent1");						
				$("#content1-btnLeft").on("click", function () {
					var $childs = $swiperContent1.children();
					$swiperContent1.append(
						$childs.eq(0));
				})

				$("#content1-btnRight").on("click", function () {
					var $childs = $swiperContent1.children();
					$swiperContent1.prepend(
						$childs.eq(4));
				})

			var $swiperContent2 = $("#swiperContent2");
				$("#content2-btnLeft").on("click", function () {
					var $childs = $swiperContent2.children();
					$swiperContent2.append(
						$childs.eq(0));
				})

				$("#content2-btnRight").on("click", function () {
					var $childs = $swiperContent2.children();
					$swiperContent2.prepend(
						$childs.eq(4));
				})

			var $swiperContent3 = $("#swiperContent3");
				$("#content3-btnLeft").on("click", function () {
					var $childs = $swiperContent3.children();
					$swiperContent3.append(
						$childs.eq(0));
				})

				$("#content3-btnRight").on("click", function () {
					var $childs = $swiperContent3.children();
					$swiperContent3.prepend(
						$childs.eq(4));
				})

			var $swiperContent4 = $("#swiperContent4");
				$("#content4-btnLeft").on("click", function () {
					var $childs = $swiperContent4.children();
					$swiperContent4.append(
						$childs.eq(0));
				})

				$("#content4-btnRight").on("click", function () {
					var $childs = $swiperContent4.children();
					$swiperContent4.prepend(
						$childs.eq(4));
				})
		</script>
				
		<!-- Footer -->
		<%@include file ="../../footer.jsp" %>

		
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
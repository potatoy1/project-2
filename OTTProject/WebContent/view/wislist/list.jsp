<%@page import="kr.or.ddit.ott.vdodtl.vo.VdodtlVO"%>
<%@page import="kr.or.ddit.ott.wislist.vo.WisListVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<WisListVO> wisList = (List<WisListVO>) request.getAttribute("wisList");
List<VdodtlVO> vdodtlList = (List<VdodtlVO>) request.getAttribute("vdodtlList");
String msg = session.getAttribute("msg") == null ? "" : (String) session.getAttribute("msg");
session.removeAttribute("msg");
%>
<!DOCTYPE HTML>
<html>
<head>
<title>내가 찜한 목록</title>
<meta charset="utf-8" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet" crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="../view/css/main.css" />
</head>

<body class="is-preload">

	<!-- Page Wrapper -->
	<div id="page-wrapper">

		<!-- Header -->
		<%@include file="../../header.jsp"%>


		<!-- Main -->
		<article id="main">
			<header>
				<div style="text-align: center; position: relative; top: 70px;">
					<h2>내가 찜한 목록</h2>
					<p>내가 찜한 목록</p>
				</div>
			</header>
			<section class="wrapper style5">
				<div class="inner" style="text-align: center;">
					<!-- 						<div class="btn-group" role="group" aria-label="Basic outlined example" style="padding: 60px;"> -->
					<!-- 							<button type="button" class="btn btn-outline-primary" -->
					<!-- 								style="color: white; width: 700px; border-color: white;" onclick="location.href='../ntc/list.do'"> -->
					<!-- 								공지사항</button> -->
					<!-- 							<button type="button" class="btn btn-outline-primary" -->
					<!-- 								style="color: white; width: 700px;border-color: white;" onclick="location.href='../oob/list.do'"> -->
					<!-- 								1:1 문의</button> -->
					<!-- 						</div> -->
					<div class="board_list">
						<div class="contentimg">
							<div class="videoimg">
								<picture class="">
								<source media="(min-width: 1025px)"
									srcset="//cnbl-cdn.bamgrid.com/assets/d2653e611500f8460620be11ca39f7ac727cdf87f91f001f5fb077bd2a49095c/original">
								<img
									src="//cnbl-cdn.bamgrid.com/assets/d2653e611500f8460620be11ca39f7ac727cdf87f91f001f5fb077bd2a49095c/original"
									width="450" height="300" alt="Sound Track #1" loading="lazy">
								</picture>
							</div>
							<div class="videoimg">
								<picture class="">
								<source media="(min-width: 1025px)"
									srcset="//cnbl-cdn.bamgrid.com/assets/f48a3c9eeea44f75f97e5545abe3216ac70ea05d36458794d6093fdc7512efbe/original">
								<img
									src="//cnbl-cdn.bamgrid.com/assets/f48a3c9eeea44f75f97e5545abe3216ac70ea05d36458794d6093fdc7512efbe/original"
									width="450" height="300" alt="Grid " loading="lazy"> </picture>
							</div>
							<div class="videoimg">
								<picture class="">
								<source media="(min-width: 1025px)"
									srcset="//cnbl-cdn.bamgrid.com/assets/f0a2ffa3d2621e8ab5a2c720e18cc6a8e2dd1718b42ce0134eeef3b429014b34/original">
								<img
									src="//cnbl-cdn.bamgrid.com/assets/f0a2ffa3d2621e8ab5a2c720e18cc6a8e2dd1718b42ce0134eeef3b429014b34/original"
									width="450" height="300" alt=" Rookie Cops" loading="lazy">
								</picture>
							</div>



							<div
								class="lists__columns lists__columns-vertical css-0 ed3s14a0">
								<div class="item">
									<a class="false css-e0dnmk ecwyk2k0"
										href="/contents/P001615344"><div
											class="item__thumb item__thumb-25x36">
											<div class="item__tags">
												<div class="item__tags-left"></div>
												<div class="item__tags-right"></div>
											</div>
											<div class="item__image lazy">
												<picture class="loaded css-k4zock execn1x2">
												<source
													srcset="https://image.tving.com/upload/cms/caip/CAIP0900/P001615344.jpeg/dims/resize/F_webp,400"
													type="image/webp" class="css-1a1r0s4 execn1x1">
												<img class="loaded css-1a1r0s4 execn1x0"
													src="https://image.tving.com/upload/cms/caip/CAIP0900/P001615344.jpeg/dims/resize/400"
													alt="뿅뿅 지구오락실"></picture>
											</div>
										</div>
										<div class="item__info ">
											<p class="item__title false">뿅뿅 지구오락실</p>
										</div></a>
								</div>
								<div class="item">
									<a class="false css-e0dnmk ecwyk2k0"
										href="/contents/P001613931"><div
											class="item__thumb item__thumb-25x36">
											<div class="item__tags">
												<div class="item__tags-left"></div>
												<div class="item__tags-right"></div>
												<div direction="down" class="css-10b1ou e8ap9gx6">
													<div type="original" class="css-r34b1v e8ap9gx2"></div>
													<span class="css-4gx3ze e8ap9gx1">티빙 오리지널</span>
												</div>
											</div>
											<div class="item__image lazy">
												<picture class="loaded css-k4zock execn1x2">
												<source
													srcset="https://image.tving.com/upload/cms/caip/CAIP0900/P001613931.jpg/dims/resize/F_webp,400"
													type="image/webp" class="css-1a1r0s4 execn1x1">
												<img class="loaded css-1a1r0s4 execn1x0"
													src="https://image.tving.com/upload/cms/caip/CAIP0900/P001613931.jpg/dims/resize/400"
													alt="환승연애 시즌2"></picture>
											</div>
										</div>
										<div class="item__info ">
											<p class="item__title false">환승연애 시즌2</p>
										</div></a>
								</div>
							</div>




							<div class="top">
								<div class="num">번호</div>
								<div class="title">제목</div>
								<div class="date">찜한일시</div>
								<div class="del">삭제</div>
							</div>
							<%
								int wislistSize = wisList.size();
							if (wislistSize > 0) {
								for (int i = 0; i < wislistSize; i++) {
							%>
							<div>
								<div class="num">
									<%=wisList.get(i).getWislistNum()%>
								</div>
								<div class="title">
									<a
										href="../vdodtl/detail.do?vdodtlNum=<%=wisList.get(i).getVdodtlNum()%>">
									</a>
								</div>
								<div class="date">
									<%=wisList.get(i).getWislistDate()%>
								</div>
								<div class="delete form-check">
									<input class="form-check-input" type="checkbox" name="check"
										style="float: none; margin-left: 0em"
										value="<%=wisList.get(i).getWislistNum()%>">
								</div>
							</div>
							<%
								}
							} else {
							}
							%>
						</div>
						<div style="margin: 30px;">
							<button type="button" class="btn btn-light"
								onclick="location.href='../wislist/list.do'">뒤로가기</button>
							<button type="button" class="btn btn-outline-light" id="del_btn"
								onclick="f_del()">선택 삭제</button>
						</div>
					</div>
			</section>
		</article>

		<!-- Footer -->
		<%@include file="../../footer.jsp"%>

	</div>

	<!-- Scripts -->
	<script src="../view/js/jquery.min.js"></script>
	<script src="../view/js/jquery.scrollex.min.js"></script>
	<script src="../view/js/jquery.scrolly.min.js"></script>
	<script src="../view/js/browser.min.js"></script>
	<script src="../view/js/breakpoints.min.js"></script>
	<script src="../view/js/util.js"></script>
	<script src="../view/js/main.js"></script>

	<script>
		var btn = document.querySelector("#check");
		function f_del(){
		   let checkedVals = []; // 빈 배열
		   var queryString="";
		   $("input[name=check]:checked").val((p_index,p_value)=>{
		      queryString += "wislistNum="+p_value+"&";
		   });
// 		   alert(queryString);
	
		   $.ajax({
		      type:"get",
		      url:"<%=request.getContextPath()%>/wislist/delete.do",
		      data: queryString,
		      dataType:"text",
		      success:function(rslt){
		         if(rslt == "OK"){
		            location.href= "<%=request.getContextPath()%>/wislist/list.do";
		         }
		      },
		      error:function(request,status,error){        
		         console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);       
		       }
		   })
		}
		
		$("p.title").on('click', function () {
			$(this).next(".con").slideToggle(100);
		});

	</script>
</body>
</html>
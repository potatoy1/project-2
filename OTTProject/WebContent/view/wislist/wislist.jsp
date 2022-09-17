<%@page import="kr.or.ddit.ott.wislist.vo.WisListVO"%>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% List<WisListVO> wisList = (List<WisListVO>) request.getAttribute("oobList");
String msg = session.getAttribute("msg") == null ? "" : (String) session.getAttribute("msg");
session.removeAttribute("msg");%>
<!DOCTYPE HTML>

<html>

<head>
	<title>내가 찜한 목록</title>
	<meta charset="utf-8" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
		rel="stylesheet" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<link rel="stylesheet" href="../view/css/main.css" />

</head>

<body class="is-preload">

	<!-- Page Wrapper -->
	<div id="page-wrapper">

		<!-- Header -->
		<%@include file="../../header.jsp" %>


			<!-- Main -->
			<article id="main">
				<header>
					<div style="text-align: center; position: relative; ;top: 70px;">
						<h2>고객센터</h2>
						<p>무엇이든 물어보세요!</p>
					</div>
				</header>
				<section class="wrapper style5">
					<div class="inner" style="text-align: center;">
						<div class="btn-group" role="group" aria-label="Basic outlined example" style="padding: 60px;">
							<button type="button" class="btn btn-outline-primary"
								style="color: white; width: 700px; border-color: white;" onclick="location.href='../ntc/list.do'">
								공지사항</button>
							<button type="button" class="btn btn-outline-primary"
								style="color: white; width: 700px;border-color: white;" onclick="location.href='../oob/list.do'">
								1:1 문의</button>
						</div>
						<div class="board_list">
							<div class="top">
								<div class="num">번호</div>
								<div class="title">제목</div>
								<div class="date">작성일</div>
							</div>
							<% int wislistSize=wisList.size(); if (wislistSize> 0) {
								for (int i = 0; i < wislistSize; i++) { %>
									<div>
										<div class="num">
											<%=wisList.get(i).getWislistNum()%>
										</div>
										<div class="title">
											<a class="wislist" href="detail.do?oobNum=<%=wislist.get(i).getWislistNum()%>">
												<%=wisList.get(i).getWislistDate()%>
											</a>
										</div>
										<div class="con"></div>
										<div class="date">
											<%=wislist.get(i).getOobDate()%>
										</div>
									</div>
									<% } } else { } %>
						</div>
						<div style="margin: 30px;">
							<button type="button" class="btn btn-light" onclick="location.href='../oob/insert.do'">새글 작성</button>
						</div>
					</div>
				</section>
			</article>

			<!-- Footer -->
			<%@include file="../../footer.jsp" %>

	</div>

	<!-- Scripts -->
	<script src="../view/js/jquery.min.js"></script>
	<script src="../view/js/jquery.scrollex.min.js"></script>
	<script src="../view/js/jquery.scrolly.min.js"></script>
	<script src="../view/js/browser.min.js"></script>
	<script src="../view/js/breakpoints.min.js"></script>
	<script src="../view/js/util.js"></script>
	<script src="../view/js/main.js"></script>

</body>

</html>
<%@page import="kr.or.ddit.ott.lkhis.vo.LkhisVO"%>
<%@page import="kr.or.ddit.ott.vdodtl.vo.VdodtlVO"%>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% List<LkhisVO> lkhisList = (List<LkhisVO>) request.getAttribute("lkhisList");
   List<VdodtlVO> vdodtlList = (List<VdodtlVO>) request.getAttribute("vdodtlList");
String msg = session.getAttribute("msg") == null ? "" : (String) session.getAttribute("msg");
session.removeAttribute("msg");%>
<!DOCTYPE HTML>
<html>
<head>
	<title>좋아요 목록</title>
	<meta charset="utf-8" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
		rel="stylesheet" crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
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
					<div style="text-align: center; position: relative;top: 70px;">
						<h2>좋아요</h2>
						<p>좋아요한 목록</p>
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
							<div class="top">
								<div class="num">번호</div>
								<div class="title">제목</div>
								<div class="date">좋아요 누른 일시</div>
								<div class="del">삭제</div>
							</div>
							<% int lkhisListSize=lkhisList.size(); 
							if (lkhisListSize> 0) {
								for (int i = 0; i < lkhisListSize; i++) { %>
									<div>
										<div class="num">
											<%=lkhisList.get(i).getLkhisNum()%>
										</div>
<!-- 										<div class="title"> -->
<%-- 											<a href="../vdodtl/detail.do?vdodtlNum=<%=lkhisList.get(i).getVdodtlNum()%>"> --%>
<!-- 											</a> -->
<!-- 										</div> -->
										<div class="date">
											<%=lkhisList.get(i).getLkhisDown()%>
										</div>
										<div class="delete form-check">
											<input class="form-check-input" type="checkbox" name="check" style="float:none; margin-left:0em" value="<%=lkhisList.get(i).getLkhisNum()%>">
										</div>
									</div>
									<% } } else { } %>
						</div>
						<div style="margin: 30px;">
							<button type="button" class="btn btn-light" onclick="location.href='../wislist/list.do'">뒤로가기</button>
							<button type="button" class="btn btn-outline-light" id="del_btn" onclick="f_del()">선택 삭제</button>
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
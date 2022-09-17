<%@page import="kr.or.ddit.ott.vdodtl.vo.VdodtlVO"%>
<%@page import="comm.vo.AtchFileVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
 	pageEncoding="UTF-8"%> 
<% 
	VdodtlVO vo = (VdodtlVO) request.getAttribute("vo");

 	List<AtchFileVO> atchFileList = (List<AtchFileVO>) request.getAttribute("atchFileList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<title>영상물 상세 내용</title>
<style>
	.cardd {
		display: flex;
		justify-content: center;
		align-items: center;
	}
	a {
		color: black;
	}
	.btn-success {
		margin-left: 50px;
	}
	.btn-danger {
		margin-left: 50px;
	}
</style>
</head>
<body>
	<form action="update.do" method="post" enctype="multipart/form-data">
		<div class="card mb-3" style="max-width: 540px; left: 35%; top: 50%;">
			<div class="row g-0">
			  <div class="col-md-4">
				<%
 					if (atchFileList != null) {
 					for (AtchFileVO fileVO : atchFileList) {
				%>
				<img src="<%=request.getContextPath() %>/filedown.do?fileId=<%=fileVO.getAtchFileId() %>&fileSn=<%=fileVO.getFileSn() %>">
				<%
  						}
					}
				%>
			  </div>
			  <div class="col-md-8">
				<div class="card-body">
				  영상물 번호 : <span><%=vo.getVdodtlNum()%></span>
				  <h5 class="card-title"><input type="text" name="vdodtlNm" value="<%=vo.getVdodtlNm()%>"></h5>
				  영상물 장르번호 :<input type="text" name="vdotyNum" value="<%=vo.getVdotyNum()%>"><br>
				  영상물 등급번호 :<input type="text" name="vdolevNum" value="<%=vo.getVdolevNum()%>">
				  <p class="card-text">영상물 상세 줄거리<input type="text" name="vdodtlDtl" value="<%=vo.getVdodtlDtl()%>"></p>
				  <p class="card-text">영상물 요약 내용<small class="text-muted"><input type="text" name="vdodtlSumy" value="<%=vo.getVdodtlSumy()%>"></small></p><br>
				  영상물  등록일:<p class="card-text"><input type="date" name="vdodtlRedt" value="<%=vo.getVdodtlRedt()%>"></p>
				  영상물  좋아요 수:<p class="card-text"><input type="text" name="vdodtlLik" value="<%=vo.getVdodtlLik()%>"></p>
				</div>
			  </div>
			</div>
		</div>
		<div class="cardd">
			<div><button type="button" class="btn btn-primary"><a href="list.do">[목록]</a></button></div>
			<div><button type="button" class="btn btn-success"><a
				href="update.do?vdodtlNum=<%=vo.getVdodtlNum()%>">[영상물 수정]</a></button></div>
			<div><button type="button" class="btn btn-danger"><a
				href="delete.do?vdodtlNum=<%=vo.getVdodtlNum()%>">[영상물 삭제]</a></button></div>
		</div>
	</form>


	
 <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
 <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</body>
</html>
<%@page import="kr.or.ddit.ott.vdodtl.vo.VdodtlVO"%>
<%@page import="java.util.List"%>
<%@page import="comm.vo.AtchFileVO"%>
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
<title>기존 회원 등록</title>
</head>
<body>
	<form action="update.do" method="post" enctype="multipart/form-data">
		<input type="hidden" name="vdodtlNum" value="<%=vo.getVdodtlNum()%>">
		<table>
			<tr>
				<td>영상물 장르번호 :</td>
				<td><input type="text" name="vdotyNum"
					value="<%=vo.getVdotyNum()%>"></td>
			</tr>
			<tr>
				<td>영상물 관람 등급 :</td>
				<td><input type="text" name="vdolevNum"
					value="<%=vo.getVdolevNum()%>"></td>
			</tr>
			<tr>
				<td>영상물 이름 :</td>
				<td><input type="text" name="vdodtlNm"
					value="<%=vo.getVdodtlNm()%>"></td>
			</tr>
			<tr>
				<td>영상물 요약 정보 :</td>
				<td><input type="text" name="vdodtlSumy"
					value="<%=vo.getVdodtlSumy()%>"></td>
			</tr>

			<tr>
				<td>영상물 상세 정보 :</td>
				<td><textarea rows="3" cols="20" name="vdodtlDtl"><%=vo.getVdodtlDtl()%></textarea></td>
			</tr>
			<tr>
				<td>첨부파일 :</td>
			<td>
				<%
 					if (atchFileList != null) {
 					for (AtchFileVO fileVO : atchFileList) {
				%>
				<div>
					<!-- <a href="#"><%=fileVO.getOrignlFileNm()%></a> -->
					<img src="<%=fileVO.getOrignlFileNm()%>" alt="">
				</div> 
<%
  	}
 }
 %>
			</td>
			</tr>

		</table>
		<input type="submit" value="영상물 정보 수정">
	</form>
</body>
</html>
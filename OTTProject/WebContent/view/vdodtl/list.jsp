<%@page import="kr.or.ddit.ott.vdodtl.vo.VdodtlVO"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	List<VdodtlVO> vdodtlList = (List<VdodtlVO>) request.getAttribute("vdodtlList");

String msg = session.getAttribute("msg") == null ? "" : (String) session.getAttribute("msg");
session.removeAttribute("msg"); // 꺼내온 메시지 속성값 삭제하기
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록</title>
</head>
<body>

	<table border="1" bgcolor="aqua">
		<tr>
			<th>영상물 번호</th>
			<th>영상물 이름</th>
			<th>영상 요약 정보</th>
			<th>영상의 좋아요 수</th>
			<th>영상 등록일</th>
			<th>첨부파일</th>
			
			
		</tr>

		<%
			int vdodtlSize = vdodtlList.size();
		if (vdodtlSize > 0) {
			for (int i = 0; i < vdodtlSize; i++) {
		%>

		<tr>
			<td><%=vdodtlList.get(i).getVdodtlNum() %></td>
			<td><a href="detail.do?vdodtlNum=<%=vdodtlList.get(i).getVdodtlNum()%>"><%=vdodtlList.get(i).getVdodtlNm()%></a></td>
			<td><%=vdodtlList.get(i).getVdodtlSumy()%></td>
			<td><%=vdodtlList.get(i).getVdodtlLik()%></td>
			<td><%=vdodtlList.get(i).getVdodtlRedt()%></td>
			<td><%=vdodtlList.get(i).getAtchFileId()%></td>
		</tr>

		<%
			}
		} else {
		%>
		<tr>
			<td colspan="5">회원정보가 없습니다.</td>
		</tr>
		<%
			}
		%>
		<tr>
			<td colspan="4"><a href="insert.do">[회원정보 등록]</a></td>

		</tr>
	</table>
	<%
		if (msg.equals("성공")) {
	%>
	<script>
		alert("정상적으로 처리되었습니다.");
	</script>
	-->
	<%
		}
	%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 등록</title>
<link rel="stylesheet" href="../view/css/board.css">
</head>
<body>
<form id="serch-form" action="search.do" method="get">
	<select name="type">
		<option selecte value="">검색 내용 선택</option>
		<option value ="title">제목</option>
		<option value ="cont">내용</option>
	</select>
	<input type="text" name="keyword" value=""></input>
	<input type="button" onclick="searchNtcList()" value="검색"></input>
	
</form>
</body>
</html>
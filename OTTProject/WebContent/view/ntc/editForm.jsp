<%@page import="kr.or.ddit.ott.ntc.vo.NtcVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%
	NtcVO vo = (NtcVO) request.getAttribute("vo");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 수정</title>
<link rel="stylesheet" href="../view/css/board.css">
</head>
<body>
<form action="update.do" method="post">
	<div class="board_wrap">
        <div class="board_title">
            <strong>공지사항</strong>
            <p>공지사항을 빠르고 정확하게 안내해드립니다.</p>
        </div>
        <div class="board_write_wrap">
            <div class="board_write">
                <div class="title">
					<input type="hidden" name="ntcNum" value="${vo.ntcNum}">
                    <dl>
                        <dt>제목</dt>
                        <dd><input type="text" name="ntcTit" placeholder="제목 입력" value="${vo.ntcTit}" required></dd>
                    </dl>
                </div>
                <div class="info">
                    <dl>
                        <dt>작성자</dt>
                        <dd><input type="text" value="관리자" disabled></dd>
                    </dl>
                </div>
                <div class="cont">
                  <textarea placeholder="내용 입력" name="ntcCon" placeholder="내용">
					${vo.ntcCon}
				  </textarea>
                </div>
            </div>
            <div class="bt_wrap">
				<input type="submit" value="수정" class="on">
				<a href="list.do">취소</a>
            </div>
        </div>
    </div>
	
</form>





<!-- <h3>수정하기</h3>
<form action="update.do" method="post">
	<input type="hidden" name="ntcNum" value="${vo.ntcNum}">
	<input type="text" name="ntcTit" value="${vo.ntcTit}" required><br>
	<textarea rows="4" cols="25" name="ntcCon" placeholder="내용">${vo.ntcCon}</textarea><br>
	<input type="submit" value="수정"> 
</form> -->
</body>
</html>
<%@page import="kr.or.ddit.ott.oob.vo.OobVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%
	OobVO ov = (OobVO) request.getAttribute("ov");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의 글 수정</title>
<link rel="stylesheet" href="../view/css/board.css">
</head>
<body>
<form action="update.do" method="post">
	<div class="board_wrap">
        <div class="board_title">
            <strong>1:1 문의 게시판</strong>
            <p>수정할까요?</p>
        </div>
        <div class="board_write_wrap">
            <div class="board_write">
                <div class="title">
					<input type="hidden" name="oobNum" value="${ov.oobNum}">
                    <dl>
                        <dt>제목</dt>
                        <dd><input type="text" name="oobTit" placeholder="제목 입력" value="${ov.oobTit}" required></dd>
                    </dl>
                </div>
                <div class="info">
                    <dl>
                        <dt>작성자</dt>
                        <dd><input type="text" value="" disabled></dd>
                    </dl>
                </div>
                <div class="cont">
                  <textarea placeholder="내용 입력" name="oobCon" placeholder="내용">
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
</body>
</html>
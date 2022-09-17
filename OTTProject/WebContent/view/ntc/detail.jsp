<%@page import="kr.or.ddit.ott.ntc.vo.NtcVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	NtcVO vo = (NtcVO) request.getAttribute("vo");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 내용</title>
<link rel="stylesheet" href="../view/css/board.css">
</head>
<body>

<form id="id_rform" action="update.do" method="post">
    <input type="hidden" name="nm_gnum" value="">
    <div class="board_wrap">
        <div class="board_title">
            <strong>공지사항</strong>
            <p>공지사항을 빠르고 정확하게 안내해드립니다.</p>
        </div>
        <div class="board_view_wrap">
            <div class="board_view">
                <div class="title">
                    <input type="text" name="ntcTit" value="${vo.ntcTit}" style="font-size: 2rem; border: none; width: 70%;">
                </div>
                <div class="info">
                    <dl class="abc">
                        <dt>글 번호</dt>
                        <dd>${vo.ntcNum}</dd>
                    </dl>
                    <dl>
                        <dt>작성자</dt>
                        <dd><input type="text" name="" value="관리자" disabled style="border: none; background: white;"></dd>
                    </dl>
                    <dl>
                        <dt>작성일</dt>
                        <dd><input type="date" name="ntcDate" value=""  style="border: none">${vo.ntcDate}</dd>
                    </dl>
                </div>
                <div class="cont">
                    <textarea name="ntcCon" cols="75" rows="10" required>${vo.ntcCon}</textarea>
                </div>
            </div>
            <div class="bt_wrap">
                <a href="update.do?ntcNum=${vo.ntcNum}">수정하기</a>
                <a href="list.do">뒤로가기</a>
                
            </div>
        </div>
    </div>
</form>


<!-- <h3>글 정보</h3>
<p>번호:${vo.ntcNum}</p>
<p>제목:${vo.ntcTit}</p>
<p>내용:${vo.ntcCon}</p>
<p>등록일자:${vo.ntcDate}</p>
<a href="update.do?ntcNum=${vo.ntcNum}"><button>수정</button></a>
<a href="delete.do?ntcNum=${vo.ntcNum}"><button>삭제</button></a> -->
</body>
</html>
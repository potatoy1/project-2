<%@page import="kr.or.ddit.ott.oob.vo.OobVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	OobVO vo = (OobVO) request.getAttribute("ov");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의글 내용</title>
<link rel="stylesheet" href="../view/css/main.css">
<style>
    div {
        /* border: 3px solid red; */
    }
</style>

</head>

<body>
    <form id="id_rform" action="update.do" method="post">
        <input type="hidden" name="nm_gnum" value="">

        <div id="page-wrapper">

            <!-- Header -->
            <%@include file="../../header.jsp" %>
                <!-- Main -->
                <article id="main">
                    <div class="board_wrap">
                        <div class="board_title">
                            <h2>1:1 문의</h2>
                            <p>무엇이든 문의하세요</p>
                        </div>
                        <div class="board_view_wrap">
                            <div class="board_view">
                                <dt>제목</dt>
                                <div class="title" style="padding: 10px;">
                                    <input type="text" name="oobTit" value="${ov.oobTit}"
                                        style="border: none; width: 70%;">
                                </div><br>
                                <div class="info">
                                    <div>
                                        <dl class="abc">
                                            <dt>글 번호</dt>
                                            <dd>${ov.oobNum}</dd>
                                        </dl>
                                    </div>
                                    <dl>
                                        <dt>작성자</dt>
                                        <dd><input type="text" name="" value="" disabled style="border: none; background: white;"></dd>
                                    </dl>
                                    <dl>
                                        <dt>작성일</dt>
                                        <dd><input type="date" name="oobDate" value=""
                                                style="border: none">${ov.oobDate}</dd>
                                    </dl>
                                </div>
                                <div class="cont">
                                    <textarea name="oobCon" cols="75" rows="10" required>${ov.oobCon}</textarea>
                                </div>
                            </div>
                            <div class="bt_wrap" style="padding: 20px;">
                                <a href="update.do?oobNum=${ov.oobNum}">수정하기</a>
                                <a class="on" id="id_del" href="delete.do?oobNum=${ov.oobNum}">삭제하기</a>
                            </div>
                        </div>
                    </div>
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
</form>
</body>

</html>
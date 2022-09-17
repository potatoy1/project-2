<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1게시판 등록</title>
<link rel="stylesheet" href="../view/css/main.css">

    <style>
        div {
            /* border: 3px solid red; */
        }
    </style>

</head>

<body>
    <form id="id_wform" action="insert.do" method="post">
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
                        <div class="board_write_wrap">
                            <div class="board_write">
                                <div class="title">
                                    <dl>
                                        <dt>제목</dt>
                                        <dd><input type="text" name="oobTit" value="" placeholder="제목 입력" required oninvalid="f_check1(this)">
                                        </dd>
                                    </dl>
                                </div>
                                <div class="info">
                                    <dl>
                                        <dt>작성자</dt>
                                        <dd><input type="text" name="memNum" value="" placeholder=""></dd>
                                    </dl>
                                </div>
                                <div class="cont">
                                    <textarea name="oobCon" cols="50" rows="10" placeholder="내용 입력"
                                        required></textarea>
                                </div>
                            </div>
                            <div class="bt_wrap" style="padding: 20px;">
                                <input type="submit" value="등록">
                                <input type="button" onclick="location.href='../oob/list.do'" value="취소">
                                <!-- <button type="button" class="btn btn-outline-light"
                                onclick="location.href='../oob/list.do'">취소</button> -->
                                <!-- <a href="list.do">취소</a> -->
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
        <script>
	    	function f_check1(p_this){
	    		p_this.setCustomValidity('제목을 입력해주세요!');
	    		p_this.focus();
	    	}
        </script>

</body>

</html>
</form>
</body>

</html>
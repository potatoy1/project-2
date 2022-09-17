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
<form id="id_wform" action="regist.do" method="post">
	<div class="board_wrap">
        <div class="board_title">
            <strong>공지사항</strong>
            <p>공지사항을 빠르고 정확하게 안내해드립니다.</p>
        </div>
        <div class="board_write_wrap">
            <div class="board_write">
                <div class="title">
                    <dl>
                        <dt>제목</dt>
                        <dd><input type="text" name="ntcTit" value="" placeholder="제목 입력" required></dd>
                    </dl>
                </div>
                <div class="info">
                    <dl>
                        <dt>작성자</dt>
                        <dd><input type="text" name="" value="관리자" placeholder="" disabled></dd>
                    </dl>
                </div>
                <div class="cont">
                    <textarea name="ntcCon" cols="50" rows="10" placeholder="내용 입력" required></textarea>
                </div>
            </div>
            <div class="bt_wrap">
                <input type="submit" value="등록">
                <a href="list.do">취소</a>
            </div>
        </div>
    </div>

</form>
</body>
</html>
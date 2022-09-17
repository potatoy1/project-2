<%@page import="kr.or.ddit.ott.ntc.vo.Paging"%>
<%@page import="kr.or.ddit.ott.ntc.vo.NtcVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	List<NtcVO> ntcList = (List<NtcVO>) request.getAttribute("ntcList");
	String msg = session.getAttribute("msg") == null ? "" : (String) session.getAttribute("msg");
	session.removeAttribute("msg");
	
	int cnt = ntcList.size();
	
	// 한 페이지에  출력될 글 수
	int pageSize = 10;
	
	// 현 페이지 설정 정보
	String pageNum = request.getParameter("pageNum");
	if(pageNum == null){
		pageNum = "1";
	}
	
	int currentPage = Integer.parseInt(pageNum);   
	int startRow = (currentPage-1)*pageSize + 1;
    int endRow = startRow + (pageSize -1);

%>
<%if(cnt != 0){ 
      ////////////////////////////////////////////////////////////////
      // 페이징 처리
      // 전체 페이지수 계산
      int pageCount = cnt / pageSize + (cnt%pageSize==0?0:1);
      
      // 한 페이지에 보여줄 페이지 블럭
      int pageBlock = 10;
      
      // 한 페이지에 보여줄 페이지 블럭 시작번호 계산
      int startPage = ((currentPage-1)/pageBlock)*pageBlock+1;
      
      // 한 페이지에 보여줄 페이지 블럭 끝 번호 계산
      int endPage = startPage + pageBlock-1;
      if(endPage > pageCount){
         endPage = pageCount;
      }   
      if(endRow > (cnt-1)){
         endRow = cnt-1;
      }
   %>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="stylesheet" href="../view/css/board.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>

<body>
	<div class="board_wrap">
		<div class="board_title">
			<strong>공지사항</strong>
			<p>공지사항을 빠르고 정확하게 안내해드립니다.</p>
		</div>
		<div class="board_list_wrap">
			<div class="board_list">
			
				<div class="top">
					<div class="num">번호</div>
					<div class="title">제목</div>
					<div class="date">작성일</div>
					<div class="delete">삭제</div>
				</div>
				

				<%
					for (int i = startRow; i <= endRow; i++) {
				%>

				<div>
					<div class="num">
						<%=ntcList.get(i).getNtcNum()%>
					</div>
					<div class="title">
						<a class="ntc"
							href="detail.do?ntcNum=<%=ntcList.get(i).getNtcNum()%>"> <%=ntcList.get(i).getNtcTit()%>
						</a>
					</div>
					<div class="con"></div>
					<div class="date">
						<%=ntcList.get(i).getNtcDate()%>
					</div>
					<div class="delete">
						<input id="check" type="checkbox" name="check" value="<%=ntcList.get(i).getNtcNum()%>">
					</div>
				</div>
				<%
				};
				%>
			</div>

			<div class="board_page">
				<% if(startPage>pageBlock){ %>
			      <a class="bt first" href="list.do?pageNum=<%=startPage-pageBlock%>">&nbsp;Prev</a>
			   <%} %>
			    
			   <% for(int i=startPage;i<=endPage;i++){ %>
					<% if(i == currentPage){ %>
						<a class="num on" href="list.do?pageNum=<%=i%>"><%=i %>&nbsp;</a>
					<% } else { %>
						<a class="num" href="list.do?pageNum=<%=i%>"><%=i %>&nbsp;</a>
					<% } %>
			   <%} %>
			  
			   <% if(endPage<pageCount){ %>
			      <a class="bt last" href="list.do?pageNum=<%=startPage+pageBlock%>">&nbsp;Next</a>
			   <%} %>

<!-- 				   <a href="list.jsp?pNum=1" class="bt" first="">&lt;&lt;</a><a -->
<!-- 					class="num on" href="list.jsp?pNum=1">1</a><a class="num" -->
<!-- 					href="list.jsp?pNum=2">2</a><a class="num" href="list.jsp?pNum=3">3</a><a -->
<!-- 					class="num" href="list.jsp?pNum=4">4</a><a class="num" -->
<!-- 					href="list.jsp?pNum=5">5</a><a class="bt last" -->
<!-- 					href="list.jsp?pNum=5">&gt;&gt;</a> -->
			</div>
			<div class="bt_wrap">
				<a href="../ntc/regist.do" class="on">새글 작성</a>
				<input id="del_btn" type="button"  value="체크박스 삭제" onclick="f_del()">
			</div>
		</div>
	</div>
	<%
		if (msg.equals("성공")) {
	%>
	<script>
		alert("정상적으로 처리되었습니다.");
	</script>
			   	<% } %>
	<% } %>

	<script>
		var btn = document.querySelector("#check");
		function f_del(){
		   let checkedVals = []; // 빈 배열
		   var queryString="";
		   $("input[name=check]:checked").val((p_index,p_value) => {
		      queryString += "ntcNum="+p_value+"&";
		   });
		   alert(queryString);
	
		   $.ajax({
		      type:"get",
		      url:"<%=request.getContextPath()%>/ntc/delete.do",
		      data: queryString,
		      dataType:"text",
		      success:function(rslt){
		         if(rslt == "OK"){
		            location.href= "<%=request.getContextPath()%>/ntc/list.do";
		         }
		      },
		      error:function(request,status,error){        
		         console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);       
		       }
		   })
		}
	</script>
	</body>
	</html>

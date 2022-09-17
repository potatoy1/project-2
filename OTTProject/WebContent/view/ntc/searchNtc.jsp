<%@page import="kr.or.ddit.ott.ntc.vo.NtcVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	List<NtcVO> ntcList = (List<NtcVO>) request.getAttribute("ntcList");
	

	String msg = session.getAttribute("msg") == null ? "" : (String) session.getAttribute("msg");
	session.removeAttribute("msg");
	NtcVO vo = new NtcVO();
	vo.setNtcTit(request.getParameter("ntcTit"));
	
%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="../view/css/board.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>

<body>

	<div class="board_wrap">
		<div class="board_title">
			<strong>공지사항</strong>
			<h3>공지사항을 빠르고 정확하게 안내해드립니다.</h3>
			<form action="search.do" method="GET">
			    <div class="mx-quto input-group mt-5">
						<button type="button" class="btn btn-info" ><a href="list.do" >전체목록</a></button>
			        <mx-auto>
			            <input name="ntcTit" type="text" class="form-control" placeholder="검색어 입력" aria-label="search" aria-describedby="button-addon2" value="">
			        </mx-auto>
			        
			        <button class="btn btn-success" type="submit" id="button-addon2">검색</button>
			    </div>
			</form>
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
					int ntcSize = ntcList.size();
					if(ntcSize > 0 ){
					for (int i = 0; i < ntcSize; i++) {
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
						}
					} else {
				%>
			</div>
				<%
					}
				%>
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

	<script>
		var btn = document.querySelector("#check");
		function f_del(){
		   let checkedVals = []; // 빈 배열
		   var queryString="";
		   $("input[name=check]:checked").val((p_index,p_value)=> {
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
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
	</body>
	</html>

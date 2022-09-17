<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<title>신규 회원 등록</title>
<style>
      .list-group1 {
		    display: flex;
		    justify-content: space-around;
		    padding-left: 0;
		    margin-bottom: 0;
		    border-radius: 0.25rem;
		}
		.list-group-item {
	    	width: 120px;
		}
		.list-group-item2 {
		    position: relative;
		    display: block;
		    padding: 0.75rem 1.25rem;
		    background-color: #fff;
		    border: 1px solid rgba(0,0,0,.125);
		    border-top-width: 1;
		    width: 120px;
		}
	  </style>
</head>
<body>
   <form action="insert.do" method="post" enctype="multipart/form-data">
   
   
   
   
      <table>
      <tr> 
         <td>영상물 번호</td>
         <td><input type="text" name= "vdodtlNum" value="" disabled></td>
      </tr>
      <tr> 
         <td>영상물 장르 번호</td>
         <td>
         
         <ul class="list-group1 mt-5">
		<li class="list-group-item"><input class="form-check-input me-1"
			type="checkbox" value="" id="firstCheckboxStretched"> <label
			class="form-check-label stretched-link" for="firstCheckboxStretched">
			로맨스
				</label></li>
		<li class="list-group-item2"><input class="form-check-input me-1"
			type="checkbox" value="" id="secondCheckboxStretched"> <label
			class="form-check-label stretched-link" for="secondCheckboxStretched"> 
			코미디
				</label></li>
		<li class="list-group-item2" style="border-top-width: 1;"><input class="form-check-input me-1"
			type="checkbox" value="" id="thirdCheckboxStretched"> <label
			class="form-check-label stretched-link" for="thirdCheckboxStretched">스릴러
				</label></li>
	</ul>
	
	<ul class="list-group1">
		<li class="list-group-item"><input class="form-check-input me-1"
			type="checkbox" value="" id="fourthCheckboxStretched"> <label
			class="form-check-label stretched-link" for="fourthCheckboxStretched">미스터리
				</label></li>
		<li class="list-group-item"><input class="form-check-input me-1"
			type="checkbox" value="" id="fifthCheckboxStretched"> <label
			class="form-check-label stretched-link" for="fifthCheckboxStretched">액  션
				</label></li>
		<li class="list-group-item"><input class="form-check-input me-1"
			type="checkbox" value="" id="sixthCheckboxStretched"> <label
			class="form-check-label stretched-link" for="sixthCheckboxStretched">판타지
				</label></li>
	</ul>
	<ul class="list-group1">
		<li class="list-group-item"><input class="form-check-input me-1"
			type="checkbox" value="" id="seventhCheckboxStretched"> <label
			class="form-check-label stretched-link" for="seventhCheckboxStretched">공포
				</label></li>
		<li class="list-group-item"><input class="form-check-input me-1"
			type="checkbox" value="" id="eighthCheckboxStretched"> <label
			class="form-check-label stretched-link" for="eighthCheckboxStretched">키즈
				</label></li>
		<li class="list-group-item"><input class="form-check-input me-1"
			type="checkbox" value="" id="ninethCheckboxStretched"> <label
			class="form-check-label stretched-link" for="ninethCheckboxStretched">애니
				</label></li>
	</ul>
         
         
         
         
         
         
         </td>
         
      </tr>
      
      <tr> 
         <td>영상물 관람 등급 번호</td>
         <td><input type="text" name= "vdolevNum" value=""></td>
      </tr>
      <tr> 
         <td>영상물 이름</td>
         <td><input type="text" name= "vdodtlNm" value=""></td>
      </tr>
      
      <tr> 
         <td>영상 상세 정보</td>
         <td><textarea rows="3" cols="20" name= "vdodtlDtl"></textarea></td>
      </tr>
      <tr> 
         <td>영상 요약 정보</td>
         <td><textarea rows="3" cols="20" name= "vdodtlSumy"></textarea></td>
      </tr>

      <tr> 
         <td>첨부파일 이미지 :</td>
         <td><input type="file" name="atchFile"></td>
      </tr>
               
      </table>
      <input type="submit" value="영상물 등록">
   </form>
   <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</body>
</html>
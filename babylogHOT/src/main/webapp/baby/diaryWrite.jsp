<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="cpath" value="${pageContext.request.contextPath}" />
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다이어리 - 작성 </title>
<!-- style -->
<link rel="stylesheet" href="${cpath}/css/reset.css">
<link rel="stylesheet" href="${cpath}/css/common.css">
<link rel="stylesheet" href="${cpath}/css/diary.css">
<link rel="stylesheet" href="${cpath}/css/diaryWrite.css">

<!-- 슬릭 -->
<link rel="stylesheet" type="text/css" href="${cpath}/css/slick.css" />
<link rel="stylesheet" type="text/css" href="${cpath}/css/slick-theme.css" />

<!-- 웹아이콘 -->
<script src="https://kit.fontawesome.com/e76461f593.js"
	crossorigin="anonymous"></script>


<!-- AJAX 관련 JS -->
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#btn").click(function(){
		
		var maxSize = 4096;  // 파일 크기 : 4메가
		
		// Input file 태그
		var file = document.getElementById('diary_file');
		//파일 경로.
		var filePath = file.value;
		//전체경로를 \ 나눔.
		var filePathSplit = filePath.split('\\'); 
		//전체경로를 \로 나눈 길이.
		var filePathLength = filePathSplit.length;
		//마지막 경로를 .으로 나눔.
		var fileNameSplit = filePathSplit[filePathLength-1].split('.');
		//파일명 : .으로 나눈 앞부분
		var fileName = fileNameSplit[0];
		//파일 확장자 : .으로 나눈 뒷부분
		var fileExt = fileNameSplit[1];
		
		
		
		//파일 경로 제외 파일이름
		var file_FullName = fileName + "." + fileExt;
		var mem_id = $("#mem_id").val();
		var mem_nick =  $("#mem_nick").val();
		var diary_title =  $("#diary_title").val();
		var diary_content =  $("#diary_content").val();
		
		
		var postdata = {
				'mem_id' : mem_id,
				'mem_nick' : mem_nick,
				'diary_title' : diary_title,
				'diary_content' : diary_content,
				'file_FullName' : file_FullName
				
		}
		
		$.ajax({
			url : "http://59.0.234.211:3700/DLWeb",
			type : "post",
			data : JSON.stringify(postdata),
			dataType: 'JSON',
			contentType : "application/json",
			success : function(){
				console.log("성공")
			},
			error : function(){
				console.log("실패")
			}
		})
		
		
		
	})
	
	
	
})

 

  function move_page(){
	setTimeout("location.href='${cpath}/diary.do'", 1000); //2초후에 move_page함수실행
  }

</script>

<!-- AJAX 관련 JS  -->
</head>
<body>
	<%@ include file="header.jsp" %>
	
<!-- //게시판 영역 -->
</main>
	
<form enctype = "multipart/form-data">

<div class="container">
    <div class="board_wrap">
        <div class="board_title">
            <strong>다이어리</strong>
            <p>일기를 작성해 주세요</p>
        </div>
        <!-- // board title  -->
        <div class="board_write">
            <div class="title">
                <dl>
                    <dt>목록</dt>
                    <dd>
                        <select name='diary_type'>
                            <option selected>태그</option>
                            <option value='01'>미정</option>
                            <option value='02'>미정</option>
                            <option value='03'>미정</option>
                        </select>
                    </dd>
                </dl>
                <dl>
                    <dt>제목</dt>
                    <dd><input type="text" placeholder="제목 입력" name ="diary_title" id = 'diary_title'></dd>
                </dl>
            </div>
            <div class="info">
                <dl>
                    <dt>글쓴이</dt>
                    <dd><input type="text" name = "mem_nick" value = "${mvo.mem_nick}" id = 'mem_nick' readonly/></dd>
                    <dd><input type="hidden" name = "mem_id" value = "${mvo.mem_id}" id = 'mem_id' readonly/></dd>
                    
                </dl>
                <dl>
                    <dt>첨부파일</dt>
                    <dd><input type="file" name = "diary_file" id = 'diary_file'></dd>
                </dl>

                
            </div>
            <div class="cont">
                <textarea placeholder="내용 입력" name = "diary_content" id = "diary_content"></textarea>
            </div>
        </div>
        <div class="bt_wrap">
            <button type="button" id = 'btn' onclick = "move_page()"  >등록</button>
            <button type="reset">취소</button>
        </div>
    </div>
</div>
<!-- //container -->
</form>
<!-- //board -->

<jsp:include page="footer.jsp" flush="true"/>

<!-- script -->	
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="${cpath}/js/slick.min.js"></script>
<script src="${cpath}/js/diary.js"></script>
<script src="${cpath}/js/nav.js"></script>
</body>
</html>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>mypage</title>

<!-- style -->
<link rel="stylesheet" href="${cpath}/css/reset.css">
<link rel="stylesheet" href="${cpath}/css/common.css">
<link rel="stylesheet" href="${cpath}/css/mypage.css">

<!-- 슬릭 -->
<link rel="stylesheet" type="text/css" href="${cpath}/css/slick.css" />
<link rel="stylesheet" type="text/css" href="${cpath}/css/slick-theme.css" />

<!-- 웹아이콘 -->
<script src="https://kit.fontawesome.com/e76461f593.js"
	crossorigin="anonymous"></script>
	
    
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
	
	<!-- 파일 선택 가리기 -->


    <script type = "text/javascript">
   
    let userData = ''
    
    function updateform(res){
    	
    	$("#fileDiv").css("display","block");
    	
    	console.log('update form function',res)
    	userData = res
    	
    	console.log('mem id : ',mem_id)
    	var mem_id = $("#mem_id").text();
    	var temp = $("#ment").text();
    	var newMent = "<input type = 'text' id = 'ment2' class = 'form-control' value = '"+temp+"'/>";
    	$("#ment").html(newMent);
    	var newMentBtn = "<button onclick= 'updateprof()'>수정하기</button>";
    
    	console.log(newMentBtn)
    	$("#profBtn").html(newMentBtn);
    	
    	
    }
    
    function updateprof(){
    	console.log('update prof function',userData)
    	var mem_id = $("#mem_id").text();
    	var mem_prof = $("#mem_prof").val();
       	var mem_ment = $("#ment2").val();
       	
       	
       	$(document).ready(function() { 
       	
       		
       	console.log('ajax 통신')
       	

       	
    	 $("#updateform").ajaxSubmit({
    		url : "${cpath}/updateprof.do",
    		type : "POST",
    		processData: false,
            contentType: false,
    		data : {"mem_id": mem_id,"mem_prof":mem_prof,"mem_ment":mem_ment},
    		success : function(){
    			console.log('success')
    			//location.reload()
    			location.href= "${cpath}/mypage.do";
    		},
    		error : function(){alert("에러!")}	
    	}); 
    	
    	
    });
    
    };
    
    </script>
    
    
    
    
    
    
    
</head>
<body>

	<%@ include file="header.jsp" %>
	
	<div class="banner"></div>
<!-- //공백  -->

	  <main class="container">
          
	iv>
        </form>
        <!-- //tag -->

        <section class="gallery">
              <div class="toolbar">
                <div class="search-wrapper">
                  <input type="search" placeholder="Search for photos">
                  <div class="counter">
                    Total photos: <span>0</span></div>
                </div>
                <ul class="view-options">
                  <li class="zoom">
                    <input type="range" min="180" max="380" value="280">
                  </li>
                  <li class="show-grid active">
                    <button>
                      <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/162656/grid-view.svg" alt="grid view">
                    </button>
                  </li>
                  <li class="show-list">
                    <button>
                      <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/162656/list-view.svg" alt="list view">
                    </button>
                  </li>
                </ul>
              </div>
              <!-- //toolbar -->
             
             
              <ol class="image-list grid-view"> 
            
              <c:forEach var="vo" items = "${list}">
             
                <li>
                  <figure>
                   
                    <div class="fit">
                    <c:if test = "${vo.mem_id==mvo.mem_id}">
                      <c:choose>
                      	<c:when test="${vo.diary_file != null}">
                      	<a href="${cpath }/diaryDetail.do?diary_seq=${vo.diary_seq}" onclick = "reload();"><img src="${cpath }/img/${vo.diary_file}" alt="다이어리"></a>
                       </c:when>
                       <c:otherwise>
                         <a href="${cpath }/diaryDetail.do?diary_seq=${vo.diary_seq}" onclick = "reload();"><img src="${cpath}/img/diary2.jpg" alt="1번 다이어리"></a>
                       </c:otherwise>
                       </c:choose>
                    </div>
                    <figcaption>
                      <div class="title"><p>${vo.diary_title}</p></div>
                      <div class="diary_info">
                      <span>작성자 <a href="" target="_blank">${vo.mem_nick}</a></span>
                      <span>22.12.09</span>
                      </div>
                      <p class="emotion">#중립</p>
                    </figcaption>
                    </c:if>
                  </figure>
                </li>
				</c:forEach>



	
	<!-- script -->

	<script src="${cpath}/js/slick.min.js"></script>
	<script src="${cpath}/js/diary.js"></script>
	<script src="${cpath}/js/nav.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
	
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.js"></script> 
    <script src="https://malsup.github.io/jquery.form.js"></script> 
	
	 <script>
        function onClickUpload() {
            let myInput = document.getElementById("my-input");
            myInput.click();
        }
    </script>
	
	
</body>
</html>
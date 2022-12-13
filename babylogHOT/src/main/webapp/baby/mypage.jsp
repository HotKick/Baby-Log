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

<!-- 슬릭 -->
<link rel="stylesheet" type="text/css" href="${cpath}/css/slick.css" />
<link rel="stylesheet" type="text/css" href="${cpath}/css/slick-theme.css" />

<!-- 웹아이콘 -->
<script src="https://kit.fontawesome.com/e76461f593.js"
	crossorigin="anonymous"></script>
</head>
<body>

	<%@ include file="header.jsp" %>

	  <main class="container">
          
		<form action="">
        <div class="profile_wrap">
            <div class="pro_img">
                <img src="img/diary12.jpg" alt="프로필이미지">
                <input type="button" value="+">
            </div>
            <div class="pro_info">
                <div class="info_wrap">
                <div class="pro_name"><input type="text" value="지야누"></div>
                <div class="pro_id">@yanoo</div>
                <div class="pro_desc">광주에사는 용용이 엄마입니다</div>
                <div class="pro_desc">소통 ㅣ 친목 ㅣ 아기자랑 모두 환영이요 ^^</div>
                <div class="pro_edit"><input type="button" value="프로필 수정"></div>
                </div>
                <div class="tag">
                    <div class="tag_icon">
                      <div class="tag1"><button>감정1</button></div>
                      <div class="tag2"><button>감정2</button></div>
                      <div class="tag3"><button>감정3</button></div>
                      <div class="tag4"><button>감정4</button></div>
                    </div>
                    <div class="bt_wrap">
                        <button type="button" onclick="location.href='${cpath}/diaryWrite.do'">글쓰기</a></button>
                    </div>
                  </div>
                <!-- //tag -->
            </div>
            
            
        </div>
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
                      <c:choose>
                      	<c:when test="${vo.diary_file != null}">
                      	<a href="${cpath }/diaryDetail.do?diary_seq=${vo.diary_seq}" onclick = "reload();"><img src="${cpath }/img/${vo.diary_file}" alt="다이어리"></a>
                       </c:when>
                       <c:otherwise>
                         <a href="${cpath }/diaryDetail.do?diary_seq=${vo.diary_seq}" onclick = "reload();"><img src="${cpath}/img/diary2.jpg" alt="1번 다이어리">
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
                  </figure>
                </li>


	<jsp:include page="footer.jsp" flush="true"/>

	
	<!-- script -->
	<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script src="${cpath}/js/slick.min.js"></script>
	<script src="${cpath}/js/diary.js"></script>
	<script src="${cpath}/js/nav.js"></script>
</body>
</html>
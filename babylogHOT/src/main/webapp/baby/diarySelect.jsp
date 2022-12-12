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
<title>다이어리 사진 선택하기</title>


<!-- style -->
<link rel="stylesheet" href="${cpath}/css/reset.css">
<link rel="stylesheet" href="${cpath}/css/common.css">
<link rel="stylesheet" href="${cpath}/css/diary.css">

<!-- 슬릭 -->
<link rel="stylesheet" type="text/css" href="${cpath}/css/slick.css" />
<link rel="stylesheet" type="text/css" href="${cpath}/css/slick-theme.css" />

<!-- 웹아이콘 -->
<script src="https://kit.fontawesome.com/e76461f593.js"
	crossorigin="anonymous"></script>



</head>
<body>
<%@ include file="header.jsp" %>
  <main id="main" class="container">
          <div class="tag">
            <div class="tag_icon">
              <div class="tag1"><button>감정1</button></div>
              <div class="tag2"><button>감정2</button></div>
              <div class="tag3"><button>감정3</button></div>
            </div>
          </div>
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
                     <div class="on">
                  	<a class="off" href="#"><i class="fa-solid fa-heart"></i></a>
                	</div>
                  </figure>
                </li>
                
           
                </c:forEach>        
              </ol>
              <div class="order">
              <a href="#">결제하기</a>
          </div>
          
          </section>


    </main>



</body>
</html>
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
<title>육아일기</title>

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
		<section id="tag">
			<div class="tag_inner">
				<div class="tag_icon">
					<ul>
						<li><a href="#"><i class="fa-solid fa-star"></i><span
								class="ir_su">분류1</span></a></li>
						<li><a href="#"><i class="fa-solid fa-star"></i><span
								class="ir_su">분류2</span></a></li>
						<li><a href="#"><i class="fa-solid fa-star"></i><span
								class="ir_su">분류3</span></a></li>
						<li><a href="#"><i class="fa-solid fa-star"></i><span
								class="ir_su">분류4</span></a></li>
					</ul>
				</div>
				<button>
					<a href="${cpath}/diaryWriteForm.do">글쓰기</a>
				</button>
			</div>
		</section>
		<!-- //tag -->

		<section id="content">
			<div class="content_inner">
		 <c:forEach var = "vo" items = "${list }"> 
				<div class="cont1">
					<ul class="cont_info">
						<li><a href="${cpath }/diaryDetail.do?diary_seq=${vo.diary_seq}" onclick = "reload();">
						<img class="diary_file"
				src="${cpath}/img/${vo.diary_file}" style="width: 100%"></a></a></li>
						<li><span>${vo.diary_title}</span></a></li>
						<li><a href="#"><span>${vo.mem_id}</span></a></li>
						<li><a href="#"><span>하트</span></a></li>
						</ul>
				</div>
				</c:forEach> 
				</div>
		</section>
	</main>
	
	    <main id="main" class="container">
          <div class="tag">
                <div class="tag_icon">
                  <div class="tag1"><button>분류버튼1</button></div>
                  <div class="tag2"><button>분류버튼2</button></div>
                  <div class="tag3"><button>분류버튼3</button></div>
                </div>
                <div class="bt_wrap">
                    <button type="button" onclick="location.href='diaryWrite.html'">글쓰기</a></button>
                </div>
        </div>
        <!-- //tag -->

        <section class="gallery">
              <div class="toolbar">
                <div class="search-wrapper">
                  <input type="search" placeholder="Search for photos">
                  <div class="counter">
                    Total photos: <span>12</span></div>
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
                <li>
                  <figure>
                    <div class="fit">
                    <a href="diaryDetail.html"><img src="${cpath }/img/diary1.jpg" alt="다이어리"></a>
                    </div>
                    <figcaption>
                      <p>다이어리1</p>
                      <p>작성자 <a href="" target="_blank">야누</a></p>
                    </figcaption>
                  </figure>
                </li>
                <!-- 이미지1 -->
                <li>
                  <figure>
                    <div class="fit">
                    <a href="diaryDetail.html"><img src="img/diary2.jpg" alt="다이어리"></a>
                    </div>
                    <figcaption>
                      <p>다이어리1</p>
                      <p>작성자 <a href="" target="_blank">야누</a></p>
                    </figcaption>
                  </figure>
                </li>
                <!-- 이미지2 -->
                <li>
                  <figure>
                    <div class="fit">
                    <a href="diaryDetail.html"><img src="img/diary3.jpg" alt="다이어리"></a>
                    </div>
                    <figcaption>
                      <p>다이어리1</p>
                      <p>작성자 <a href="" target="_blank">야누</a></p>
                    </figcaption>
                  </figure>
                </li>
                <!-- 이미지3 -->
                <li>
                  <figure>
                    <div class="fit">
                    <a href="diaryDetail.html"><img src="img/diary4.jpg" alt="다이어리"></a>
                    </div>
                    <figcaption>
                      <p>다이어리1</p>
                      <p>작성자 <a href="" target="_blank">야누</a></p>
                    </figcaption>
                  </figure>
                </li>
                <!-- 이미지4 -->
                <li>
                  <figure>
                    <div class="fit">
                    <a href="diaryDetail.html"><img src="img/diary5.jpg" alt="다이어리"></a>
                    </div>
                    <figcaption>
                      <p>다이어리1</p>
                      <p>작성자 <a href="" target="_blank">야누</a></p>
                    </figcaption>
                  </figure>
                </li>
                <!-- 이미지5 -->
                <li>
                  <figure>
                    <div class="fit">
                    <a href="diaryDetail.html"><img src="img/diary6.jpg" alt="다이어리"></a>
                    </div>
                    <figcaption>
                      <p>다이어리1</p>
                      <p>작성자 <a href="" target="_blank">야누</a></p>
                    </figcaption>
                  </figure>
                </li>
                <!-- 이미지6 -->
                <li>
                  <figure>
                    <div class="fit">
                    <a href="diaryDetail.html"><img src="img/diary7.jpg" alt="다이어리"></a>
                    </div>
                    <figcaption>
                      <p>다이어리1</p>
                      <p>작성자 <a href="" target="_blank">야누</a></p>
                    </figcaption>
                  </figure>
                </li>
                <!-- 이미지7 -->
                <li>
                  <figure>
                    <div class="fit">
                    <a href="diaryDetail.html"><img src="img/diary8.jpg" alt="다이어리"></a>
                    </div>
                    <figcaption>
                      <p>다이어리1</p>
                      <p>작성자 <a href="" target="_blank">야누</a></p>
                    </figcaption>
                  </figure>
                </li>
                <!-- 이미지8 -->
                <li>
                  <figure>
                    <div class="fit">
                    <a href="diaryDetail.html"><img src="img/diary9.jpg" alt="다이어리"></a>
                    </div>
                    <figcaption>
                      <p>다이어리1</p>
                      <p>작성자 <a href="" target="_blank">야누</a></p>
                    </figcaption>
                  </figure>
                </li>
                <!-- 이미지9 -->
                <li>
                  <figure>
                    <div class="fit">
                    <a href="diaryDetail.html"><img src="img/diary10.jpg" alt="다이어리"></a>
                    </div>
                    <figcaption>
                      <p>다이어리1</p>
                      <p>작성자 <a href="" target="_blank">야누</a></p>
                    </figcaption>
                  </figure>
                </li>
                <!-- 이미지10 -->
                <li>
                  <figure>
                    <div class="fit">
                    <a href="diaryDetail.html"><img src="img/diary11.jpg" alt="다이어리"></a>
                    </div>
                    <figcaption>
                      <p>다이어리1</p>
                      <p>작성자 <a href="" target="_blank">야누</a></p>
                    </figcaption>
                  </figure>
                </li>
                <!-- 이미지11 -->
                <li>
                  <figure>
                    <div class="fit">
                    <a href="diaryDetail.html"><img src="img/diary12.jpg" alt="다이어리"></a>
                    </div>
                    <figcaption>
                      <p>다이어리1</p>
                      <p>작성자 <a href="" target="_blank">야누</a></p>
                    </figcaption>
                  </figure>
                </li>
                <!-- 이미지12 -->
              </ol>
          </section>

    </main>
	
<jsp:include page="footer.jsp" flush="true"/>

<script type="text/javascript">
function reload(){  
       location.reload();
}
	<!-- script -->
	<script type="text/javascript"
		src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script src="${cpath}/js/slick.min.js"></script>
</body>
</html>
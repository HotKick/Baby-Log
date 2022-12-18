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
<link rel="stylesheet" href="${cpath}/css/diaryMQ.css">

<!-- 슬릭 -->
<link rel="stylesheet" type="text/css" href="${cpath}/css/slick.css" />
<link rel="stylesheet" type="text/css"
	href="${cpath}/css/slick-theme.css" />

<!-- 웹아이콘 -->
<script src="https://kit.fontawesome.com/e76461f593.js"
	crossorigin="anonymous"></script>

<script type="text/javascript">

var dw1 = document.getElementsByClassName('dw1');
var dw2 = document.getElementsByClassName('dw2');
var dw3 = document.getElementsByClassName('dw3');
var dw4 = document.getElementsByClassName('dw4');


    /* 기쁨 버튼 */
	function emo_happy(){
    	
		for(var i =0; i<dw1.length;i++){
			dw1[i].style.display = 'block';
		}
		for(var i =0; i<dw2.length;i++){
			dw2[i].style.display = 'none';
		}
		for(var i =0; i<dw3.length;i++){
			dw3[i].style.display = 'none';
		}
		for(var i =0; i<dw4.length;i++){
			dw4[i].style.display = 'none';
		}
		
	}
    
    /* 슬픔 버튼  */
	function emo_sad(){
    	
		for(var i =0; i<dw1.length;i++){
			dw1[i].style.display = 'none';
		}
		for(var i =0; i<dw2.length;i++){
			dw2[i].style.display = 'block';
		}
		for(var i =0; i<dw3.length;i++){
			dw3[i].style.display = 'none';
		}
		for(var i =0; i<dw4.length;i++){
			dw4[i].style.display = 'none';
		}
		
	}
    
    /* 분노 버튼 */
	function emo_angry(){
    	
		for(var i =0; i<dw1.length;i++){
			dw1[i].style.display = 'none';
		}
		for(var i =0; i<dw2.length;i++){
			dw2[i].style.display = 'none';
		}
		for(var i =0; i<dw3.length;i++){
			dw3[i].style.display = 'block';
		}
		for(var i =0; i<dw4.length;i++){
			dw4[i].style.display = 'none';
		}
	
	}
    
   
    /* 안정 버튼 */
	function emo_neu(){
    	
		for(var i =0; i<dw1.length;i++){
			dw1[i].style.display = 'none';
		}
		for(var i =0; i<dw2.length;i++){
			dw2[i].style.display = 'none';
		}
		for(var i =0; i<dw3.length;i++){
			dw3[i].style.display = 'none';
		}
		for(var i =0; i<dw4.length;i++){
			dw4[i].style.display = 'block';
		}
		
	}
	
	
	
	
	
</script>

</head>
<body>
	<%@ include file="header.jsp"%>


	<main id="main" class="container">
		<div class="tag">
			<div class="tag_icon">
				<div class="tag1">
					<button id=emo1 onclick="emo_happy()">기쁨</button>
				</div>
				<div class="tag2">
					<button id=emo2 onclick="emo_sad()">슬픔</button>
				</div>
				<div class="tag3">
					<button id=emo3 onclick="emo_angry()">화남</button>
				</div>
				<div class="tag4">
					<button id=emo4 onclick="emo_neu()">안정</button>
				</div>
			</div>
			<div class="bt_wrap">
				<button type="button"
					onclick="location.href='${cpath}/diaryWriteForm.do'">
					글쓰기
				</button>
			</div>
		</div>
		<!-- //tag -->

		<section class="gallery">
			<div class="toolbar">
				<div class="search-wrapper">
					<input type="search" placeholder="Search for photos">
					<div class="counter">
						Total photos: <span>0</span>
					</div>
				</div>
				<ul class="view-options">
					<li class="zoom"><input type="range" min="180" max="380"
						value="280"></li>
					<li class="show-grid active">
						<button>
							<img
								src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/162656/grid-view.svg"
								alt="grid view">
						</button>
					</li>
					<li class="show-list">
						<button>
							<img
								src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/162656/list-view.svg"
								alt="list view">
						</button>
					</li>
				</ul>
			</div>
			<!-- //toolbar -->


			<ol class="image-list grid-view">

				<c:forEach var="vo" items="${list}">
					<c:choose>
						<c:when test="${vo.diary_emo==0}">
							<li class="dw1">
								<figure>
									<div class="fit">
										<c:choose>
											<c:when test="${vo.diary_file != null}">
												<a href="${cpath }/diaryDetail.do?diary_seq=${vo.diary_seq}"
													onclick="reload();"><img
													src="${cpath }/img/${vo.diary_file}" alt="다이어리"></a>
											</c:when>
											<c:otherwise>
												<a href="${cpath }/diaryDetail.do?diary_seq=${vo.diary_seq}"
													onclick="reload();"><img src="${cpath}/img/diary2.jpg"
													alt="1번 다이어리"></a>
											</c:otherwise>
										</c:choose>
									</div>
									<figcaption id="fig">
										<div class="title">
											<p>${vo.diary_title}</p>
										</div>
										<div class="diary_info">
											<span>작성자 <a href="" target="_blank">${vo.mem_nick}</a></span>
											<span>${vo.diary_date}</span>
										</div>
										<p class="emotion">#기쁨</p>
									</figcaption>
								</figure>
							</li>
						</c:when>
						<c:when test="${vo.diary_emo==1}">
							<li class="dw2">
								<figure>
									<div class="fit">
										<c:choose>
											<c:when test="${vo.diary_file != null}">
												<a href="${cpath }/diaryDetail.do?diary_seq=${vo.diary_seq}"
													onclick="reload();"><img
													src="${cpath }/img/${vo.diary_file}" alt="다이어리"></a>
											</c:when>
											<c:otherwise>
												<a href="${cpath }/diaryDetail.do?diary_seq=${vo.diary_seq}"
													onclick="reload();"><img src="${cpath}/img/diary2.jpg"
													alt="1번 다이어리"></a>
											</c:otherwise>
										</c:choose>
									</div>
									<figcaption id="fig">
										<div class="title">
											<p>${vo.diary_title}</p>
										</div>
										<div class="diary_info">
											<span>작성자 <a href="" target="_blank">${vo.mem_nick}</a></span>
											<span>${vo.diary_date}</span>
										</div>
										<p class="emotion">#슬픔</p>
									</figcaption>
								</figure>
							</li>
						</c:when>
						<c:when test="${vo.diary_emo==2}">
							<li class="dw3">
								<figure>
									<div class="fit">
										<c:choose>
											<c:when test="${vo.diary_file != null}">
												<a href="${cpath }/diaryDetail.do?diary_seq=${vo.diary_seq}"
													onclick="reload();"><img
													src="${cpath }/img/${vo.diary_file}" alt="다이어리"></a>
											</c:when>
											<c:otherwise>
												<a href="${cpath }/diaryDetail.do?diary_seq=${vo.diary_seq}"
													onclick="reload();"><img src="${cpath}/img/diary2.jpg"
													alt="1번 다이어리"></a>
											</c:otherwise>
										</c:choose>
									</div>
									<figcaption id="fig">
										<div class="title">
											<p>${vo.diary_title}</p>
										</div>
										<div class="diary_info">
											<span>작성자 <a href="" target="_blank">${vo.mem_nick}</a></span>
											<span>${vo.diary_date}</span>
										</div>
										<p class="emotion">#분노</p>
									</figcaption>
								</figure>
							</li>
						</c:when>
						<c:otherwise>
							<li class="dw4">
								<figure>
									<div class="fit">
										<c:choose>
											<c:when test="${vo.diary_file != null}">
												<a href="${cpath }/diaryDetail.do?diary_seq=${vo.diary_seq}"
													onclick="reload();"><img
													src="${cpath }/img/${vo.diary_file}" alt="다이어리"></a>
											</c:when>
											<c:otherwise>
												<a href="${cpath }/diaryDetail.do?diary_seq=${vo.diary_seq}"
													onclick="reload();"><img src="${cpath}/img/diary2.jpg"
													alt="1번 다이어리"></a>
											</c:otherwise>
										</c:choose>
									</div>
									<figcaption id="fig">
										<div class="title">
											<p>${vo.diary_title}</p>
										</div>
										<div class="diary_info">
											<span>작성자 <a href="" target="_blank">${vo.mem_nick}</a></span>
											<span>${vo.diary_date}</span>
										</div>
										<p class="emotion">#안정</p>
									</figcaption>
								</figure>
							</li>
						</c:otherwise>
					</c:choose>



				</c:forEach>
			</ol>

		</section>

	</main>

	<jsp:include page="footer.jsp" flush="true" />



	<!-- script -->
	<script type="text/javascript"
		src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script src="${cpath}/js/slick.min.js"></script>
	<script src="${cpath}/js/diary.js"></script>
	<script src="${cpath}/js/nav.js"></script>


</body>
</html>
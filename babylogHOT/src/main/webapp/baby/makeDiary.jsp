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
<link rel="stylesheet" type="text/css"
	href="${cpath}/css/slick-theme.css" />

<!-- 웹아이콘 -->
<script src="https://kit.fontawesome.com/e76461f593.js"
	crossorigin="anonymous"></script>


<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>
<body>


	<%@ include file="header.jsp"%>
	<div class="banner"></div>



	<main id="main" class="container">
		<div class="tag">
			<div class="tag_icon">
				<div class="tag1">
					<button id=emo1 onclick="emo_happy()">
						<div>
							<img src="${cpath}/icon/happy.png" alt="">
						</div>
						<p>행복</p>
					</button>
				</div>
				<div class="tag2">
					<button id=emo2 onclick="emo_sad()">
						<div>
							<img src="${cpath}/icon/normal.png" alt="">
						</div>
						<p>슬픔</p>
					</button>
				</div>
				<div class="tag3">
					<button id=emo3 onclick="emo_angry()">
						<div>
							<img src="${cpath}/icon/normal.png" alt="">
						</div>
						<p>화남</p>
					</button>
				</div>
				<div class="tag4">
					<button id=emo4 onclick="emo_neu()">
						<div>
							<img src="${cpath}/icon/normal.png" alt="">
						</div>
						<p>편안</p>
					</button>
				</div>
			</div>
			<div class="bt_wrap"></div>
		</div>
		<!-- //tag -->

		<section class="gallery">
			<div class="toolbar">
				<div class="search-wrapper">
					<input type="search" placeholder="Search for photos">
					<div class="counter">
						Total photos: <span>12</span>
					</div>
				</div>
				<ul class="view-options">
					<li class="zoom"><input type="range" min="180" max="380"
						value="280"></li>
					<li class="show-grid active">
						<button>
							<i class="fa-solid fa-border-all"></i>
						</button>
					</li>
					<li class="show-list">
						<button>
							<i class="fa-solid fa-list-ul"></i>
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
												<a class="item" class="disable"><img
													src="${cpath }/img/${vo.diary_file}" alt="다이어리"></a>
											</c:when>
											<c:otherwise>
												<a class="item" class="disable"><img
													src="${cpath}/img/diary2.jpg" alt="1번 다이어리"></a>
											</c:otherwise>
										</c:choose>
									</div>
									<figcaption id="fig">
										<div class="title">
											<p>${vo.diary_title}</p>
										</div>
										<div class="diary_info">
											<span>작성자 <a href="" target="_blank"><strong>${vo.mem_nick}</strong></a></span>
											<span>${vo.diary_date}</span>
										</div>
										<div class="emotion">
											<button class="happy">
												<div>
													<img src="${cpath }/icon/hapyy.png" alt="행복">
												</div>
												<p>행복</p>
											</button>
										</div>

									</figcaption>
									<div class="off"></div>
								</figure>
							</li>
						</c:when>

						<c:when test="${vo.diary_emo==1}">
							<li class="dw2">
								<figure>
									<div class="fit">
										<c:choose>
											<c:when test="${vo.diary_file != null}">
												<a class="item" class="disable"><img
													src="${cpath }/img/${vo.diary_file}" alt="다이어리"></a>
											</c:when>
											<c:otherwise>
												<a class="item" class="disable"><img
													src="${cpath}/img/diary2.jpg" alt="1번 다이어리"></a>
											</c:otherwise>
										</c:choose>
									</div>
									<figcaption id="fig">
										<div class="title">
											<p>${vo.diary_title}</p>
										</div>
										<div class="diary_info">
											<span>작성자 <a href="" target="_blank"><strong>${vo.mem_nick}</strong></a></span>
											<span>${vo.diary_date}</span>
										</div>
										<div class="emotion">
											<button class="sad">
												<div>
													<img src="${cpath }/icon/sad.png" alt="슬픔">
												</div>
												<p>슬픔</p>
											</button>
										</div>
									</figcaption>
									<div class="off"></div>
								</figure>
							</li>
						</c:when>
						<c:when test="${vo.diary_emo==2}">
							<li class="dw3">
								<figure>
									<div class="fit">
										<c:choose>
											<c:when test="${vo.diary_file != null}">
												<a class="item" class="disable"><img
													src="${cpath }/img/${vo.diary_file}" alt="다이어리"></a>
											</c:when>
											<c:otherwise>
												<a class="item" class="disable"><img
													src="${cpath}/img/diary2.jpg" alt="1번 다이어리"></a>
											</c:otherwise>
										</c:choose>
									</div>
									<figcaption id="fig">
										<div class="title">
											<p>${vo.diary_title}</p>
										</div>
										<div class="diary_info">
											<span>작성자 <a href="" target="_blank"><strong>${vo.mem_nick}</strong></a></span>
											<span>${vo.diary_date}</span>
										</div>
										<div class="emotion">
											<button class="angry">
												<div>
													<img src="${cpath }/icon/angry.png" alt="화남">
												</div>
												<p>화남</p>
											</button>
										</div>
									</figcaption>
									<div class="off"></div>
								</figure>
							</li>
						</c:when>
						<c:otherwise>
							<li class="dw4">
								<figure>
									<div class="fit">
										<c:choose>
											<c:when test="${vo.diary_file != null}">
												<a class="item" class="disable"><img
													src="${cpath }/img/${vo.diary_file}" alt="다이어리"></a>
											</c:when>
											<c:otherwise>
												<a class="item" class="disable"><img
													src="${cpath}/img/diary2.jpg" alt="1번 다이어리"></a>
											</c:otherwise>
										</c:choose>
									</div>
									<figcaption id="fig">
										<div class="title">
											<p>${vo.diary_title}</p>
										</div>
										<div class="diary_info">
											<span>작성자 <a href="" target="_blank"><strong>${vo.mem_nick}</strong></a></span>
											<span>${vo.diary_date}</span>
										</div>
										<div class="emotion">
											<button class="normal">
												<div>
													<img src="${cpath }/icon/normal.png" alt="편안">
												</div>
												<p>편안</p>
											</button>
										</div>
									</figcaption>
									<div class="off"></div>
								</figure>
							</li>
						</c:otherwise>
					</c:choose>

				</c:forEach>
			</ol>

		</section>

		<div class="order">
			<a href="${cpath }/shopOrder.do"> <i
				class="fa-solid fa-circle-check"></i>선택완료
			</a>
		</div>

	</main>

	<!-- script -->
	<script type="text/javascript"
		src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script src="js/slick.min.js"></script>
	<script src="js/diary.js"></script>
	<script src="js/nav.js"></script>

</body>
</html>
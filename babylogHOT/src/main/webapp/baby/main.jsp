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
<title>BABY_LOG</title>
<!-- style -->
<link rel="stylesheet" href="${cpath}/css/main.css">
<link rel="stylesheet" href="${cpath}/css/reset.css">

<!-- 슬릭 -->
<link rel="stylesheet" type="text/css" href="${cpath}/css/slick.css" />
<link rel="stylesheet" type="text/css" href="${cpath}/css/slick-theme.css" />

<!-- 웹아이콘 -->
<script src="https://kit.fontawesome.com/e76461f593.js"
	crossorigin="anonymous"></script>


<style>
</style>

</head>
<body>

	<header id="header">
		<div class="container">
			<div class="header_inner">
				<div class="header_logo">
					<a href="${cpath}/main.do">Baby LOG</a>
				</div>
				<nav class="header_menu">
					<ul>
						<li><a href="${cpath}/diary.do">육아일기</a></li>
						<li><a href="${cpath}/communityFree.do">커뮤니티</a></li>
						<li><a href="${cpath}/shop.do">쇼핑몰</a></li>
						<li><a href="${cpath}/newsGov.do">뉴스</a></li>
					</ul>
				</nav>
				
				<div class="header_member">
				<c:if test="${empty mvo}">
					<ul>
						<li><a href="${cpath}/loginform.do">로그인</a></li>
						<li><a href="${cpath}/signupform.do">회원가입</a></li>
					</ul>
				</c:if>
				<c:if test="${!empty mvo}">
					${mvo.mem_name}님 환영합니다.
					<li><a href="${cpath}/logout.do">로그아웃</a></li>
					</c:if>
				</div>
			</div>
			<!-- //header_inner -->
		</div>
		<!-- //container -->
	</header>
	<!-- //header -->

	<main id="main">
		<section id="banner">
			<div class="container">
				<div class="banner_inner"></div>
			</div>
		</section>
		<!-- //banner -->


		<section id="slider">
			<div class="container">
				<article class="slider_inner">
					<h2>슬라이더</h2>
					<p>아이들의 사랑스러운 모습을 기록해보세요!</p>
					<div class="slider_img">
						<div class="ban1">
							<a href=""><img src="${cpath}/img/slide1.jpeg" alt="이미지1"></a>
						</div>
						<div class="ban1">
							<a href=""><img src="${cpath}/img/slide2.jpeg" alt="이미지2"></a>
						</div>
						<div class="ban1">
							<a href=""><img src="${cpath}/img/slide3.jpeg" alt="이미지3"></a>
						</div>
						<div class="ban1">
							<a href=""><img src="${cpath}/img/slide1.jpeg" alt="이미지1"></a>
						</div>
						<div class="ban1">
							<a href=""><img src="${cpath}/img/slide2.jpeg" alt="이미지2"></a>
						</div>
						<div class="ban1">
							<a href=""><img src="${cpath}/img/slide3.jpeg" alt="이미지3"></a>
						</div>
						<div class="ban1">
							<a href=""><img src="${cpath}/img/slide1.jpeg" alt="이미지1"></a>
						</div>
						<div class="ban1">
							<a href=""><img src="${cpath}/img/slide2.jpeg" alt="이미지2"></a>
						</div>
						<div class="ban1">
							<a href=""><img src="${cpath}/img/slide3.jpeg" alt="이미지3"></a>
						</div>
					</div>
				</article>
			</div>
		</section>
		<!-- //slider -->

		<section id="banner2">
			<div class="container">
				<div class="ban2_inner" href='#' onclick="location.href='${cpath}/diary.do'" >
					<h2>글쓰기 목록으로 이동</h2>
					<span>이곳을 클릭하면 글쓰기 목록으로 이동한다</span>
				</div>
			</div>
		</section>
		<!-- //banner2 -->


		<section id="content">
			<div class="container">
				<div class="cont_inner mt30">
					<div class="cont1">콘텐츠1</div>
					<div class="cont2">콘텐츠2</div>
					<div class="cont3">콘텐츠3</div>
				</div>
			</div>
		</section>
		<!-- //container -->

	</main>
	<!-- main -->


<jsp:include page="footer.jsp" flush="true"/>




	<!-- script -->	
	<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script src="${cpath}/js/slick.min.js"></script>
	<script src="${cpath}/js/main.js"></script>
	<script src="${cpath}/js/nav.js"></script>


</body>
</html>
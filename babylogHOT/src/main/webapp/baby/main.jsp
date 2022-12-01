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


<!-- 부트스트랩 css -->
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script> -->

<style>
</style>

</head>
<body>

	<header id="header">
		<div class="container">
			<div class="header_inner">
				<div class="header_logo">
					<a href="#">BABYLOG</a>
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
					<ul>
						<li><a href="${cpath}/login.do">로그인</a></li>
						<li><a href="${cpath}/signup.do">회원가입</a></li>
					</ul>
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
				<div class="ban2_inner">
					<h2>글쓰기 목록으로 이동</h2>
					<span>이곳을 누르면 글쓰기로 이동한다</span>
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


	<footer id="footer">
		<div class="container">
			<div class="foot_inner mt30">
				<div class="foot_logo">
					<a href="main.html">logo</a>
				</div>
				<div class="foot_nav">
					<ul>
						<li><a href="${cpath}/diary.do">육아일기</a></li>
						<li><a href="${cpath}/communityFree.do">커뮤니티</a></li>
						<li><a href="${cpath}/shop.do">쇼핑몰</a></li>
						<li><a href="${cpath}/newsGov.do">뉴스</a></li>
						<li><a href="${cpath}/account.do">고객센터</a></li>
					</ul>
				</div>
				<div class="foot_icon">
					<ul>
						<li><a href="#"> <i class="fa-brands fa-twitter"></i> <span>트위터</span>
						</a></li>
						<li><a href="#"> <i class="fa-brands fa-instagram"></i> <span>인스타그램</span>
						</a></li>
						<li><a href="#"> <i class="fa-brands fa-facebook"></i> <span>페이스북</span>
						</a></li>
					</ul>
				</div>
			</div>

		</div>
	</footer>





	<!-- script -->
	<script type="text/javascript"
		src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script src="${cpath}/js/slick.min.js"></script>




	<script>
// 배너
// html 마크업 셋팅 -> css 연동 -> 제이쿼리 연동 -> 제이쿼리 호출
// $('.slider_inner').slick({
//   slidesToShow: 3,
//   slidesToScroll: 1,
//   autoplay: true,
//   autoplaySpeed: 2000,
		
// });


$('.slider_img').slick({
  infinite: true,
  slidesToShow: 3,
  slidesToScroll: 3
});
</script>
</body>
</html>
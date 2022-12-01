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
<title>뉴스 게시판</title>

<!-- style -->
<link rel="stylesheet" href="${cpath}/css/reset.css">
<link rel="stylesheet" href="${cpath}/css/common.css">
<link rel="stylesheet" href="${cpath}/css/community.css">

<!-- 슬릭 -->
<link rel="stylesheet" type="text/css" href="${cpath}/css/slick.css" />
<link rel="stylesheet" type="text/css" href="${cpath}/css/slick-theme.css" />

<!-- 웹아이콘 -->
<script src="https://kit.fontawesome.com/e76461f593.js"
	crossorigin="anonymous"></script>

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

	<main>


		<!-- //게시판 영역 -->
	</main>
	<section id="board">
		<div class="container">
			<div class="board_wrap">
				<div class="board_title">
					<strong>지자체</strong>
					<ul class="tag">
						<li><a href="news_gov.html">정부뉴스</a></li>
						<li><a href="news_city.html">지자체</a></li>
					</ul>
				</div>
				<div class="board_list_wrap">
					<div class="board_list">
						<div class="top">
							<div class="num">번호</div>
							<div class="title">제목</div>
							<div class="writer">글쓴이</div>
							<div class="date">작성일</div>
							<div class="count">조회</div>
						</div>
						<!-- //table_heade -->

						<div>
							<div class="num">10</div>
							<div class="title">
								<a href="news_view.html"> 지자체_뉴스게시판 ㅣ 글 제목이 들어갑니다</a>
							</div>
							<div class="writer">지야누</div>
							<div class="date">2022.1128</div>
							<div class="count">33</div>
						</div>
						<!-- //1행 -->
						<div>
							<div class="num">9</div>
							<div class="title">
								<a href="news_view.html"> 지자체_뉴스게시판 ㅣ 글 제목이 들어갑니다</a>
							</div>
							<div class="writer">김대웅</div>
							<div class="date">2022.1128</div>
							<div class="count">33</div>
						</div>
						<!-- //2행 -->
						<div>
							<div class="num">8</div>
							<div class="title">
								<a href="news_view.html"> 지자체_뉴스게시판 ㅣ 글 제목이 들어갑니다</a>
							</div>
							<div class="writer">선경주</div>
							<div class="date">2022.1128</div>
							<div class="count">33</div>
						</div>
						<!-- //3행 -->
						<div>
							<div class="num">7</div>
							<div class="title">
								<a href="news_view.html"> 지자체_뉴스게시판 ㅣ 글 제목이 들어갑니다</a>
							</div>
							<div class="writer">김호전</div>
							<div class="date">2022.1128</div>
							<div class="count">33</div>
						</div>
						<!-- //4행 -->
						<div>
							<div class="num">6</div>
							<div class="title">
								<a href="news_view.html"> 지자체_뉴스게시판 ㅣ 글 제목이 들어갑니다</a>
							</div>
							<div class="writer">배미리칸</div>
							<div class="date">2022.1128</div>
							<div class="count">33</div>
						</div>
						<!-- //5행 -->
						<div>
							<div class="num">5</div>
							<div class="title">
								<a href="news_view.html"> 지자체_뉴스게시판 ㅣ 글 제목이 들어갑니다</a>
							</div>
							<div class="writer">박종규</div>
							<div class="date">2022.1128</div>
							<div class="count">33</div>
						</div>
						<!-- //6행 -->
						<div>
							<div class="num">4</div>
							<div class="title">
								<a href="news_view.html"> 지자체_뉴스게시판 ㅣ 글 제목이 들어갑니다</a>
							</div>
							<div class="writer">정연승</div>
							<div class="date">2022.1128</div>
							<div class="count">33</div>
						</div>
						<!-- //7행 -->
						<div>
							<div class="num">3</div>
							<div class="title">
								<a href="news_view.html"> 지자체_뉴스게시판 ㅣ 글 제목이 들어갑니다</a>
							</div>
							<div class="writer">장해라</div>
							<div class="date">2022.1128</div>
							<div class="count">33</div>
						</div>
						<!-- //8행 -->
						<div>
							<div class="num">2</div>
							<div class="title">
								<a href="news_view.html"> 지자체_뉴스게시판 ㅣ 글 제목이 들어갑니다</a>
							</div>
							<div class="writer">문짱</div>
							<div class="date">2022.1128</div>
							<div class="count">33</div>
						</div>
						<!-- //9행 -->
						<div>
							<div class="num">1</div>
							<div class="title">
								<a href="cm_view.html"> 지자체_뉴스게시판 ㅣ 글 제목이 들어갑니다</a>
							</div>
							<div class="writer">김소정</div>
							<div class="date">2022.1128</div>
							<div class="count">33</div>
						</div>
						<!-- //10행 -->


					</div>
					<!-- 페이지 넘버 -->
					<div class="board_page">
						<a href="#" class="bt first"></a> <a href="#" class="bt prev"></a>
						<a href="#" class="num on">1</a> <a href="#" class="num">2</a> <a
							href="#" class="num">3</a> <a href="#" class="num">4</a> <a
							href="#" class="num">5</a> <a href="#" class="bt next">></a> <a
							href="#" class="bt last">>></a>
					</div>
				</div>
			</div>
			<!--  -->
		</div>
		<!-- //container -->
	</section>

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
    $('table').DataTable();

// See:
// http://www.sitepoint.com/responsive-data-tables-comprehensive-list-solutions
</script>


</body>
</html>
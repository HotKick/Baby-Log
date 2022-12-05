<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page import="kr.baby.dao.CommunityVO" %>

<c:set var="cpath" value="${pageContext.request.contextPath}" />
<c:set var="type" value="${vo.community_type }"/>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>커뮤니티</title>

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
		<%@ include file="header.jsp" %>
	<!-- //header -->
	<main>


		<!-- //게시판 영역 -->
	</main>
	<section id="board">
		<div class="container">
			<div class="board_wrap">
				<div class="board_title">
					<strong> 글 상세 보기 
					</strong>
					<p></p>
				</div>
				<div class="board_view_wrap">
					<div class="board_view">
						<div class="title">${vo.community_title}</div>
						<div class="info">
							<dl>
								<dt>번호</dt>
								<dd>${vo.community_seq}</dd>
							</dl>
							<dl>
								<dt>글쓴이</dt>
								<dd>${vo.mem_id}</dd>
							</dl>
							<dl>
								<dt>작성일</dt>
								<dd>${vo.community_date}</dd>
							</dl>
							<dl>
								<dt>조회</dt>
								<dd>${vo.community_cnt}</dd>
							</dl>
						</div>
						<div class="cont">
							${vo.community_content}
						</div>
					</div>
					 <div class="bt_wrap">
                            <a href="${cpath}/communityFree.do" class="on">목록</a>
                            <a href="${cpath}/communityEdit.do">수정</a>
                        </div>
				</div>
			</div> 

		</div>
		<!-- //container -->
	</section>


	<footer id="footer">
		<div class="container">
			<div class="foot_inner mt30">
				<div class="foot_logo">
					<a href="${cpath}/main.do">Baby LOG</a>
				</div>
				<div class="foot_nav">
					<ul>
						<li><a href="${cpath}/diary.do">육아일기</a></li>
						<li><a href="${cpath}/communityFree.do">커뮤니티</a></li>
						<li><a href="${cpath}/shop.do">쇼핑몰</a></li>
						<li><a href="${cpath}/newsGov.do">뉴스</a></li>
						<li><a href="${cpath}/question.do">고객센터</a></li>
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




</body>
</html>
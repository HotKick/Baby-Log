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
<link rel="stylesheet" href="${cpath}/css/communityMedia.css">

<!-- 슬릭 -->
<link rel="stylesheet" type="text/css" href="${cpath}/css/slick.css" />
<link rel="stylesheet" type="text/css" href="${cpath}/css/slick-theme.css" />

<!-- 웹아이콘 -->
<script src="https://kit.fontawesome.com/e76461f593.js"
	crossorigin="anonymous"></script>

</head>
<body>
		<%@ include file="header.jsp" %>

	<div class="banner"></div>
<!-- //공백  -->
	<form action = "${cpath}/newswriteform.do" enctype = "multipart/form-data">
	
	<section id="board">
    <div class="container">
        <div class="board_wrap">
            <div class="board_title">
                <strong><i class="fa-solid fa-city"></i> 정부 게시판</strong>
                <div class="tag tag_news">
                    <div class="gov on">
                        <a href="newsGov.html" class="free">
                            <i class="fa-solid fa-city"></i>
                            정부뉴스
                        </a></div>
                    <div class="city">
                        <a href="newsCity.html" class="info">
                            <i class="fa-solid fa-building"></i>
                            지자체</a>
                        </div>
                </div>
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
                            <div class="title"><a href="newsDetail.html"> 정부_뉴스게시판 ㅣ 글 제목이 들어갑니다</a></div>
                            <div class="writer">지야누</div>
                            <div class="date">2022.1128</div>
                            <div class="count">33</div>
                        </div>
                        <!-- //1행 -->
                        <div>
                            <div class="num">9</div>
                            <div class="title"><a href="newsDetail.html""> 정부_뉴스게시판 ㅣ 글 제목이 들어갑니다</a></div>
                            <div class="writer">김대웅</div>
                            <div class="date">2022.1128</div>
                            <div class="count">33</div>
                        </div>
                        <!-- //2행 -->
                        <div>
                            <div class="num">8</div>
                            <div class="title"><a href="newsDetail.html"> 정부_뉴스게시판 ㅣ 글 제목이 들어갑니다</a></div>
                            <div class="writer">선경주</div>
                            <div class="date">2022.1128</div>
                            <div class="count">33</div>
                        </div>
                        <!-- //3행 -->
                        <div>
                            <div class="num">7</div>
                            <div class="title"><a href="newsDetail.html"> 정부_뉴스게시판 ㅣ 글 제목이 들어갑니다</a></div>
                            <div class="writer">김호전</div>
                            <div class="date">2022.1128</div>
                            <div class="count">33</div>
                        </div>
                        <!-- //4행 -->
                        <div>
                            <div class="num">6</div>
                            <div class="title"><a href="newsDetail.html"> 정부_뉴스게시판 ㅣ 글 제목이 들어갑니다</a></div>
                            <div class="writer">배미리칸</div>
                            <div class="date">2022.1128</div>
                            <div class="count">33</div>
                        </div>
                        <!-- //5행 -->
                        <div>
                            <div class="num">5</div>
                            <div class="title"><a href="newsDetail.html"> 정부_뉴스게시판 ㅣ 글 제목이 들어갑니다</a></div>
                            <div class="writer">박종규</div>
                            <div class="date">2022.1128</div>
                            <div class="count">33</div>
                        </div>
                        <!-- //6행 -->
                        <div>
                            <div class="num">4</div>
                            <div class="title"><a href="newsDetail.html"> 정부_뉴스게시판 ㅣ 글 제목이 들어갑니다</a></div>
                            <div class="writer">정연승</div>
                            <div class="date">2022.1128</div>
                            <div class="count">33</div>
                        </div>
                        <!-- //7행 -->
                        <div>
                            <div class="num">3</div>
                            <div class="title"><a href="newsDetail.html"> 정부_뉴스게시판 ㅣ 글 제목이 들어갑니다</a></div>
                            <div class="writer">장해라</div>
                            <div class="date">2022.1128</div>
                            <div class="count">33</div>
                        </div>
                        <!-- //8행 -->
                        <div>
                            <div class="num">2</div>
                            <div class="title"><a href="newsDetail.html"> 정부_뉴스게시판 ㅣ 글 제목이 들어갑니다</a></div>
                            <div class="writer">문짱</div>
                            <div class="date">2022.1128</div>
                            <div class="count">33</div>
                        </div>
                        <!-- //9행 -->
                        <div>
                            <div class="num">1</div>
                            <div class="title"><a href="newsDetail.html"> 정부_뉴스게시판 ㅣ 글 제목이 들어갑니다</a></div>
                            <div class="writer">김소정</div>
                            <div class="date">2022.1128</div>
                            <div class="count">33</div>
                        </div>
                        <!-- //10행 -->
                     

                    </div>
                    <!-- 페이지 넘버 -->
                    <div class="board_page">
                        <a href="#" class="bt first">
                            <i class="fa-solid fa-angle-left"></i>
                        </a>
                        <a href="#" class="bt prev">
                            <i class="fa-solid fa-angles-left"></i>
                        </a>
                        <a href="#" class="num on">1</a>
                        <a href="#" class="num">2</a>
                        <a href="#" class="num">3</a>
                        <a href="#" class="num">4</a>
                        <a href="#" class="num">5</a>
                        <a href="#" class="bt next">
                            <i class="fa-solid fa-angle-right"></i>
                        </a>
                        <a href="#" class="bt last">
                            <i class="fa-solid fa-angles-right"></i>
                        </a>
                    </div>
                </div>
            </div>
            <!--  //board wrap-->
        </div>
        <!-- //container -->
    </section>

<jsp:include page="footer.jsp" flush="true"/>

	<!-- script -->	
	<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script src="${cpath}/js/slick.min.js"></script>
	<script src="${cpath}/js/nav.js"></script>
	<script>
    $('table').DataTable();
    </script>


</body>
</html>
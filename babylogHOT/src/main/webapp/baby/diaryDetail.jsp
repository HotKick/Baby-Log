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
<title>Insert title here</title>

<!-- style -->
<link rel="stylesheet" href="${cpath}/css/reset.css">
<link rel="stylesheet" href="${cpath}/css/common.css">
<link rel="stylesheet" href="${cpath}/css/diaryDetail.css">

<!-- 슬릭 -->
<link rel="stylesheet" type="text/css" href="${cpath}/css/slick.css" />
<link rel="stylesheet" type="text/css" href="${cpath}/css/slick-theme.css" />

<!-- 웹아이콘 -->
<script src="https://kit.fontawesome.com/e76461f593.js"
	crossorigin="anonymous"></script>


</head>
<body>


<main>
	<%@ include file="header.jsp" %>
    <div class="container">
        <section class="feed">
        <div class="feed_wrap">
            <div class="profile">
                <div class="profile_img">
                    <a href="#">프로필로 이동</a>
                </div>
                <div class="profile_info">
                    <div class="info_inner">
                        <div class="id"><a href="">아이디</a></div>
                        <div class="address">@ 누구누구 입니다 </div>
                    </div>
                </div>
            </div>
            <!-- // profile -->

            <div class="photo">
                <div class="photo_wrap">
                        <img src="${cpath}/img/diary1.jpg" alt="1번 다이어리">
                </div>
            </div>
            <!-- // photo -->


                <div class="icon">
                    <div class="icon_wrap">
                        <div class="left_icon">
                            <div class="l_icon1"><a href="#"><i class="fa-solid fa-heart"></i></a></div>
                            <div class="l_icon2"><a href="#"><i class="fa-solid fa-comment"></i></a></div>
                            <div class="l_icon3"><a href="#"><i class="fa-solid fa-image"></i></a></div>
                        </div>
                        <div class="right_icon">
                            <div class="r_icon_1">
                                <a href="#"><i class="fa-solid fa-bookmark"></i></a>
                            </div>
                        </div>
                    </div>
                    <!-- icon_wrap -->
                </div>
                <!-- //icon -->

            <div id="feed_text">
            <div class="feed_text">
                <div class="text_wrap">
                    <div class="t_title">
                        <h2>오늘 매우 기분이 좋으다</h2>
                    </div>
                    <div class="t_text">
                        <p>
                        I woke up pissed off today
                        And lately everyone feels fake
                        Somewhere, I lost a piece of me
                        Smoking cigarettes on balconies
                        But I can't do this alone
                        Sometimes I just need a light
                        If I call you on the phone
                        Need you on the other side
                        So when your tears roll down your pillow like a river
                        I'll be there for you
                        I'll be there for you
                        When you're screaming, but they only hear you whisper
                        I'll be loud for you
                        But you gotta be there for me too</div>
                    </p>
                </div>
                <!-- //text_wrap -->
                <div class="t_tag">
                    <div class="tag1"><a href="#">#좋음</a></div>
                    <div class="tag2"><a href="#">#싫음</a></div>
                    <div class="tag3"><a href="#">#나쁨</a></div>
                </div>
                <!-- //tag -->
                <div class="day">
                    <span>December. 7. 2022</span>
                    <span>7:21</span>
                    <span>am</span>
                </div>
                <!-- //day -->
              </div>
            <!-- // feed_text -->

            <div class="feed_comment item">
                <div class="comment_wrap">
                    <div class="coment1">
                        <div class="co_profile">여기</div>
                            <div class="co_text">
                                <p>좋은 댓글만 달아주세요</p>
                            </div>
                        <div class="co_time">
                            <span>5:30 pm</span>
                        </div>
                    </div>
                    <div class="coment1">
                        <div class="co_profile">여기</div>
                        <div class="co_text">
                            <p>좋은 댓글만 달아주세요</p>
                        </div>
                        <div class="co_time">
                            <span>5:30 pm</span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- //feed_comment -->
            
        </div>
    </div>
        <!-- feed_wrap -->        
    </div>
    </section>
</main>
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
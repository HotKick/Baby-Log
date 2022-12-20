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

		<%@ include file="header.jsp" %>

	<main>
    <div class="menu">
        <div class="click"><i class="fa-sharp fa-solid fa-arrow-up"></i></div>
            <div class="click"><i class="fa-solid fa-camera"></i></div>
            <div class="click"><i class="fa-solid fa-gift"></i></div>
    </div>
    <!-- 메뉴 탭 -->
    
    <div id="con1" class="content">
        <div class="container">
            <div class="con1_wrap">
                <div class="con1_txt">
                    <div class="con1_emo">
                            <div><img src="icon/normal.png" alt="일상"></div>
                            <div><img src="icon/happy.png" alt="행복"></div>
                            <div><img src="icon/sad.png" alt="슬픔"></div>
                            <div><img src="icon/angry.png" alt="분노"></div>
                    </div>
                  
                    <div class="con1_sub">
                        <p>우리 아기의 <span>오늘의</span> 기분은?</p>
                    </div>

                    <div class="con1_title">
                    <div class="con1_title1">
                        <p>아기<span>와</span> 부모<span>의 </span>성장일기</p>
                    </div>
                    <div class="con1_title2">
                        <span>b</span>
                        <span>a</span>
                        <span>b</span>
                        <span>y</span>
                        <span class="color2">l</span>
                        <span class="color2">o</span>
                        <span class="color2">g</span>
                    </div>
                    <con1 class="info">
                        <p>
                            우리 아이와 함께하는 소중한 하루하루의 성장을 기록해보세요!
                        </p>
                    </con1>
                    </div>
                    <!-- //con1_title -->
                        <div class="con1_icon">
                            <a href="diary.html">
                                <div><i class="fa-sharp fa-solid fa-pen-to-square"></i></div>
                                <div><p>다이어리 작성하기</p></div>
                            </a>
                        </div>
                </div>
                <!-- //con1_txt -->
                <div class="con1_img">
                    <img src="img/main_baby.png" alt="아기">
                </div>
            </div>
                <!-- //con1_wrap -->
        </div>
        <!-- //cotainer -->
    </div>
    <!-- // #con1 -->


    <div id="con2" class="content">
        <div class="container">
            <div class="con2_wrap">
                <div class="con2_txt">
                    <div class="con2_sub">
                        <p>우리아기 진짜 귀엽죠?</p>
                    </div>
                    <div class="con2_tit">
                        <p><span>BABYLOG</span> 우리아이 자랑</p>
                    </div>
                    <div class="con2_sub2">
                        <div class="con2_info"><p>한시도 눈을땔수없는 우리아이 순간들을 저장해 주세요</p></div>
                        <div class="con2_icon"><a href="diary.html"><i class="fa-regular fa-image"></i></a></div>
                    </div>
                </div>
                <div class="slider">
                    <div><img src="img/baby18.jpg" alt="이미지2"></div>
                    <div><img src="img/baby1.jpg" alt="이미지1"></div>
                    <div><img src="img/baby52.jpg" alt="이미지6"></div>
                    <div><img src="img/baby13.jpg" alt="이미지4"></div>
                    <div><img src="img/baby35.jpg" alt="이미지3"></div>
                    <div><img src="img/baby30.jpg" alt="이미지5"></div>
                </div>
                <!-- //slider -->
            </div>
            <!-- //con2_wrap -->
        </div>
    </div>
    <!-- // #con2 -->

    <div id="con3" class="content">
        <div class="container">
            <div class="con3_wrap">
                <div class="con3_img">
                    <img src="img/main3_baby.png" alt="#">
                </div>
                <!-- //con3 -->
                <article class="shop">
                    <section class="shop_diary">
                        <a href="">
                        <div class="diary_icon">
                            <img src="icon/diary.png" alt="다이어리 아이콘">
                        </div>
                        <div class="diary_txt">
                            <div class="shop_sub1_d">
                                우리아이의 소중한 기록
                            </div>
                            <div class="shop_tit cupon1">
                                <h2>BABYLOG</h2>
                                <h2>다이어리 이벤트!</h2>
                            </div>
                            <div class="shop_info_d align">
                                <i class="fa-solid fa-bookmark"></i>
                                <p>신규가입자 다이어리 제작 30%할인!</p>
                            </div>
                        </div>
                        </a>
                    </section>
                    <section class="shop_album">
                        <a href="">
                        <div class="album_icon">
                            <img src="icon/camera.png" alt="다이어리 아이콘">
                        </div>
                        <div class="album_txt">
                            <div class="shop_sub1_a">
                                우리아이의 소중한 기록
                            </div>
                            <div class="shop_tit cupon2">
                                <h2>BABYLOG</h2>
                                <h2>앨범 이벤트!</h2>
                            </div>
                            <div class="shop_info_a align">
                                <i class="fa-solid fa-bookmark"></i>
                                <p>신규가입자 다이어리 제작 30%할인!</p>
                            </div>
                        </div>
                    </a>
                    </section>
                </article>
            
            </div>
            <!-- //con3_wrap -->
        </div>
    </div>
    <!-- //content -->
      
</main>


<jsp:include page="footer.jsp" flush="true"/>




	<!-- script -->	
	<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script src="${cpath}/js/slick.min.js"></script>
	<script src="${cpath}/js/main.js"></script>
	<script src="${cpath}/js/nav.js"></script>


</body>
</html>
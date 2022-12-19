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
<title>shopDiary</title>

<!-- style -->
<link rel="stylesheet" href="${cpath}/css/reset.css">
<link rel="stylesheet" href="${cpath}/css/common.css">
<link rel="stylesheet" href="${cpath}/css/shop.css">

<!-- 슬릭 -->
<link rel="stylesheet" type="text/css" href="${cpath}/css/slick.css" />
<link rel="stylesheet" type="text/css" href="${cpath}/css/slick-theme.css" />

<!-- 웹아이콘 -->
<script src="https://kit.fontawesome.com/e76461f593.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<%@ include file="header.jsp" %>
	
	 <main>
        <section id=shop>
            <div class="container">
                <div class="shop_wrap">
                    <div class="root">
                        <div class="root1">
                            <span><a href="${cpath}/main.do"> home > </a></span>
                        </div>
                        <div class="root2">
                            <span><a href="${cpath}/shop.do"> shop > </a></span>
                        </div>
                        <div class="root3">
                            <select name="diary" id="order">
                                <option value="diary">diary</option>
                                <option value="album">album</option>
                            </select>
                        </div>
                    </div>
                    <!-- // root -->
                    <div class="prodcut_wrap">
                        <div class="p_left">
                            <figure>
                                <div class="product1"><img src="img/diary1.jpg" alt="상품1"></div>
                            </figure>
                            <div class="s_img">
                                <div class="img1"><img src="${cpath}/img/diary3.jpg" alt=""></div>
                                <div class="img1"><img src="${cpath}/img/diary10.jpg" alt=""></div>
                                <div class="img1"><img src="${cpath}/img/diary7.jpg" alt=""></div>
                            </div>
                        </div>
                        <!-- p_left -->

                        <div class="p_right">
                        <div class="p_logo">
                            <div class="simbole"></div>
                            <div class="logo"><a href="${cpath}/main.do">babylog</a></div>
                        </div>
                        <!-- //p_logo -->
                        <div class="title_wrap">
                            <div class="p_titl">
                                <span><strong>EVENT</strong></span>
                                <strong>B-LOG 다이어리</strong>
                            </div>
                            <!-- //p_title -->
                            <div class="country"><span>제작 : baby-log</span></div>
                            <div class="rank_wrap">
                                <div class="star">
                                    <span class="rank"><i class="fa-solid fa-star"></i></span>
                                    <span class="rank"><i class="fa-solid fa-star"></i></span>
                                    <span class="rank"><i class="fa-solid fa-star"></i></span>
                                    <span class="rank"><i class="fa-solid fa-star"></i></span>
                                    <span class="rank"><i class="fa-solid fa-star"></i></span>
                                </div>
                                <span>(100+)</span>
                            </div>
                            <!-- //rank_wrap -->
                            <div class="price_wrap">
                                <span class="price1"><strong>60,000</strong>원</span>
                                <span class="price2">42000</span>
                            </div>
                            <!-- //price_wrap -->
                            
                        </div>
                        <!-- //title_wrap -->

                        
                        <div class="cupon_wrap">
                            <span>이상품에 적용 가능한 <strong>15%할인</strong> 쿠폰이 있어요!</span>
                            <div class="cupon">
                                <button id="show">쿠폰</button>
                                    <div class="background">
                                        <div class="window">
                                            <div class="popup">
                                                <h2>엄청좋은쿠폰</h2>
                                                <p>겁나겁나 좋은 쿠폰 무려 15%!!!</p>
                                                <button id="close">종료</button>
                                            </div>
                                        </div>
                                    </div>  
                            </div>
                            <!-- //cupon -->
                        </div>
                        <!-- //cupon_wrap -->

                        <div id="count">
                            <div class="count_wrap">
                                <input type='button'
                                    onclick='count("plus")'
                                    value='+'/>
                                <div id='result'>0</div>
                                <input type='button'
                                    onclick='count("minus")'
                                    value='-'/>
                            </div>
                            <div class="keep">
                                <div><a href="#">하트</a></div>
                                <div><a href="#">공유</a></div>
                            </div>
                        </div>
                        <!-- //count_wrap : 카운트 함수  -->

                        <div class="order">
                             <button type="button" onclick="location.href='${cpath}/makeDiary.do'">주문하기</button>
                        </div>

                    </div>
                    <!-- //p_right -->

                    </div>
                    <!-- //product_wrap -->
                    
            
                       <div class="detail_wrap">
                        <nav id="tab-button-nav">
                                <button class="tab-button" data-tab-section="tab-section-1">배송ㅣ교환</button>
                                <button class="tab-button" data-tab-section="tab-section-2">리뷰(+100)</button>
                        </nav>

                        <div class="detail_text">
                        <section id="tab-section-1" class="tab-section">
                            <div class="d_title">
                                    <p>배송/교환은 이렇습니다</p>  
                            </div>
                            <div class="d_text">
                                <ul>
                                    <li>
                                        <strong>배송은 보통 얼마나 걸리나요?</strong>
                                        <p>저희 쑥쑥은 고객님께 최대한 빠른 배송을 제공해드리기 위해 오후 네시 이전에 주문하시면 당일 배송을 원칙으로 하고 있습니다.<br/>
                                            다만 택배사의 사정에 따라 1~2일 정도 더 소요가 될 수 있는 점은 양해 바랍니다.</p>  
                                    </li>
                                    <li>
                                        <strong>배송은 보통 얼마나 걸리나요?</strong>
                                        <p>저희 쑥쑥은 고객님께 최대한 빠른 배송을 제공해드리기 위해 오후 네시 이전에 주문하시면 당일 배송을 원칙으로 하고 있습니다.<br/> 
                                            다만 택배사의 사정에 따라 1~2일 정도 더 소요가 될 수 있는 점은 양해 바랍니다.</p>  
                                    </li>
                                    <li>
                                        <strong>배송은 보통 얼마나 걸리나요?</strong>
                                        <p>저희 쑥쑥은 고객님께 최대한 빠른 배송을 제공해드리기 위해 오후 네시 이전에 주문하시면 당일 배송을 원칙으로 하고 있습니다.<br/> 
                                            다만 택배사의 사정에 따라 1~2일 정도 더 소요가 될 수 있는 점은 양해 바랍니다.</p>  
                                    </li>
                                </ul>
                            </div>
                        </section>
                        <!-- //tab1 -->
                        <section id="tab-section-2" class="tab-section" hidden>
               
                            <!-- 가져온 소스 -->
                            <div class="feeds-commit">
                                <div class="coment">
                                    <img src="${cpath}/img/diary12.jpg" alt="#">
                                    <div class="info">
                                        <p><a href='#' class="name"><strong>야누</strong></a> </p>
                                            <ul class="star">
                                                <li s1><i class="fa-solid fa-star"></i></li>
                                                <li s2><i class="fa-solid fa-star"></i></li>
                                                <li s3><i class="fa-solid fa-star"></i></li>
                                                <li s4><i class="fa-solid fa-star"></i></li>
                                            </ul>
                                    </div>
                                    <p>상품이 정말 좋네요! 다른 엄마들에게 추천해줘야하겠어요!</p>
                                    <p class="date">22.12.07</p>
                                </div>

                                <div class="coment">
                                    <img src="${cpath}/img/diary12.jpg" alt="#">
                                    <div class="info">
                                        <p><a href='#' class="name"><strong>종규</strong></a> </p>
                                            <ul class="star">
                                                <li s1><i class="fa-solid fa-star"></i></li>
                                                <li s2><i class="fa-solid fa-star"></i></li>
                                                <li s3><i class="fa-solid fa-star"></i></li>
                                                <li s4><i class="fa-solid fa-star"></i></li>
                                            </ul>
                                    </div>
                                    <p>아이와 추억을 기록할수 있어서 너무 행복했습니다 </p>
                                    <p class="date">22.12.07</p>
                                </div>

                                <div class="coment">
                                    <img src="${cpath}/img/diary12.jpg" alt="#">
                                    <div class="info">
                                        <p><a href='#' class="name"><strong>경주</strong></a> </p>
                                            <ul class="star">
                                                <li s1><i class="fa-solid fa-star"></i></li>
                                                <li s2><i class="fa-solid fa-star"></i></li>
                                                <li s3><i class="fa-solid fa-star"></i></li>
                                                <li s4><i class="fa-solid fa-star"></i></li>
                                            </ul>
                                    </div>
                                    <p>친구가 추천해서 구매했는데 후회하지 않아요 정말 정말 행복합니다</p>
                                    <p class="date">22.12.07</p>
                                </div>

                                <div class="coment">
                                    <img src="${cpath}/img/diary12.jpg" alt="#">
                                    <div class="info">
                                        <p><a href='#' class="name"><strong>호전</strong></a> </p>
                                            <ul class="star">
                                                <li s1><i class="fa-solid fa-star"></i></li>
                                                <li s2><i class="fa-solid fa-star"></i></li>
                                                <li s3><i class="fa-solid fa-star"></i></li>
                                                <li s4><i class="fa-solid fa-star"></i></li>
                                            </ul>
                                    </div>
                                    <p>저희 조카 해주려고 제작했어요 정말 좋네요 ^^</p>
                                    <p class="date">22.12.07</p>
                                </div>

                                <!-- 작성한 댓글이 들어오는 창  -->
                                <ul id="comment-wrapper">
                                </ul>
                              </div>
                              
                              <form id="comment">
                                <input type="text" placeholder="댓글 달기..." id="commentInput">
                                <button id="submit">게시</button>
                              </form>

                        </section>
                        <!-- tab2 -->

            
                        </div>
                        <!-- detail_text -->

                       </div>
                       <!-- detail_wrap -->

                </div>
                <!-- //shop_wrap -->
            </div>
            <!-- // #container -->
        </section>
        <!-- #shop-->

    </main>

<jsp:include page="footer.jsp" flush="true"/>

	<!-- script -->
	<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script src="${cpath}/js/slick.min.js"></script>
	<script src="${cpath}/js/common.js"></script>
	<script src="${cpath}/js/nav.js"></script>
</body>
</html>
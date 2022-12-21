<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>결제하기</title>

<!-- style -->
<link rel="stylesheet" href="${cpath}/css/reset.css">
<link rel="stylesheet" href="${cpath}/css/common.css">
<link rel="stylesheet" href="${cpath}/css/shopOrder.css">


<!-- 슬릭 -->
<link rel="stylesheet" type="text/css" href="${cpath}/css/slick.css" />
<link rel="stylesheet" type="text/css" href="${cpath}/css/slick-theme.css" />

<!-- 웹아이콘 -->
<script src="https://kit.fontawesome.com/e76461f593.js" crossorigin="anonymous"></script>

<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

</head>
<body>
    
    <main class="shopOrder">
       <div id="login">
        <div class="container">
            <div class="login_wrap">
                <!-- Heading -->
                <div class="item logo">
                  <div class="logo">
                    <a href="${cpath}/main.do">
                      <img src="${cpath }/icon/logo_1.png" alt="">
                    </a>
                  </div>
                
                </div>
                
                <!-- Form -->
                <form  action="" method="post">
                  <!-- 주문자성함 -->
                  <div class="input__block">
                     <label class="name" style="font-weight: bold; font-size: 1.5em; line-height: 1.0em;"><strong>주문자 성함</strong></label>
                     <div class="print" style = "padding-left :60px; font-size: 1.5em; line-height: 1.0em;">김대웅 </div>
                  	 <hr>
                  </div>
                  <!-- 전화번호 -->
                  <div class="input__block">
                    <label class="name" style="font-weight: bold; font-size: 1.5em; line-height: 1.0em;"><strong>전화번호</strong></label>
                    <div class= "print" style = "padding-left :60px; font-size: 1.5em; line-height: 1.0em;">01012345678</div>
                    <hr>
                  </div>
                
                  <div class="input__block">
                    <label class="name" style="font-weight: bold; font-size: 1.5em; line-height: 1.0em;"><strong>우편번호</strong></label>
                    <div class= "print" style = "padding-left :60px; font-size: 1.5em; line-height: 1.0em;">500-102</div>
                    <hr>
                  </div>
                  
                  <div class="input__block last">
                    <label class="name" style="font-weight: bold; font-size: 1.5em; line-height: 1.0em;"><strong>배송지</strong></label>
                    <div class= "print" style = "padding-left :60px; font-size: 1.5em; line-height: 1.0em;">광주광역시 북구 매곡동 대주피오레</div>
                    <div class= "print" style = "padding-left :60px; font-size: 1.5em; line-height: 1.0em;">105동 1902호</div>
                  </div>
                  
                
                  <!-- 결제방법 -->

                    <button type = "button" class="order__btn" id = "check_module" onclick="location.href='${cpath}/main.do'">
                      확인
                    </button>

                </form>


              </div>
            
        </div>
        <!-- container -->
        </div>
    </main>
  
<jsp:include page="footer.jsp" flush="true"/>

<!-- script -->
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="${cpath}/js/slick.min.js"></script>
<!-- 생년월일  -->
<script src="${cpath}/js/birth.js"></script>




</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<!-- style -->
<link rel="stylesheet" href="${cpath}/css/reset.css">
<link rel="stylesheet" href="${cpath}/css/common.css">
<link rel="stylesheet" href="${cpath}/css/login.css">

<!-- 슬릭 -->
<link rel="stylesheet" type="text/css" href="${cpath}/css/slick.css" />
<link rel="stylesheet" type="text/css" href="${cpath}/css/slick-theme.css" />

<!-- 웹아이콘 -->
<script src="https://kit.fontawesome.com/e76461f593.js"
	crossorigin="anonymous"></script>


</head>
<body>
 <main>
       <div id="login">
        <div class="container">
            <div class="login_wrap">
                <!-- Heading -->
                <div class="item logo">
                  <div class="logo">
                    <a href="main.html"></a>
                  </div>
                  <div class="item logo_title">
                    <a href="${cpath}/main.do">BabyLog</a> </div>
                </div>
                
                <!-- Form -->
                <form  action="${cpath}/signup.do" method="post">
                  <!-- 아이디 -->
                  <div class="input__block">
                     <label class="name" for="id">아이디</label>
                     <input type="text" placeholder="id" class="input" id="id"/>
                  </div>
                  <!-- 비밀번호 -->
                  <div class="input__block">
                    <label class="name" for="pwd">비밀번호</label>
                     <input type="password" placeholder="Password" class="input" id="pwd"/>
                  </div>
                  <!-- 비밀번호 재확인 -->
                  <div class="input__block">
                    <label class="name" for="re_pwd">비밀번호 재확인</label>
                    <input type="password" placeholder="Password" class="input" id="re_pwd"/>
                  </div>
                  <!-- 이름 -->
                  <div class="input__block">
                    <label class="name" for="name">이름</label>
                    <input type="name" placeholder="name" class="input" id="name"/>
                  </div>
                  <!-- 닉네임 -->
                  <div class="input__block">
                    <label class="name" for="nickname">닉네임</label>
                    <input type="nickname" placeholder="nickname" class="input" id="nickname" />
                  </div>


                <!-- 생년월일 -->
                <div class="input__block birth">
                  <div class="birth_name">
                    <label class="name" for="year">년도</label>
                    <label class="name" for="month">월</label>
                    <label class="name" for="day">일</label>
                  </div>
                  <div class="birth_form">
                    <div class="year"><select name="yy" id="year"></select>년</div>
                    <div class="month"><select name="mm" id="month"></select>월</div>
                    <div class="day"><select name="dd" id="day"></select>일</div>
                  </div>
                </div>

                <!-- 성별 -->
                <div class="input__block">
                  <label class="name" for="gender">성별</label>
                  <div class="gender">
                    <div><input type="radio" id="gender1" name="gender"><label for="gender1">남자</label></div>
                    <div><input type="radio" id="gender2" name="gender"><label for="gender2">여자</label></div>
                    <div><input type="radio" id="gender3" name="gender"><label for="gender3">선택하지 않음</label></div>
                  </div>


                <!-- 가족관계 -->
                <div class="input__block">
                  <label class="name" for="family">관계</label>
                  <div class="family">
                    <div><input type="radio" id="family1" name="family"><label for="family1">엄마 ㅣ 아빠 </label></div>
                    <div><input type="radio" id="family2" name="family"><label for="family2">이모 ㅣ 삼촌</label></div>
                    <div><input type="radio" id="family3" name="family"><label for="family3">할머니 ㅣ 할아버지</label></div>
                  </div>
                </div>

                  
                <!-- 전화번호 -->
                <div class="input__block">
                  <label class="name" for="family">전화번호</label>
                  <div class="tel">
                    <input type="tel" class="input" placeholder="+010"name="tel">
                  </div>
                </div>

                
                  <!-- sign up button -->
                  <button class="signup__btn">
                    sign up
                  </button>
                </form>


              
                <!-- Links -->
                <ul class="links">
                  <li>
                    <a href="#" id="find_pwd">비밀번호 찾기</a>
                  </li>
                  <li>
                    <a href="#" id="find_id">아이디 찾기</a>
                  </li>
                  <li>
                    <a href="${cpath}/login.do"" id="login">이미 가입하셨나요?</a>
                  </li>
                </ul>
                
              </div>
            
        </div>
        <!-- container -->
        </div>
        <!-- //login -->
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
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="${cpath}/js/slick.min.js"></script>
<!-- 생년월일  -->
<script src="${cpath}/js/birth.js"></script>
  

  
  
  


</body>
</html>
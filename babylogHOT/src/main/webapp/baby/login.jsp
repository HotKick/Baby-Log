<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>

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
                <form  action="${cpath}/login.do" method="post">
                  <!-- 이메일 -->
                  <div class="first-input input__block first-input__block">
                     <input type="email" placeholder="Email" class="input" id="mem_id" name = "mem_id"  />
                  </div>
                  <!-- 비밀번호 -->
                  <div class="input__block">
                     <input type="password" placeholder="Password" class="input" id="mem_pw" name="mem_pw" />
                  </div>
                  <!-- 로그인 버튼 -->
                  <button class="login_btn">
                    Login
                  </button>
                </form>


                <!-- separator : 가운데 선  -->
                <div class="separator">
                  <p>또는</p>
                </div>

                <!-- 네이버 버튼 -->
                <button class="naver_btn">
                  NAVER로 로그인 하기
                </button>
                <!-- 카카오버튼 -->
                <button class="kakao_btn">
                  KAKAO로 로그인 하기
                </button>

                <!-- Links -->
                <ul class="links">
                  <li>
                    <a href="#" id="find_pwd">비밀번호 찾기</a>
                  </li>
                  <li>
                    <a href="#" id="find_id">아이디 찾기</a>
                  </li>
                  <li>
                    <a href="${cpath}/signupform.do" id="signup">회원가입</a>
                  </li>
                </ul>
                
              </div>
            
        </div>
        <!-- container -->
        </div>
        <!-- //login -->
        
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
        
        
        
        
        
        
    </main>
  
  
  
  



</body>
</html>
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

<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>


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
                <button onclick = "location.href = 'javascript:kakaoLogin()' " class="kakao_btn">
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
        
<jsp:include page="footer.jsp" flush="true"/>

        
      
    </main>
  
</body>

<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.0.1/kakao.min.js"
  integrity="sha384-eKjgHJ9+vwU/FCSUG3nV1RKFolUXLsc6nLQ2R1tD0t4YFPCvRmkcF8saIfOZNWf/" crossorigin="anonymous"></script>
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    
    <script>
      Kakao.init("041c9a4f7fa9b853690614f237b898f7");


      function kakaoLogin() {
        window.Kakao.Auth.login({
          scope: "profile_nickname,account_email",
          success: (authObj) => {
            console.log("authObj : ");
            console.log(authObj);

            // 백한테 authobj 속 access토큰만 줌
            // 그 후 authorize를 통해 확인
            window.Kakao.API.request({
              url: "/v2/user/me",
              success: (res) => {
                console.log("success: ");
                console.log(res);
                
               
                var email = res.kakao_account.email;
                var name = res.properties.nickname;
               
                console.log(name);
                
                $.ajax({
                	url : "${cpath}/kakaologin.do",
                	type: 'POST',
                	data : {"mem_id":email,"mem_nick":name},
                	success : function(){
                		location.href="${cpath}/main.do";
                	},
                	error : function(){
                		alert("이 동 실 패 ! ! ! ");
                	}
                });
          
                                
              },
              fail: (res) => {
                console.log(res);
              },
           
         
        });
      }

        });
      };
          
          
   
   

  </script>
</html>
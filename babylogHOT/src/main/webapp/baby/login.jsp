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
        
<jsp:include page="footer.jsp" flush="true"/>

        
      
    </main>
  
</body>

<script
		src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js"
		charset="utf-8"></script>
	<script type="text/javascript">
  
  const naverLogin = new naver.LoginWithNaverId(
   {
    clientId: "d39F9T4jdVTpalRLfjli",
    callbackUrl: "http://localhost:8083/babylog/main.do"
 
    }
   );
  

    naverLogin.init();
    naverLogin.getLoginStatus(function (status) {
      if (status) {
          const nickName=naverLogin.user.getNickName();
          const age=naverLogin.user.getAge();
          const birthday=naverLogin.user.getBirthday();

          if(nickName===null||nickName===undefined ){
            alert("별명이 필요합니다. 정보제공을 동의해주세요.");
            naverLogin.reprompt();
            return ;  
         }else{
          setLoginStatus();
         }
	}
    });
    console.log(naverLogin);

    function setLoginStatus(){
    
      const message_area=document.getElementById('message');
      message_area.innerHTML=`
      <h3> Login 성공 </h3>
      <div>user Nickname : ${naverLogin.user.nickname}</div>
      <div>user Age(범위) : ${naverLogin.user.age}</div>
      <div>user Birthday : ${naverLogin.user.birthday}</div>
      `;
     
      const button_area=document.getElementById('button_area');
      button_area.innerHTML="<button id='btn_logout'>로그아웃</button>";

      const logout=document.getElementById('btn_logout');
      logout.addEventListener('click',(e)=>{
        naverLogin.logout();
	location.replace("http://localhost:8083/babylog/main.do");
      })
    }
   

  </script>
</html>
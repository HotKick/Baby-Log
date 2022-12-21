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
<link rel="stylesheet" type="text/css"
	href="${cpath}/css/slick-theme.css" />

<!-- 웹아이콘 -->
<script src="https://kit.fontawesome.com/e76461f593.js"
	crossorigin="anonymous"></script>

</head>
<body>
<<<<<<< HEAD
	<main>
		<div id="login">
			<div class="container">
				<div class="login_wrap">
					<!-- Heading -->
					<div class="item logo">
						<div class="logo">
							<a href="${cpath }/main.do"><img
								src="${cpath }/icon/logo_1.png" alt=""></a>
						</div>

                  
                </div>
                
          
					<!-- Form -->
					<form class="validation-form" action="${cpath}/signup.do"
						method="post">
						<!-- 아이디 -->
						<div class="input__block">
							<label class="name" for="id">이메일</label> <input type="email"
								placeholder="id" class="input" id="id" name="mem_id" />
						</div>
						<!-- 비밀번호 -->
						<div class="input__block">
							<label class="name" for="pwd">비밀번호</label> <input type="password"
								placeholder="Password" class="input" id="mem_pw" name="mem_pw" />


						</div>
						<!-- 비밀번호 재확인 -->
						<div class="input__block">
							<label class="name" for="re_pwd">비밀번호 재확인</label> <input
								type="password" placeholder="Password" class="input" id="re_pwd"
								name="re_pwd" onKeyUp="fn_compare_pwd()" /> <font id="chkNotice"
								size="2"></font>
						</div>

						<!-- 이름 -->
						<div class="input__block">
							<label class="name" for="name">이름</label> <input type="name"
								placeholder="name" class="input" id="name" name="mem_name" />
						</div>
						<script>
                  		console.log("아이디"+name)
                 </script>
						<!-- 닉네임 -->
						<div class="input__block">
							<label class="name" for="nickname">닉네임</label> <input
								type="nickname" placeholder="nickname" class="input"
								id="nickname" name="mem_nick" />
						</div>


						<!-- 생년월일 -->
						<div class="input__block birth">
							<div class="birth_name">
								<label class="name" for="year">년도</label> <label class="name"
									for="month">월</label> <label class="name" for="day">일</label>
							</div>
							<div class="birth_form" name="mem_birth">
								<div class="year" name="year">
									<select name="year" id="year"></select>년
								</div>
								<div class="month">
									<select name="month" id="month"></select>월
								</div>
								<div class="day">
									<select name="day" id="day"></select>일
								</div>
							</div>
						</div>

						<!-- 성별 -->
						<div class="input__block">
							<label class="name" for="gender">성별</label>
							<div class="gender" name="mem_gender">
								<div>
									<input type="radio" id="gender1" name="mem_gender" value="남자"><label
										for="gender1">남자</label>
								</div>
								<div>
									<input type="radio" id="gender2" name="mem_gender" value="여자"><label
										for="gender2">여자</label>
								</div>
								<div>
									<input type="radio" id="gender3" name="mem_gender"
										value="선택하지 않음"><label for="gender3">선택하지 않음</label>
								</div>
							</div>


							<!-- 가족관계 -->
							<div class="input__block">
								<label class="name" for="family">관계</label>
								<div class="family" name="mem_type">
									<div>
										<input type="radio" id="family1" name="mem_type"
											value="엄마 ㅣ 아빠"><label for="family1">엄마 ㅣ 아빠
										</label>
									</div>
									<div>
										<input type="radio" id="family2" name="mem_type"
											value="이모 ㅣ 삼촌"><label for="family2">이모 ㅣ 삼촌</label>
									</div>
									<div>
										<input type="radio" id="family3" name="mem_type"
											value="할머니 ㅣ 할아버지"><label for="family3">할머니 ㅣ
											할아버지</label>
									</div>
								</div>
							</div>


							<!-- 전화번호 -->
							<div class="input__block">
								<label class="name" for="family">전화번호</label>
								<div class="tel">
									<input type="tel" class="input" placeholder="+010"
										name="mem_tel">
								</div>
							</div>


							<!-- sign up button -->
							<button type="submit" class="signup__btn">sign up</button>
					</form>



					<!-- Links -->
					<ul class="links">

						<li><a href="#" id="find_id">아이디 찾기</a></li>
						<li><a href="#" id="find_pwd">비밀번호 찾기</a></li>

						<li><a href="${cpath}/login.do" id="login">이미 가입하셨나요?</a></li>
					</ul>

				</div>

			</div>
			<!-- container -->
		</div>
		<!-- //login -->

	</main>
	<jsp:include page="footer.jsp" flush="true" />


	<!-- script -->
	<script type="text/javascript"
		src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script src="${cpath}/js/slick.min.js"></script>
	<!-- 생년월일  -->
	<script src="${cpath}/js/birth.js"></script>

	<script>

$(function(){
    $('#mem_pw').keyup(function(){
      $('#chkNotice').html('');
    });

    $('#re_pwd').keyup(function(){

        if($('#mem_pw').val() != $('#re_pwd').val()){
          $('#chkNotice').html('비밀번호 일치하지 않음<br><br>');
          $('#chkNotice').attr('color', '#f82a2aa3');
        } else{
          $('#chkNotice').html('비밀번호 일치함<br><br>');
          $('#chkNotice').attr('color', '#199894b3');
        }

    });
});
</script>





</body>
</html>
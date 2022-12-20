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
<title>헤더</title>

<!-- style -->
<link rel="stylesheet" href="${cpath}/css/reset.css">
<link rel="stylesheet" href="${cpath}/css/common.css">
<!-- 웹아이콘 -->
<script src="https://kit.fontawesome.com/e76461f593.js"
	crossorigin="anonymous"></script>
<script src = "https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script src="sweetalert2.min.js"></script>
<link rel="stylesheet" href="sweetalert2.min.css">
	
<!-- 비 로그인자 로그인 알림 다이어리 -->	
<script type="text/javascript">
function diary_member(){
	 if(${empty mvo}){
		 console.log('swal')
			Swal.fire({
				  title: "로그인 후 이용가능합니다",
				  icon: 'error',
				  showCancelButton: false,
				  confirmButtonColor: '#3085d6',
				  cancelButtonColor: '#d33',
				  confirmButtonText: '로그인',
				  cancelButtonText: '취소'
				}).then((result) => {
				  if (result.value) {
					  location.href="${cpath}/loginform.do";
				  }
				})
			
	 }else{
		 location.href="${cpath}/diary.do";
		 
	 }
	 }

</script>



<!-- 비 로그인자 로그인 알림 쇼핑몰 -->
<script type="text/javascript">
function shop_member(){
	 if(${empty mvo}){
			Swal.fire({
				  title: "로그인 후 이용가능합니다",
				  icon: 'error',
				  showCancelButton: false,
				  confirmButtonColor: '#3085d6',
				  cancelButtonColor: '#d33',
				  confirmButtonText: '로그인',
				  cancelButtonText: '취소'
				}).then((result) => {
				  if (result.value) {
					  location.href="${cpath}/loginform.do";
				  }
				})
			
	 }else{
		 location.href="${cpath}/shop.do";
		 
	 }
	 }

</script>


<!-- / 비 로그인자 로그인 알림  -->

<!-- 비 로그인자 로그인 알림 마이페이지 -->
<script type="text/javascript">
function mypage_member(){
	 if(${empty mvo}){
			Swal.fire({
				  title: "로그인 후 이용가능합니다",
				  icon: 'error',
				  showCancelButton: false,
				  confirmButtonColor: '#3085d6',
				  cancelButtonColor: '#d33',
				  confirmButtonText: '로그인',
				  cancelButtonText: '취소'
				}).then((result) => {
				  if (result.value) {
					  location.href="${cpath}/loginform.do";
				  }
				})
			
	 }else{
		 location.href="${cpath}/mypage.do";
		 
	 }
	 }

</script>


<!-- / 비 로그인자 로그인 알림  -->


</head>
<body>

	<!-- !!new header ------------------------------------------------->
<header id="header">
    <div class="container">
        <nav class="navbar">
            <div class="navbar_logo">
                <div><a href="${cpath }/main.do"><img src="${cpath }/icon/logo_1.png" alt="가로형로고"></a></div>
            </div>
            <ul class="navbar_menu">
                <li><a onclick = "diary_member()">육아일기</a></li>
                <li><a href="${cpath }/communityFree.do">커뮤니티</a></li>
                <li><a onclick = "shop_member()">쇼핑몰</a></li>
                <li><a href="${cpath }/newsGov.do">뉴스</a></li>
                <li><a onclick = "mypage_member()">마이페이지</a></li>
            </ul>
            <ul class="navbar_icons">
                <li><a href="${cpath }/loginform.do" class="login"><i class="fa-solid fa-right-to-bracket"></i></a></li>
                <li><a href="${cpath }/signUp.do" class="sign"><i class="fa-solid fa-user-plus"></i></a></li>
            </ul>
    
            <a href="#" class="navbar_toggleBtn">
                <i class="fa-solid fa-burger"></i>
            </a>
        </nav>
        <!-- //navbar -->
    
    </div>
    <!-- //container -->
</header>
<!-- //#nav -->
<!--  // new header end ------------------------------------------------->
		
</body>
</html>
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
<title>푸터</title>

<!-- 비 로그인자 로그인 알림 다이어리 -->	
<script type="text/javascript">
function diary_member(){
	 if(${empty mvo}){
		 alert("로그인해 주세요");
		 document.location.href= "${cpath}/loginform.do";
	 }else{
		 location.href="${cpath}/diary.do";
		 
	 }
	 }

</script>

<!-- 비 로그인자 로그인 알림 쇼핑몰 -->
<script type="text/javascript">
function shop_member(){
	 if(${empty mvo}){
		 alert("로그인해 주세요");
		 document.location.href= "${cpath}/loginform.do";
	 }else{
		 location.href="${cpath}/shop.do";
		 
	 }
	 }

</script>

<!-- / 비 로그인자 로그인 알림  -->

</head>
<body>

<footer id="footer">
      <div class="container">
         <div class="foot_inner mt30">
            <div class="foot_logo">
               <a href="${cpath}/main.do">Baby LOG</a>
            </div>
            <div class="foot_nav">
               <ul>
                  <li><a onclick="diary_member()">육아일기</a></li>
                  <li><a href="${cpath}/communityFree.do">커뮤니티</a></li>
                  <li><a onclick="shop_member()">쇼핑몰</a></li>
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
</body>
</html>
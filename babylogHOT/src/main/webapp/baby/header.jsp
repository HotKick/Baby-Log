<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>헤더</title>

<!-- style -->
<link rel="stylesheet" href="${cpath}/css/reset.css">
<link rel="stylesheet" href="${cpath}/css/common.css">

</head>
<body>

	<header id="header">
		<div class="container">
			<div class="header_inner">
				<div class="header_logo">
					<a href="${cpath}/main.do">Baby LOG</a>
				</div>
				<nav class="header_menu">
					<ul>
						<li><a href="${cpath}/diary.do">육아일기</a></li>
						<li><a href="${cpath}/communityFree.do">커뮤니티</a></li>
						<li><a href="${cpath}/shop.do">쇼핑몰</a></li>
						<li><a href="${cpath}/newsGov.do">뉴스</a></li>
					</ul>
				</nav>
				
				<div class="header_member">
				<c:if test="${empty mvo}">
					<ul>
						<li><a href="${cpath}/loginform.do">로그인</a></li>
						<li><a href="${cpath}/signupform.do">회원가입</a></li>
					</ul>
				</c:if>
				<c:if test="${!empty mvo}">
					${mvo.mem_name}님 환영합니다.
					<li><a href="#">로그아웃</a></li>
					</c:if>
				</div>
			</div>
			<!-- //header_inner -->
		</div>
		<!-- //container -->
	</header>
</body>
</html>
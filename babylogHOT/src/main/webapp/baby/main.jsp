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
<title>BABY_LOG</title>
<!-- style -->
<link rel="stylesheet" href="${cpath}/css/main.css">
<link rel="stylesheet" href="${cpath}/css/reset.css">

<!-- 슬릭 -->
<link rel="stylesheet" type="text/css" href="${cpath}/css/slick.css" />
<link rel="stylesheet" type="text/css" href="${cpath}/css/slick-theme.css" />

<!-- 웹아이콘 -->
<script src="https://kit.fontawesome.com/e76461f593.js"
	crossorigin="anonymous"></script>


<style>
</style>

</head>
<body>

		<%@ include file="header.jsp" %>

	<main>
    <div class="menu">
        <span>1번</span>
        <span>2번</span>
        <span>3번</span>
    </div>
    <!-- 메뉴 탭 -->
    <div class="content">

    </div>
    <div class="content">2</div>
    <div class="content">3</div>
      
</main>


<jsp:include page="footer.jsp" flush="true"/>




	<!-- script -->	
	<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script src="${cpath}/js/slick.min.js"></script>
	<script src="${cpath}/js/main.js"></script>
	<script src="${cpath}/js/nav.js"></script>


</body>
</html>
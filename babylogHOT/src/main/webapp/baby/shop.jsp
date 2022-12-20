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
<title>shop</title>

<!-- style -->
<link rel="stylesheet" href="${cpath}/css/reset.css">
<link rel="stylesheet" href="${cpath}/css/common.css">
<link rel="stylesheet" href="${cpath}/css/shop.css">

<!-- 슬릭 -->
<link rel="stylesheet" type="text/css" href="${cpath}/css/slick.css" />
<link rel="stylesheet" type="text/css" href="${cpath}/css/slick-theme.css" />

<!-- 웹아이콘 -->
<script src="https://kit.fontawesome.com/e76461f593.js"
	crossorigin="anonymous"></script>
</head>
<body>

		<%@ include file="header.jsp" %>
<div class="banner"></div>
<!-- //공백  -->
	<main>
		<div id="shop">
			<div class="container">
					<div class="shop">
					 <div class="shop_diary">
	                      <div class="shop_icon"><img src="icon/shop_icon1.png" alt="일기"></div>
                    <h2>BABYLOG 일기</h2>
                    <p>아이를 생각하며 작성한 일기를 제작해 보세요</p>
	                    <div class="btn"><a href="${cpath}/shopDiary.do">바로가기</a></div>
	                </div>
	                <div class="shop_photo">
	                  <div class="shop_icon"><img src="icon/shop_icon2.png" alt="앨범"></div>
                    <h2>BABYLOG 앨범</h2>
                    <p>아이를 생각하며 작성한 앨범을 제작해 보세요</p>
	                    <div class="btn"><a href="${cpath}/shopAlbum.do">바로가기</a></div>
	                </div>
				</div>
			</div>
		</div>
	</main>


<jsp:include page="footer.jsp" flush="true"/>


	<!-- script -->
	<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script src="${cpath}/js/slick.min.js"></script>
	<script src="${cpath}/js/nav.js"></script>
	
</body>
</html>
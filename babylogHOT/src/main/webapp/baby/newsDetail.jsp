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
<title>커뮤니티</title>


<!-- style -->
<link rel="stylesheet" href="${cpath}/css/reset.css">
<link rel="stylesheet" href="${cpath}/css/common.css">
<link rel="stylesheet" href="${cpath}/css/community.css">
<link rel="stylesheet" href="${cpath}/css/communityMedia.css">

<!-- 슬릭 -->
<link rel="stylesheet" type="text/css" href="${cpath}/css/slick.css" />
<link rel="stylesheet" type="text/css" href="${cpath}/css/slick-theme.css" />

<!-- 웹아이콘 -->
<script src="https://kit.fontawesome.com/e76461f593.js"
	crossorigin="anonymous"></script>



</head>
<body>

	<main>
	<%@ include file = "header.jsp" %>

		<!-- //게시판 영역 -->
	</main>
	<section id="board">
		<div class="container">
			<div class="board_wrap">
				<div class="board_title">
					<strong>뉴스게시판</strong>
					<p>육아 정보에 관한 최신 뉴스를 볼 수 있습니다.</p>
				</div>
				<div class="board_view_wrap">
					<div class="board_view">
						<div class="title">글 제목이 들어갑니다.</div>
						<div class="info">
							<dl>
								<dt>번호</dt>
								<dd>{vo.nn_seq}</dd>
							</dl>
							<dl>
								<dt>글쓴이</dt>
								<dd>관리자</dd>
							</dl>
							<dl>
								<dt>작성일</dt>
								<dd>{vo.nn_date}</dd>
							</dl>
							
						</div>
						<div class="cont">
							{vo.nn_content}
						</div>
					</div>
				</div>
			</div>

			<!--  -->
		</div>
		<!-- //container -->
	</section>
	<jsp:include page="footer.jsp" flush="true"/>

	<!-- script -->	
	<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script src="${cpath}/js/slick.min.js"></script>
	<script src="${cpath}/js/nav.js"></script>
	<script>
    $('table').DataTable();
    </script>


</body>
</html>
<samp></samp>
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
<title>Q&A 게시판 </title>

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
		<%@ include file="header.jsp" %>
	<main>


		<!-- //게시판 영역 -->
	</main>
	<section id="board">
		<div class="container">
			<div class="board_wrap">
				<div class="board_title">
					<strong>Q&A</strong>
					
				</div>
				<div class="board_list_wrap">
					<div class="board_list">
						<div class="top">
							<div class="num">번호</div>
							<div class="title">제목</div>
							<div class="writer">글쓴이</div>
							<div class="date">작성일</div>
							<div class="count">조회</div>
						</div>
						<!-- //table_header -->

						<div>
						<c:forEach var= "vo" items = "${list}" begin="1" end="10" step="1" varStatus="status">
							<div class="num">${vo.q_seq}</div>
							<div class="title">
								<a href="${cpath }/communityDetail.do?q_seq=${vo.q_seq}">${vo.q_title}</a>
							</div>
							<div class="writer">${vo.mem_id}</div>
							<div class="date">${vo.q_date}</div>
							<div class="count">${vo.q_cnt}</div>
							</c:forEach>
						</div>
						<!-- //1행 -->


					</div>
					<!-- 페이지 넘버 -->
					<div class="board_page">
						<a href="#" class="bt first"></a> <a href="#" class="bt prev"></a>
						<a href="#" class="num on">1</a> <a href="#" class="num">2</a> <a
							href="#" class="num">3</a> <a href="#" class="num">4</a> <a
							href="#" class="num">5</a> <a href="#" class="bt next">></a> <a
							href="#" class="bt last">>></a>
					</div>
					<div class="bt_wrap">
                        <button><a href="${cpath}/questionWriteForm.do">등록</a></button>
                    </div>
				</div>
			</div>
			<!--  -->
		</div>
		<!-- //container -->
	</section>


<jsp:include page="footer.jsp" flush="true"/>

	<!-- script -->
	<script type="text/javascript"
		src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script src="${cpath}/js/slick.min.js"></script>

	<script>
    $('table').DataTable();

// See:
// http://www.sitepoint.com/responsive-data-tables-comprehensive-list-solutions
</script>


</body>
</html>
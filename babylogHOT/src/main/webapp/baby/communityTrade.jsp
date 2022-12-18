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
<title>커뮤니티_중고거래</title>


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
	
<!-- 비 로그인 자 로그인 알림 -->
<script type="text/javascript">
function community_member(){
	 if(${empty mvo}){
		 alert("로그인해 주세요");
		 document.location.href= "${cpath}/loginform.do";
	 }else{
		 location.href="${cpath}/communityWriteForm.do";
		 
	 }
	 }
</script>
<!-- /비 로그인 자 로그인 알림  -->


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
					<strong>중고거래</strong>
					<div class="tag">
                        <div><a href="${cpath}/communityFree.do" class="free">자유게시판</a></div>
                        <div><a href="${cpath}/communityInfo.do" class="info">정보게시판</a></div>
                        <div><a href="${cpath}/communityTrade.do" class="trade">중고게시판</a></div>
                    </div>
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
						<!-- //table_heade -->

						<div>
					 <c:forEach var= "vo" items = "${list}" >
						<c:if test = "${vo.community_type eq '03' }">
							<div class="num">${vo.community_seq}</div>
							<div class="title">
								<a href="${cpath}/communityDetail.do?community_seq=${vo.community_seq}">${vo.community_title}</a>
							</div>
							<div class="writer">${vo.mem_nick}</div>
							<div class="date">${vo.community_date}</div>
							<div class="count">${vo.community_cnt}</div>
							</c:if>
							</c:forEach>

	
						</div>
						</div>



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
					 
                        <button type = "button" onclick="community_member()">등록</button>
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
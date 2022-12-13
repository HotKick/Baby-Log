<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page import="kr.baby.dao.CommunityVO" %>

<c:set var="cpath" value="${pageContext.request.contextPath}" />
<c:set var="type" value="${vo.community_type }"/>

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


<!-- 슬릭 -->
<link rel="stylesheet" type="text/css" href="${cpath}/css/slick.css" />
<link rel="stylesheet" type="text/css" href="${cpath}/css/slick-theme.css" />

<!-- 웹아이콘 -->
<script src="https://kit.fontawesome.com/e76461f593.js"
	crossorigin="anonymous"></script>
	
<script type = "text/javascript">
	function goDel(community_seq){
		location.href = "${cpath}/communityDelete.do?community_seq="+community_seq;
	}

</script>
</head>
<body>
		<%@ include file="header.jsp" %>
	<!-- //header -->
	<main>


		<!-- //게시판 영역 -->
	</main>
	<section id="board">
		<div class="container">
			<div class="board_wrap">
				<div class="board_title">
					<strong> 글 상세 보기 
					</strong>
					<p></p>
				</div>
				<div class="board_view_wrap">
					<div class="board_view">
						<div class="title">${vo.community_title}</div>
						<div class="info">
							<dl>
								<dt>번호</dt>
								<input type="hidden" name="community_seq" value="${vo.community_seq}"/>
								<dd>${vo.community_seq}</dd>
							</dl>
							<dl>
								<dt>글쓴이</dt>
								<dd>${vo.mem_id}</dd>
							</dl>
							<dl>
								<dt>작성일</dt>
								<dd>${vo.community_date}</dd>
							</dl>
							<dl>
								<dt>조회</dt>
								<dd>${vo.community_cnt}</dd>
							</dl>
						</div>
						<div class="cont">
							${vo.community_content}
						</div>
					</div>
					 <div class="bt_wrap">
                            <a href="${cpath}/communityFree.do" class="on">목록</a>
                            <a href="${cpath}/communityEdit.do">수정</a>
                            <button onclick = "goDel(${vo.community_seq})">삭제</button>
                          
                
	}
                        </div>
				</div>
			</div> 

		</div>
		<!-- //container -->
	</section>

<jsp:include page="footer.jsp" flush="true"/>


	<!-- script -->
	<script type="text/javascript"
		src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script src="${cpath}/js/slick.min.js"></script>




</body>
</html>
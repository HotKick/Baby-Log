<%@page import="kr.baby.dao.CommunityVO"%>
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
		<%@ include file="header.jsp" %>
	<!-- //header -->

<div class="banner"></div>
<!-- //공백  -->

	 <form action="${cpath}/communityFree.do" method="post" enctype = "multipart/form-data" >
		<div class="container">
			<div class="board_wrap">
				<div class="board_title">
					<strong><i class="fa-solid fa-comment-dots"></i> 자유게시판</strong>
					<p>공지사항을 빠르고 정확하게 안내해드립니다.</p>
				</div>
				<div class="board_write_wrap">
					<div class="board_write">
						<div class="title">
							<dl>
								<dt>제목</dt>
								<dd>
							     	<input type="hidden" name="community_seq" value="${vo.community_seq}">
									<input type="text" placeholder="제목 입력" name="community_title" value="${vo.community_title }">
								</dd>
							</dl>
						</div>
						<div class="info">
							<dl>
								<dt>글쓴이</dt>
								<dd>
									<input type="text" placeholder="글쓴이 입력" name="mem_id" value="${vo.mem_id }">
								</dd>
							</dl>
							<dl>
								<dt>첨부파일</dt>
								<dd>
									<input type="file" name = "community_file">
								</dd>
							</dl>
						</div>
						<div class="cont">
							<textarea placeholder="내용 입력" name = "community_content">
                          ${vo.community_content}
                            </textarea>
						</div>
					</div>
					<div class="bt_wrap">
                       <button type="submit">등록</button>
                       <button onclick="location.href='${cpath}/communityFree.do'">취소</button>
                    </div>
                   <!-- //bt_wrap -->
                    </div>
                    <!-- board_write_wrap -->
                </div>
                <!-- board_wrap -->
        </div>
        <!-- //container -->
		</form>
<jsp:include page="footer.jsp" flush="true"/>


	<!-- script -->	
	<!-- 슬 -->
	<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<script src="${cpath}/js/slick.min.js"></script>
	
	<!-- js -->
	<script src="${cpath}/js/common.js"></script>
	<script src="${cpath}/js/nav.js"></script>
	<script src="${cpath}/js/shop.js"></script>



</body>
</html>
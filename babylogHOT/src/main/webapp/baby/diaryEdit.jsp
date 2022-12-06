<%@page import="kr.baby.dao.DiaryVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="cpath" value="${pageContext.request.contextPath}" />

 <%
   
    DiaryVO vo = (DiaryVO)request.getAttribute("vo");
    
    %>
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
<link rel="stylesheet" href="${cpath}/css/diary.css">
<link rel="stylesheet" href="${cpath}/css/diaryWrite.css">

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

	<main>


		<!-- //게시판 영역 -->
	</main>
	 <form action="${cpath}/diaryEdit.do" method="post" enctype = "multipart/form-data">
		
		<input type="hidden" name="diary_seq" value="${vo.diary_seq}">
		<input type="hidden" name = "noupdate" value="${vo.diary_file}">
		<div class="container">

			<div class="board_wrap">
				<div class="board_title">
					<strong>다이어리 수정 </strong>
					<p>수정 페이지 </p>
				</div>
				<div class="board_write_wrap">
					<div class="board_write">
						<div class="title">
							<dl>
								<dt>제목</dt>
								<dd>
									<input type="text" placeholder="제목 입력" name="diary_title" value="${vo.diary_title}">
								</dd>
							</dl>
						</div>
						<div class="info">
							<dl>
								<dt>글쓴이</dt>
								<dd>
									<input type="text" placeholder="글쓴이 입력" name="mem_nick" value="${vo.mem_nick}">
									<input type="hidden" placeholder="글쓴이 아이디" name="mem_id" value="${vo.mem_id}">
								</dd>
							</dl>
							<dl>
								<dt>첨부파일</dt>
								<dd>
								 <!-- 추후 동일한 비번 입력했을 시 삭제할 수 있게 수정  -->
									<input type="file" name = "diary_file">
								</dd>
							</dl>
							</div>
							
					
						<div class="cont">
							<textarea placeholder="내용 입력" name = "diary_content">${vo.diary_content}</textarea>
						</div>
					</div>
					<div class="bt_wrap">
                            <button type="submit">등록</button>
                            <button>취소</button>
                        </div>
				</div>
			</div>
			<!-- //container -->
		</form>


		<footer id="footer">
		<div class="container">
			<div class="foot_inner mt30">
				<div class="foot_logo">
					<a href="${cpath}/main.do">Baby LOG</a>
				</div>
				<div class="foot_nav">
					<ul>
						<li><a href="${cpath}/diary.do">육아일기</a></li>
						<li><a href="${cpath}/communityFree.do">커뮤니티</a></li>
						<li><a href="${cpath}/shop.do">쇼핑몰</a></li>
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
	<!-- script -->
	<script type="text/javascript"
		src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script src="${cpath}/js/slick.min.js"></script>




</body>
</html>
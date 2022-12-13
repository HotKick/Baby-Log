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
<title>커뮤니티 - 글작성</title>


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
	
<form action= "${cpath}/communityWrite.do" method="post" enctype = "multipart/form-data">

<div class="container">
    <div class="board_wrap">
        <div class="board_title">
            <strong>글쓰기 게시판</strong>
            <p>게시판 선택 후 글쓰기 작성 부탁드립니다.</p>
        </div>
        <!-- // board title  -->
        <div class="board_write">
            <div class="title">
                <dl>
                    <dt>목록</dt>
                    <dd>
                        <select name='community_type'>
                            <option selected>게시판 선택</option>
                            <option name = "community_type" value='01'>자유게시판</option>
                            <option name = "community_type" value='02'>정보게시판</option>
                            <option name = "community_type" value='03'>중고게시판</option>
                        </select>
                    </dd>
                </dl>
                <dl>
                    <dt>제목</dt>
                    <dd><input type="text" placeholder="제목 입력" name ="comuunity_title"></dd>
                </dl>
            </div>
            <div class="info">
                <dl>
                    <dt>글쓴이</dt>
                    <input type = "hidden" name = "mem_id" value = "${mvo.mem_id}"/>
                    <dd><input type="text" name = "mem_nick" value = "${mvo.mem_nick }" readonly/></dd>
                </dl>
                <dl>
                    <dt>첨부파일</dt>
                    <dd><input type="file" name = "community_file"></dd>
                </dl>

                
            </div>
            <div class="cont">
                <textarea placeholder="내용 입력" name = "community_content"></textarea>
            </div>
        </div>
        <div class="bt_wrap">
            <button type="submit">등록</button>
            <button type="reset">취소</button>
        </div>
    </div>
</div>
<!-- //container -->
</form>
<!-- //board -->

<jsp:include page="footer.jsp" flush="true"/>


	<!-- script -->	
	<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script src="${cpath}/js/slick.min.js"></script>
	<script src="${cpath}/js/nav.js"></script>



</body>
</html>
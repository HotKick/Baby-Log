<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="cpath" value="${pageContext.request.contextPath}" />
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다이어리 - 작성 </title>
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
	
<!-- //게시판 영역 -->
</main>
	
<form  action="${cpath}/diaryWrite.do" method="post" enctype = "multipart/form-data">

<div class="container">
    <div class="board_wrap">
        <div class="board_title">
            <strong>다이어리</strong>
            <p>일기를 작성해 주세요</p>
        </div>
        <!-- // board title  -->
        <div class="board_write">
            <div class="title">
                <dl>
                    <dt>목록</dt>
                    <dd>
                        <select name='diary_type'>
                            <option selected>태그</option>
                            <option value='01'>미정</option>
                            <option value='02'>미정</option>
                            <option value='03'>미정</option>
                        </select>
                    </dd>
                </dl>
                <dl>
                    <dt>제목</dt>
                    <dd><input type="text" placeholder="제목 입력" name ="diary_title"></dd>
                </dl>
            </div>
            <div class="info">
                <dl>
                    <dt>글쓴이</dt>
                    <dd><input type="text" name = "mem_nick" value = "${mvo.mem_nick}" readonly/></dd>
                    <dd><input type="hidden" name = "mem_id" value = "${mvo.mem_id}" readonly/></dd>
                    
                </dl>
                <dl>
                    <dt>첨부파일</dt>
                    <dd><input type="file" name = "diary_file"></dd>
                </dl>

                
            </div>
            <div class="cont">
                <textarea placeholder="내용 입력" name = "diary_content"></textarea>
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
<script src="${cpath}/js/diary.js"></script>
<script src="${cpath}/js/nav.js"></script>
</body>
</html>
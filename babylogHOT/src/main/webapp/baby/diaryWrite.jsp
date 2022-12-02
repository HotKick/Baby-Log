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
</head>
<body>

<!-- //게시판 영역 -->
</main>
	
<form action="">

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
                        <select name='community_type'>
                            <option selected>태그</option>
                            <option value='01'>미정</option>
                            <option value='02'>미정</option>
                            <option value='03'>미정</option>
                        </select>
                    </dd>
                </dl>
                <dl>
                    <dt>제목</dt>
                    <dd><input type="text" placeholder="제목 입력" name ="community_title"></dd>
                </dl>
            </div>
            <div class="info">
                <dl>
                    <dt>글쓴이</dt>
                    <dd><input type="text" name = "mem_id" value = "${mvo.mem_id }" readonly/></dd>
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


</body>
</html>
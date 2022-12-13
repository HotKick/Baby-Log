<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="newLine" value="<%='\n'%>" />

<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- style -->
<link rel="stylesheet" href="${cpath}/css/reset.css">
<link rel="stylesheet" href="${cpath}/css/common.css">
<link rel="stylesheet" href="${cpath}/css/diaryDetail.css">

<!-- 슬릭 -->
<link rel="stylesheet" type="text/css" href="${cpath}/css/slick.css" />
<link rel="stylesheet" type="text/css" href="${cpath}/css/slick-theme.css" />

<!-- 웹아이콘 -->
<script src="https://kit.fontawesome.com/e76461f593.js"
	crossorigin="anonymous"></script>

<script type = "text/javascript">
	function goDel(diary_seq){
		location.href = "${cpath}/diaryDelete.do?diary_seq="+diary_seq;
	}
	
	function goEdit(diary_seq){
		location.href="${cpath}/diaryEditForm.do?diary_seq="+diary_seq;
	}
	
	function goCDel(diary_cmt_seq,diary_seq){
		console.log("댓글번호", diary_cmt_seq)
		console.log("글번호",diary_seq)
		location.href="${cpath}/diaryCommentDelete.do?diary_cmt_seq=" +diary_cmt_seq +"&diary_seq="+diary_seq;
	}
	
	function goCDel(diary_cmt_seq,diary_seq){
		$.ajax({
			url : "${cpath}/diaryCommentDelete.do?diary_seq="+diary_seq+"&diary_cmt_seq="+diary_cmt_seq,
			type : "get",
			data : {"diary_cmt_seq":diary_cmt_seq,"diary_seq":diary_seq},
			success : function(){
				location.href="${cpath}/diaryDetail.do?diary_seq="+diary_seq;
			},
			error : function(){alert("error!")}
		});
	}
	
	function goCUpdteform(diary_cmt_seq,diary_seq){
  		//readonly로 되어있던 textarea false로 만들기(attr 속성)
 			var tempContent = $("#ct"+diary_cmt_seq).text();
 			var newContent = "<input type = 'text' id ='nt"+diary_cmt_seq+"' class = 'form-control' value = '"+tempContent+"'/>";
 			$("#ct"+diary_cmt_seq).html(newContent);
 			var newBtn = "<button onclick = 'goCUpdate("+diary_cmt_seq+","+diary_seq+")'>수정하기</button>";
 			$("#b"+diary_cmt_seq).html(newBtn);
  		};
  		
  	  function goCUpdate(diary_cmt_seq,diary_seq){
  	  		var diary_cmt_content = $("#nt"+diary_cmt_seq).val();
  	  		
  	  		$.ajax({
  	  			url : "${cpath}/diaryCommentUpdate.do",
  	  			type : "post",
  	  			data : {"diary_cmt_seq":diary_cmt_seq,"diary_cmt_content":diary_cmt_content,"diary_seq":diary_seq},
  	  			success : function(){
  	  				location.href= "${cpath}/diaryDetail.do?diary_seq="+diary_seq;
  	  			},
  	  			error : function(){alert("error!");}
  	  		});
  	  		
  	  	}
  		
</script>
</head>
<body>


<main>
	<%@ include file="header.jsp" %>
    <div class="container">
        <section class="feed">
        <div class="feed_wrap">
            <div class="profile">
                <div class="profile_img">
                    <a href="#">프로필로 이동</a>
                </div>
                <div class="profile_info">
                    <div class="info_inner">
                        <div class="id"><a href="">${vo.mem_id}</a></div>
                        <div class="address">${vo.mem_nick}입니다 </div>
                    </div>
                </div>
            </div>
            <!-- // profile -->

            <div class="photo">
                <div class="photo_wrap">
                	<c:if test="${vo.diary_file != null}">
                        <img src="${cpath}/img/${vo.diary_file}" alt="1번 다이어리">
                        </c:if>
                        
                 
                </div>
            </div>
            <!-- // photo -->


                <div class="icon">
                    <div class="icon_wrap">
                        <div class="left_icon">
                            <div class="l_icon1"><a href="#"><i class="fa-solid fa-heart"></i></a></div>
                            <div class="l_icon2"><a href="#"><i class="fa-solid fa-comment"></i></a></div>
                            <div class="l_icon3"><a href="#"><i class="fa-solid fa-image"></i></a></div>
                        </div>
                        <div class="right_icon">
                            <div class="r_icon_1">
                                <a href="#"><i class="fa-solid fa-bookmark"></i></a>
                            </div>
                        </div>
                    </div>
                    <!-- icon_wrap -->
                </div>
                <!-- //icon -->

            <div id="feed_text">
            <div class="feed_text">
                <div class="text_wrap">
                    <div class="t_title">
                        <h2>${vo.diary_title}</h2>
                    </div>
                    <div class="t_text">
                        <p>
                        ${fn:replace(vo.diary_content,newLine,"<br>")}</div>
                    </p>
                </div>
                <!-- //text_wrap -->
                <div class="t_tag">
                    <div class="tag1"><a href="#">#좋음</a></div>
                    <div class="tag2"><a href="#">#싫음</a></div>
                    <div class="tag3"><a href="#">#나쁨</a></div>
                </div>
                <!-- //tag -->
                <div class="day">
                    <span>December. 7. 2022</span>
                    <span>7:21</span>
                    <span>am</span>
                </div>
                <!-- //day -->
                
                 <div class="feed_btn">
                    <div class="edt_btn">
                        <button type="button" onclick="goEdit(${vo.diary_seq})">수정</button>
                    </div>
                    <div class="del_btn">
                       <button onclick = "goDel(${vo.diary_seq})">삭제</button>
                    </div>
                    <div class="list_btn">
                        <button type="button" onclick="location.href='${cpath}/diary.do'">목록</button>
                    </div>
                </div>
                <!-- //feed_btn -->
            </div>
            <!-- //feed_text -->
        </div>
            <!-- // #feed_text -->
            	<div class="container">
            	<c:if test="${!empty mvo}">
				<form action="${cpath}/diaryComment.do" class="form-horizontal"
					method="post">
					<input type="hidden" name="diary_seq" value="${vo.diary_seq}">

					<div class="input-group flex-nowrap">
						<input type="hidden" name="mem_id" value="${mvo.mem_id}">
						<input type="hidden" name="mem_nick" value="${mvo.mem_nick}">
						<span class="input-group-text" id="addon-wrapping">${mvo.mem_nick}</span>
						<input type="text" class="form-control" placeholder="댓글 입력"
							name="diary_cmt_content" aria-label="title"
							aria-describedby="addon-wrapping">
						<button type="submit" class="btn btn-sm btn-primary">등록</button>
					
					
				</div>
				</form>
				</c:if>
		
		</div>
		
            <div class="feed_comment item">
                <div class="comment_wrap">
        <c:forEach var = "cvo" items = "${list}">
		<c:if test = "${cvo.diary_seq eq vo.diary_seq}">
                    <div class="coment1">
                    <input type="hidden" name="diary_cmt_seq" value="${cvo.diary_cmt_seq}">
                        <div class="co_profile">${cvo.mem_nick}</div>
                            <div class="co_text">
                                 <p id= "ct${cvo.diary_cmt_seq}">${cvo.diary_cmt_content}</p>
                            </div>
                        <div class="co_time">
                            <span>${cvo.diary_cmt_date}</span>
                        </div>
                        
                        <c:if test="${!empty mvo && cvo.mem_id eq mvo.mem_id}">
                      
							<button type="button" class="btn float-end" onclick="goCDel(${cvo.diary_cmt_seq},${vo.diary_seq})">삭제</button>
							<span id = "b${cvo.diary_cmt_seq}"><button type="button" class="btn float-end" onclick="goCUpdteform(${cvo.diary_cmt_seq},${vo.diary_seq})">수정</button></span>
                
                    </div>
                    </c:if>
                    </c:if>
                    </c:forEach>
                </div>
            </div>
            <!-- //feed_comment -->
            
        </div>
    </div>
        <!-- feed_wrap -->        
    </div>
    </section>
</main>
<jsp:include page="footer.jsp" flush="true"/>

<script type="text/javascript">
function reload(){  
       location.reload();
}
	<!-- script -->
	<script type="text/javascript"
		src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script src="${cpath}/js/slick.min.js"></script>

</body>
</html>
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
	<div class="banner"></div>
<!-- //공백  -->  
    <div class="container">
        <section class="feed">
        <div class="feed_wrap">
            <div class="profile">
                <div class="profile_img">
                    <a href="#"><i class="fa-solid fa-face-smile"></i></a>
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
                 <div class="tag_icon">
                        <div class="tag1">
                          <button>
                          <div><img src="icon/normal.png" alt="편안"></div>
                          <p>편안</p>
                          </button>
                        </div>
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
                        <button type="button" onclick="goEdit(${vo.diary_seq})"><i class="fa-solid fa-pen-to-square"></i> 수정</button>
                    </div>
                    <div class="del_btn">
                       <button onclick = "goDel(${vo.diary_seq})"><i class="fa-solid fa-eraser"></i> 삭제</button>
                    </div>
                    <div class="list_btn">
                        <button type="button" onclick="location.href='${cpath}/diary.do'"><i class="fa-solid fa-list-ul"></i> 목록</button>
                    </div>
                </div>
                <!-- //feed_btn -->
            </div>
            <!-- //feed_text -->
        </div>
            <!-- // #feed_text -->
            
           <!-- //댓글입력창 영역------------------------->
            	<section id="tab-section-2" class="tab-section">

								<!-- 가져온 소스 -->
								<div class="feeds-commit">
									<div class="coment">
										<img src="${cpath }/img/baby5.jpg" alt="#">
										<div class="info">
											<p>
												<a href='#' class="name"><strong>야누</strong></a>
											</p>
										
										</div>
										<p>우리 용용이랑 친구해요!</p>
										<p class="date">22.12.07</p>
									</div>

									<div class="coment">
										<img src="${cpath }/img/baby10.jpg" alt="#">
										<div class="info">
											<p>
												<a href='#' class="name"><strong>종규</strong></a>
											</p>
					
										</div>
										<p>아기들은 역시 웃을때가 가장 예쁘죠?</p>
										<p class="date">22.12.07</p>
									</div>

									<div class="coment">
										<img src="${cpath }/img/baby14.jpg" alt="#">
										<div class="info">
											<p>
												<a href='#' class="name"><strong>경주</strong></a>
											</p>
										
										</div>
										<p>아기가 너무 예뻐요! 사랑스러워요! 예쁜 아기대회 나가도 될듯?!</p>
										<p class="date">22.12.07</p>
									</div>

									<div class="coment">
										<img src="${cpath }/img/baby19.jpg" alt="#">
										<div class="info">
											<p>
												<a href='#' class="name"><strong>호전</strong></a>
											</p>
										
										</div>
										<p>저희 조카도 정말 귀여운데 저희 조카 생각나네요!</p>
										<p class="date">22.12.07</p>
									</div>

									<!-- 작성한 댓글이 들어오는 창  -->
									<ul id="comment-wrapper">
									</ul>
								</div>

								<form id="comment">
									<input type="text" placeholder="댓글 달기..." id="commentInput">
									<button id="submit">게시</button>
								</form>

							</section>
            <!-- //댓글입력받은 리스트END -------------------------> 
            
           
            
        </div>
    </div>
        <!-- feed_wrap -->        
    </div>
    </section>
</main>
<jsp:include page="footer.jsp" flush="true"/>


<!-- script -->	
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="${cpath}/js/slick.min.js"></script>
<script src="${cpath}/js/diary.js"></script>
<script src="${cpath}/js/nav.js"></script>
<script src="${cpath }/js/diaryDetail.js"></script>


</body>
</html>
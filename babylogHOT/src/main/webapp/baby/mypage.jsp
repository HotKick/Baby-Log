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
<title>mypage</title>

<!-- style -->
<link rel="stylesheet" href="${cpath}/css/reset.css">
<link rel="stylesheet" href="${cpath}/css/common.css">
<link rel="stylesheet" href="${cpath}/css/mypage.css">

<!-- 슬릭 -->
<link rel="stylesheet" type="text/css" href="${cpath}/css/slick.css" />
<link rel="stylesheet" type="text/css"
	href="${cpath}/css/slick-theme.css" />

<!-- 웹아이콘 -->
<script src="https://kit.fontawesome.com/e76461f593.js"
	crossorigin="anonymous"></script>


<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>

<!-- 파일 선택 가리기 -->


<script type="text/javascript">
   
    let userData = ''
    
    function updateform(res){
    	
    	$("#fileDiv").css("display","block");
    	
    	console.log('update form function',res)
    	userData = res
    	
    	console.log('mem id : ',mem_id)
    	var mem_id = $("#mem_id").text();
    	var temp = $("#ment").text();
    	var newMent = "<input type = 'text' id = 'ment2' class = 'form-control' value = '"+temp+"'/>";
    	$("#ment").html(newMent);
    	var newMentBtn = "<button onclick= 'updateprof()'>수정하기</button>";
    
    	console.log(newMentBtn)
    	$("#profBtn").html(newMentBtn);
    	
    	
    }
    
    function updateprof(){
    	console.log('update prof function',userData)
    	var mem_id = $("#mem_id").text();
    	var mem_prof = $("#mem_prof").val();
       	var mem_ment = $("#ment2").val();
       	
       	
       	$(document).ready(function() { 
       	
       		
       	console.log('ajax 통신')
       	

       	
    	 $("#updateform").ajaxSubmit({
    		url : "${cpath}/updateprof.do",
    		type : "POST",
    		processData: false,
            contentType: false,
    		data : {"mem_id": mem_id,"mem_prof":mem_prof,"mem_ment":mem_ment},
    		success : function(){
    			console.log('success')
    			//location.reload()
    			location.href= "${cpath}/mypage.do";
    		},
    		error : function(){alert("에러!")}	
    	}); 
    	
    	
    });
    
    };
    
    </script>

<script type="text/javascript">

var dw1 = document.getElementsByClassName('dw1');
var dw2 = document.getElementsByClassName('dw2');
var dw3 = document.getElementsByClassName('dw3');
var dw4 = document.getElementsByClassName('dw4');


    /* 행복 버튼 */
	function emo_happy(){
    	
		for(var i =0; i<dw1.length;i++){
			dw1[i].style.display = 'block';
		}
		for(var i =0; i<dw2.length;i++){
			dw2[i].style.display = 'none';
		}
		for(var i =0; i<dw3.length;i++){
			dw3[i].style.display = 'none';
		}
		for(var i =0; i<dw4.length;i++){
			dw4[i].style.display = 'none';
		}
		
	}
    
    /* 슬픔 버튼  */
	function emo_sad(){
    	
		for(var i =0; i<dw1.length;i++){
			dw1[i].style.display = 'none';
		}
		for(var i =0; i<dw2.length;i++){
			dw2[i].style.display = 'block';
		}
		for(var i =0; i<dw3.length;i++){
			dw3[i].style.display = 'none';
		}
		for(var i =0; i<dw4.length;i++){
			dw4[i].style.display = 'none';
		}
		
	}
    
    /* 화남 버튼 */
	function emo_angry(){
    	
		for(var i =0; i<dw1.length;i++){
			dw1[i].style.display = 'none';
		}
		for(var i =0; i<dw2.length;i++){
			dw2[i].style.display = 'none';
		}
		for(var i =0; i<dw3.length;i++){
			dw3[i].style.display = 'block';
		}
		for(var i =0; i<dw4.length;i++){
			dw4[i].style.display = 'none';
		}
	
	}
    
   
    /* 안정 버튼 */
	function emo_neu(){
    	
		for(var i =0; i<dw1.length;i++){
			dw1[i].style.display = 'none';
		}
		for(var i =0; i<dw2.length;i++){
			dw2[i].style.display = 'none';
		}
		for(var i =0; i<dw3.length;i++){
			dw3[i].style.display = 'none';
		}
		for(var i =0; i<dw4.length;i++){
			dw4[i].style.display = 'block';
		}
		
	}
	
	
	
	
	
</script>







</head>
<body>

	<%@ include file="header.jsp"%>

	<div class="banner"></div>
	<!-- //공백  -->

	<!-- //공백  -->

	<main class="container">

		<form action="">
			<div class="profile_wrap">
				<div class="pro_img">
					<img src="img/baby24.jpg" alt="프로필이미지"> <input type="button"
						value="+">
				</div>
				<div class="pro_info">
					<div class="info_wrap">
						<div class="pro_name">
							<input type="text" value="지야누">
						</div>
						<div class="pro_id">${mvo.mem_nick }</div>
						<div class="pro_desc">${mvo.mem_ment }</div>
						<div class="pro_edit">
							<input type="button" value="프로필 수정">
						</div>
					</div>
					<div class="tag">
						<div class="tag_icon">
							<div class="tag1">
								<button onclick="emo_happy()">
									<div>
										<img src="${cpath }/icon/happy.png" alt="행복">
									</div>
									<p>행복</p>
								</button>
							</div>
							<div class="tag2">
								<button onclick="emo_sad()">
									<div>
										<img src="${cpath }/icon/sad.png" alt="슬픔">
									</div>
									<p>슬픔</p>
								</button>
							</div>
							<div class="tag3">
								<button onclick="emo_angry()">
									<div>
										<img src="${cpath }/icon/angry.png" alt="화남">
									</div>
									<p>화남</p>
								</button>
							</div>
							<div class="tag4">
								<button onclick="emo_normal()">
									<div>
										<img src="${cpath }/icon/normal.png" alt="편안">
									</div>
									<p>편안</p>
								</button>
							</div>
						</div>
						<div class="bt_wrap">
							<button type="button"
								onclick="location.href='${cpath }/diaryWriteForm.do'">
								<i class="fa-solid fa-pen-to-square"></i>글쓰기
							</button>
						</div>
					</div>
				</div>


			</div>
		</form>


		<section class="gallery">
			<div class="toolbar">
				<div class="search-wrapper">
					<input type="search" placeholder="Search for photos">
					<div class="counter">
						Total photos: <span>12</span>
					</div>
				</div>
				<ul class="view-options">
					<li class="zoom"><input type="range" min="180" max="380"
						value="280"></li>
					<li class="show-grid active">
						<button>
							<i class="fa-solid fa-border-all"></i>
						</button>
					</li>
					<li class="show-list">
						<button>
							<i class="fa-solid fa-list-ul"></i>
						</button>
					</li>
				</ul>
			</div>
			<!-- //toolbar -->


			<ol class="image-list grid-view">

				<c:forEach var="vo" items="${list}">
<<<<<<< HEAD
<<<<<<< HEAD
				<c:if test = "${vo.mem_id==mvo.mem_id}">
=======
				
>>>>>>> branch 'master' of https://github.com/HotKick/HotKick.git
					<c:choose>
						<c:when test="${vo.diary_emo==0}">
							<li class="dw1">
								<figure>
									<div class="fit">
										<c:choose>
											<c:when test="${vo.diary_file != null}">
												<a href="${cpath }/diaryDetail.do?diary_seq=${vo.diary_seq}"
													onclick="reload();"><img
													src="${cpath }/img/${vo.diary_file}" alt="다이어리"></a>
											</c:when>
											<c:otherwise>
												<a href="${cpath }/diaryDetail.do?diary_seq=${vo.diary_seq}"
													onclick="reload();"><img src="${cpath}/img/diary2.jpg"
													alt="1번 다이어리"></a>
											</c:otherwise>
										</c:choose>
									</div>
									<figcaption id="fig">
										<div class="title">
											<p>${vo.diary_title}</p>
=======
					<c:if test="${vo.mem_id == mvo.mem_id }">
						<c:choose>
							<c:when test="${vo.diary_emo==0}">
								<li class="dw1">
									<figure>
										<div class="fit">
											<c:choose>
												<c:when test="${vo.diary_file != null}">
													<a
														href="${cpath }/diaryDetail.do?diary_seq=${vo.diary_seq}"
														onclick="reload();"><img
														src="${cpath }/img/${vo.diary_file}" alt="다이어리"></a>
												</c:when>
												<c:otherwise>
													<a
														href="${cpath }/diaryDetail.do?diary_seq=${vo.diary_seq}"
														onclick="reload();"><img src="${cpath}/img/diary2.jpg"
														alt="1번 다이어리"></a>
												</c:otherwise>
											</c:choose>
>>>>>>> branch 'master' of https://github.com/HotKick/HotKick.git
										</div>
										<figcaption id="fig">
											<div class="title">
												<p>${vo.diary_title}</p>
											</div>
											<div class="diary_info">
												<span>작성자 <a href="" target="_blank">${vo.mem_nick}</a></span>
												<span>${vo.diary_date}</span>
											</div>
											<div class="emotion">
												<button class="happy">
													<div>
														<img src="${cpath }/icon/happy.png" alt="행복">
													</div>
													<p>행복</p>
												</button>
											</div>

										</figcaption>
									</figure>
								</li>
							</c:when>
							<c:when test="${vo.diary_emo==1}">
								<li class="dw2">
									<figure>
										<div class="fit">
											<c:choose>
												<c:when test="${vo.diary_file != null}">
													<a
														href="${cpath }/diaryDetail.do?diary_seq=${vo.diary_seq}"
														onclick="reload();"><img
														src="${cpath }/img/${vo.diary_file}" alt="다이어리"></a>
												</c:when>
												<c:otherwise>
													<a
														href="${cpath }/diaryDetail.do?diary_seq=${vo.diary_seq}"
														onclick="reload();"><img src="${cpath}/img/diary2.jpg"
														alt="1번 다이어리"></a>
												</c:otherwise>
											</c:choose>
										</div>
										<figcaption id="fig">
											<div class="title">
												<p>${vo.diary_title}</p>
											</div>
											<div class="diary_info">
												<span>작성자 <a href="" target="_blank">${vo.mem_nick}</a></span>
												<span>${vo.diary_date}</span>
											</div>
											<div class="emotion">
												<button class="sad">
													<div>
														<img src="${cpath }/icon/sad.png" alt="슬픔">
													</div>
													<p>슬픔</p>
												</button>
											</div>
										</figcaption>
									</figure>
								</li>
							</c:when>
							<c:when test="${vo.diary_emo==2}">
								<li class="dw3">
									<figure>
										<div class="fit">
											<c:choose>
												<c:when test="${vo.diary_file != null}">
													<a
														href="${cpath }/diaryDetail.do?diary_seq=${vo.diary_seq}"
														onclick="reload();"><img
														src="${cpath }/img/${vo.diary_file}" alt="다이어리"></a>
												</c:when>
												<c:otherwise>
													<a
														href="${cpath }/diaryDetail.do?diary_seq=${vo.diary_seq}"
														onclick="reload();"><img src="${cpath}/img/diary2.jpg"
														alt="1번 다이어리"></a>
												</c:otherwise>
											</c:choose>
										</div>
										<figcaption id="fig">
											<div class="title">
												<p>${vo.diary_title}</p>
											</div>
											<div class="diary_info">
												<span>작성자 <a href="" target="_blank">${vo.mem_nick}</a></span>
												<span>${vo.diary_date}</span>
											</div>
											<div class="emotion">
												<button class="angry">
													<div>
														<img src="${cpath }/icon/angry.png" alt="화남">
													</div>
													<p>화남</p>
												</button>
											</div>
										</figcaption>
									</figure>
								</li>
							</c:when>
							<c:otherwise>
								<li class="dw4">
									<figure>
										<div class="fit">
											<c:choose>
												<c:when test="${vo.diary_file != null}">
													<a
														href="${cpath }/diaryDetail.do?diary_seq=${vo.diary_seq}"
														onclick="reload();"><img
														src="${cpath }/img/${vo.diary_file}" alt="다이어리"></a>
												</c:when>
												<c:otherwise>
													<a
														href="${cpath }/diaryDetail.do?diary_seq=${vo.diary_seq}"
														onclick="reload();"><img src="${cpath}/img/diary2.jpg"
														alt="1번 다이어리"></a>
												</c:otherwise>
											</c:choose>
										</div>
										<figcaption id="fig">
											<div class="title">
												<p>${vo.diary_title}</p>
											</div>
											<div class="diary_info">
												<span>작성자 <a href="" target="_blank">${vo.mem_nick}</a></span>
												<span>${vo.diary_date}</span>
											</div>
											<div class="emotion">
												<button class="normal">
													<div>
														<img src="${cpath }/icon/normal.png" alt="편안">
													</div>
													<p>편안</p>
												</button>
											</div>
										</figcaption>
									</figure>
								</li>
							</c:otherwise>
						</c:choose>



					</c:if>
				</c:forEach>

	
</ol>


		</section>


	</main>
	<jsp:include page="footer.jsp" flush="true" />





	<!-- script -->

	<script src="${cpath}/js/slick.min.js"></script>
	<script src="${cpath}/js/diary.js"></script>
	<script src="${cpath}/js/nav.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.js"></script>
	<script src="https://malsup.github.io/jquery.form.js"></script>

	<script>
        function onClickUpload() {
            let myInput = document.getElementById("my-input");
            myInput.click();
        }
    </script>


</body>
</html>
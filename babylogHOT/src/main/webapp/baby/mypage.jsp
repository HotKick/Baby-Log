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
<link rel="stylesheet" type="text/css" href="${cpath}/css/slick-theme.css" />

<!-- 웹아이콘 -->
<script src="https://kit.fontawesome.com/e76461f593.js"
	crossorigin="anonymous"></script>
	
    
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
	
	<!-- 파일 선택 가리기 -->


    <script type = "text/javascript">
   
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
    	$("#profBtn").html(newMentBtn);
    }
    
    function updateprof(){
    	console.log('update prof function',userData)
    	var mem_id = $("#mem_id").text();
    	var mem_prof = $("#mem_prof").val();
       	var mem_ment = $("#ment2").val();

       	$(document).ready(function() { 
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
    
    
    
    
    
    
    
</head>
<body>

	<%@ include file="header.jsp" %>
	
	<div class="banner"></div>
<!-- //공백  -->

	 <!-- //공백  -->

    <main class="container">

        <form action="">
        <div class="profile_wrap">
            <div class="pro_img">
                <img src="img/baby24.jpg" alt="프로필이미지">
                <input type="button" value="+">
            </div>
            <div class="pro_info">
                <div class="info_wrap">
                  <div class="pro_name"><input type="text" value="지야누"></div>
                  <div class="pro_id">@yanoo</div>
                  <div class="pro_desc">광주에사는 용용이 엄마입니다</div>
                  <div class="pro_desc">소통 ㅣ 친목 ㅣ 아기자랑 모두 환영이요 ^^</div>
                  <div class="pro_edit"><input type="button" value="프로필 수정"></div>
                </div>
                <div class="tag">
                  <div class="tag_icon">
                    <div class="tag1">
                      <button>
                      <div><img src="icon/normal.png" alt="편안"></div>
                      <p>편안</p>
                      </button>
                    </div>
                    <div class="tag2">
                      <button>
                      <div><img src="icon/happy.png" alt="행복"></div>
                      <p>행복</p>
                      </button>
                    </div>
                    <div class="tag3">
                      <button>
                      <div><img src="icon/sad.png" alt="슬픔"></div>
                      <p>슬픔</p>
                      </button>
                    </div>
                    <div class="tag4">
                      <button>
                      <div><img src="icon/angry.png" alt="화남"></div>
                      <p>화남</p>
                      </button>
                    </div>
                  </div>
                  <div class="bt_wrap">
                      <button type="button" onclick="location.href='diaryWrite.html'">
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
                Total photos: <span>0</span></div>
            </div>
            <ul class="view-options">
              <li class="zoom">
                <input type="range" min="180" max="380" value="280">
              </li>
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
            <li>
              <figure>
                <div class="fit">
                <a class="item" href="diaryDetail.html"><img src="img/baby50.jpg" alt="다이어리"></a>
                </div>
                <figcaption>
                  <div class="title"><p>다이어리1</p></div>
                  <div class="diary_info">
                    <span>작성자 <a href="" target="_blank"><strong>야누</strong></a></span>
                    <span>22.12.09</span>
                  </div>
                    <div class="emotion">                
                      <button class="normal">
                      <div><img src="icon/normal.png" alt="편안"></div>
                      <p>편안</p>
                      </button>
                    </div>
                </figcaption>
              </figure>
            </li>
            <!-- 1 -->
            <li>
              <figure>
                <div class="fit">
                <a class="item" href="diaryDetail.html"><img src="img/baby32.jpg" alt="다이어리"></a>
                </div>
                <figcaption>
                  <div class="title"><p>다이어리2</p></div>
                  <div class="diary_info">
                    <span>작성자 <a href="" target="_blank"><strong>야누</strong></a></span>
                    <span>22.12.09</span>
                  </div>
                    <div class="emotion">                
                      <button class="happy">
                      <div><img src="icon/happy.png" alt="행복"></div>
                      <p>행복</p>
                      </button>
                    </div>
                </figcaption>
              </figure>
            </li>
            <!-- 2 -->
            <li>
              <figure>
                <div class="fit">
                <a class="item" href="diaryDetail.html"><img src="img/baby39.jpg" alt="다이어리"></a>
                </div>
                <figcaption>
                  <div class="title"><p>다이어리3</p></div>
                  <div class="diary_info">
                    <span>작성자 <a href="" target="_blank"><strong>야누</strong></a></span>
                    <span>22.12.09</span>
                  </div>
                    <div class="emotion">                
                      <button class="sad">
                      <div><img src="icon/sad.png" alt="슬픔"></div>
                      <p>슬픔</p>
                      </button>
                    </div>
                </figcaption>
              </figure>
            </li>
            <!-- 3 -->
            <li>
              <figure>
                <div class="fit">
                <a class="item" href="diaryDetail.html"><img src="img/baby21.jpg" alt="다이어리"></a>
                </div>
                <figcaption>
                  <div class="title"><p>다이어리4</p></div>
                  <div class="diary_info">
                    <span>작성자 <a href="" target="_blank"><strong>야누</strong></a></span>
                    <span>22.12.09</span>
                  </div>
                    <div class="emotion">                
                      <button class="angry">
                      <div><img src="icon/angry.png" alt="분노"></div>
                      <p>화남</p>
                      </button>
                    </div>
                </figcaption>
              </figure>
            </li>
            <!-- 4 -->
            <li>
              <figure>
                <div class="fit">
                <a class="item" href="diaryDetail.html"><img src="img/baby46.jpg" alt="다이어리"></a>
                </div>
                <figcaption>
                  <div class="title"><p>다이어리1</p></div>
                  <div class="diary_info">
                    <span>작성자 <a href="" target="_blank"><strong>야누</strong></a></span>
                    <span>22.12.09</span>
                  </div>
                    <div class="emotion">                
                      <button class="sad">
                      <div><img src="icon/sad.png" alt="슬픔"></div>
                      <p>슬픔</p>
                      </button>
                    </div>
                </figcaption>
              </figure>
            </li>
            <!-- 5 -->
            <li>
              <figure>
                <div class="fit">
                <a class="item" href="diaryDetail.html"><img src="img/baby6.jpg" alt="다이어리"></a>
                </div>
                <figcaption>
                  <div class="title"><p>다이어리1</p></div>
                  <div class="diary_info">
                    <span>작성자 <a href="" target="_blank"><strong>야누</strong></a></span>
                    <span>22.12.09</span>
                  </div>
                    <div class="emotion">                
                      <button class="happy">
                      <div><img src="icon/happy.png" alt="행복"></div>
                      <p>편안</p>
                      </button>
                    </div>
                </figcaption>
              </figure>
            </li>
            <!-- 6 -->
            <li>
              <figure>
                <div class="fit">
                <a class="item" href="diaryDetail.html"><img src="img/baby9.jpg" alt="다이어리"></a>
                </div>
                <figcaption>
                  <div class="title"><p>다이어리7</p></div>
                  <div class="diary_info">
                    <span>작성자 <a href="" target="_blank"><strong>야누</strong></a></span>
                    <span>22.12.09</span>
                  </div>
                    <div class="emotion">                
                      <button class="normal">
                      <div><img src="icon/normal.png" alt="편안"></div>
                      <p>편안</p>
                      </button>
                    </div>
                </figcaption>
              </figure>
            </li>
            <!-- 7 -->
            <li>
              <figure>
                <div class="fit">
                <a class="item" href="diaryDetail.html"><img src="img/baby19.jpg" alt="다이어리"></a>
                </div>
                <figcaption>
                  <div class="title"><p>다이어리8</p></div>
                  <div class="diary_info">
                    <span>작성자 <a href="" target="_blank"><strong>야누</strong></a></span>
                    <span>22.12.09</span>
                  </div>
                    <div class="emotion">                
                      <button class="sad">
                      <div><img src="icon/sad.png" alt="편안"></div>
                      <p>편안</p>
                      </button>
                    </div>
                </figcaption>
              </figure>
            </li>
            <!-- 8 -->
            <li>
              <figure>
                <div class="fit">
                <a class="item" href="diaryDetail.html"><img src="img/baby14.jpg" alt="다이어리"></a>
                </div>
                <figcaption>
                  <div class="title"><p>다이어리9</p></div>
                  <div class="diary_info">
                    <span>작성자 <a href="" target="_blank"><strong>야누</strong></a></span>
                    <span>22.12.09</span>
                  </div>
                    <div class="emotion">                
                      <button class="happy">
                      <div><img src="icon/happy.png" alt="happy"></div>
                      <p>행복</p>
                      </button>
                    </div>
                </figcaption>
              </figure>
            </li>
            <!-- 9 -->
            <li>
              <figure>
                <div class="fit">
                <a class="item" href="diaryDetail.html"><img src="img/baby44.jpg" alt="다이어리"></a>
                </div>
                <figcaption>
                  <div class="title"><p>다이어리10</p></div>
                  <div class="diary_info">
                    <span>작성자 <a href="" target="_blank"><strong>야누</strong></a></span>
                    <span>22.12.09</span>
                  </div>
                    <div class="emotion">                
                      <button class="sad">
                      <div><img src="icon/sad.png" alt="슬픔"></div>
                      <p>슬픔</p>
                      </button>
                    </div>
                </figcaption>
              </figure>
            </li>
            <!-- 10 -->
            <li>
              <figure>
                <div class="fit">
                <a class="item" href="diaryDetail.html"><img src="img/baby4.jpg" alt="다이어리"></a>
                </div>
                <figcaption>
                  <div class="title"><p>다이어리11</p></div>
                  <div class="diary_info">
                    <span>작성자 <a href="" target="_blank"><strong>야누</strong></a></span>
                    <span>22.12.09</span>
                  </div>
                    <div class="emotion">                
                      <button class="normal">
                      <div><img src="icon/normal.png" alt="편안"></div>
                      <p>편안</p>
                      </button>
                    </div>
                </figcaption>
              </figure>
            </li>
            <!-- 11 -->
            <li>
              <figure>
                <div class="fit">
                <a class="item" href="diaryDetail.html"><img src="img/baby47.jpg" alt="다이어리"></a>
                </div>
                <figcaption>
                  <div class="title"><p>다이어리1</p></div>
                  <div class="diary_info">
                    <span>작성자 <a href="" target="_blank"><strong>야누</strong></a></span>
                    <span>22.12.09</span>
                  </div>
                    <div class="emotion">                
                      <button class="angry">
                      <div><img src="icon/angry.png" alt="화남"></div>
                      <p>화남</p>
                      </button>
                    </div>
                </figcaption>
              </figure>
            </li>
            <!-- 12 -->
          </ol>
      </section>


    </main>
    <jsp:include page="footer.jsp" flush="true"/>
    



	
	<!-- script -->

	<script src="${cpath}/js/slick.min.js"></script>
	<script src="${cpath}/js/diary.js"></script>
	<script src="${cpath}/js/nav.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
	
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.js"></script> 
    <script src="https://malsup.github.io/jquery.form.js"></script> 
	
	 <script>
        function onClickUpload() {
            let myInput = document.getElementById("my-input");
            myInput.click();
        }
    </script>
	
	
</body>
</html>
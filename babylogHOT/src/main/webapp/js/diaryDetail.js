

// 4. 댓글 자바스크립트 ============================

// 댓글을 - 적지 않았을때 alert창을 띄운다
"use strict"
const commentInput = document.getElementById("commentInput");
const commentSubmit = document.getElementById("submit")
function checkInput() {
    const newComment = commentInput.value;
    if (newComment.length > 0) { // input의 값이 0 보다 클때
        addComment(newComment); // addComment함수를 실행한다.
    } else if(window.event.code === 'Enter'){ // 엔터를 입력하면
        if(newComment.length > 0){ // input의 값이 0보다 클때
            addComment(newComment);// addComment함수를 실행한다.
        }else{ // 0 보다 작을 때
            alert("댓글을 입력하세요!");// alert 창을 띄워준다.
        }
    }else { // input 의 값이 0보다 작을 때
        alert("댓글을 입력하세요!");// alert 창을 띄워준다.
    }
    event.preventDefault(); // 이벤트를 취소 해 준다.
}

// 댓글을 - 추가하는 글을 li태그에 삽입 시켜주기 
function addComment(value) {
    const commentLists = document.getElementById('comment-wrapper');
    const newCommentList = document.createElement('li');
    // 코멘트에 들어갈 값 
    const defaltComment = 
    
    // 코멘트 기본값 
    // <p class="name"><strong>eenooyos</strong></p>
    // <p> ${value}</p> 
    // <span class="delete"> x </span>
    
    `<div class="coment">
    <img src="img/baby1.jpg" alt="#">
    <div class="info">
        <p><a href='#' class="name"><strong>배미리칸</strong></a></p>
    </div>
    <p>${value}</p>
    <p class="date">22.12.07</p>
    <span class="delete"> x </span>
</div>`

    newCommentList.innerHTML = defaltComment; // li 태그에 댓글defalt값을 설정 해 준다.
    commentLists.appendChild(newCommentList);// ul에 li 를 자식요소로 붙인다.
    commentInput.value = ""; // 댓글 입력 후 input의 값을 비어있게 만든다.

    deleteComment(newCommentList);// deleteComment 함수를 실행시킨다.

}

// 코멘트를 삭제 하기 

function deleteComment(newCommentList) {
    const deleteBtn = newCommentList.querySelector('.delete');
    deleteBtn.addEventListener('click', () => newCommentList.remove());
}

const init = () => {
    commentSubmit.addEventListener('click', checkInput);
}

init();


// 슬릭
$('.p_img').slick({
  dots: true,
  infinite: true,
  speed: 500,
  fade: true,
  cssEase: 'linear'
});

// 버튼 클릭했을때 스크롤
// const spans = document.querySelectorAll("span")
const clicks = document.querySelectorAll(".click")
const contents = document.querySelectorAll(".content")
const firstTop = contents[0].offsetTop
const secondTop = contents[1].offsetTop
const thirdTop = contents[2].offsetTop


clicks[0].onclick =function(){
    window.scroll({top:firstTop, behavior:'smooth'})
}
clicks[1].onclick =function(){
    window.scroll({top:secondTop, behavior:'smooth'})
}
clicks[2].onclick =function(){
    window.scroll({top:thirdTop, behavior:'smooth'})
}

// 슬릭
    

$('.slider').slick({
    slidesToShow: 3,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 2000
  });



const imageList = document.querySelector('.image-list');
const btns = document.querySelectorAll('.view-options button');
const imageListItems = document.querySelectorAll('.image-list li');
const active = 'active';
const listView = 'list-view';
const gridView = 'grid-view';
const dNone = 'd-none';



// 버튼 활성화 ------------------------------------------
for(const btn of btns){
    btn.addEventListener('click', function(){
        const parent = this.parentElement;
        document.querySelector('.view-options .active').classList.remove(active);
        parent.classList.add(active);

        if(parent.classList.contains('show-list')){
            parent.previousElementSibling.previousElementSibling.classList.add(dNone);
            imageList.classList.remove(gridView);
            imageList.classList.add(listView);

        }else{
            parent.previousElementSibling.classList.add(dNone);
            imageList.classList.remove(listView);
            imageList.classList.add(gridView);
        }
    
    })
}

// 리스트 너비 조절 Range 스크립트
const rangeInput = document.querySelector('input[type="range"]');

rangeInput.addEventListener('input', function(){
    // this.value
    // document.documentElement.style.setProperty('--minRangeValue',this.value+'px')  -> 이렇게 this.value+'px' 쓰는건 옛날 방식
    document.documentElement.style.setProperty('--minRangeValue',`${this.value}px`);
    // 선택자.style.css 속성명 = 값
    // 선택자.style.backgroundColor = 'blue'
    // 선택자.style.setProperty('background-color','blue);
});

// 검색키워드로 필터 적용
// const captions = document.querySelectorAll('.image-list figcaption p:first-child');
const captions = document.querySelectorAll('.image-list figcaption .emotion');
const myArray = [];
let counter = 1;

for(const caption of captions){
    myArray.push({
        id: counter++,
        text:caption.textContent

    });
}

console.log(myArray);

const searchInput = document.querySelector('input[type="search"]');
const photosCounter = document.querySelector('.toolbar .counter span');

searchInput.addEventListener('keyup', keyupHandler);

// keyup(키 눌렀다가 땔 때 작동), keydown(키 눌렀을때 꾹 눌러도 한번만 작동), keypress(꾹 누르고 있으면 계속 이벤트 작동)

function keyupHandler(){

    // 클릭했을때 안보이게 
    for(const item of imageListItems){
        item.classList.add(dNone);
    }

    // 키워드 매치하는것을 보이게  
    const keywords = this.value;

    const filteredArray = myArray.filter(el => el.text.toLowerCase().includes(keywords.toLowerCase()));
    console.log(filteredArray);

    if(filteredArray.length > 0){
        for(const el of filteredArray){

            document.querySelector(`.image-list li:nth-child(${el.id})`).classList.remove(dNone);
        }

    }
    photosCounter.textContent = filteredArray.length;
}

// filter
/*
var arr = [3,15,20,39,40];
var arr2 = arr.filter(function(n){


    return n% 5 == 0;
});
console.log(arr2);
*/

// 화살표 함수로 표현
/*
var arr = [3,15,20,39,40];
var arr2 = arr.filter(n => {return n% 5 == 0;});
console.log(arr2);
*/


/*
var arr = [3,15,20,39,40];
var arr2 = arr.filter(n => n% 5 == 0);
console.log(arr2);
*/



// // 
// const item = document.querySelector('.item');
// const onBtn = document.querySelector('.on a');
// const offBtn = document.querySelector('.off');
// // const links = document.querySelector('.navbar_icons');

//     // 클릭이 될때마다 호출해줘
//     item.addEventListener('click', () => {
//     //메뉴를 클릭했을때 엑티브가 있다면 엑티브를 해줄것이다 
//     onBtn.classList.toggle('active');
// })

//     offBtn.addEventListener('click',() =>{
//     offBtn.classList.toggle('active');
//     })

const items = document.getElementsByClassName("item");

console.log(items);

for(let i=0; i<items.length; i++){
    items[i].addEventListener("click",function(event){
        likeCheck(event);
    });
}

function likeCheck(event){
    const itemEle = event.target.parentElement;
    const fitEle = itemEle.parentElement;
    const likeBox = fitEle.nextElementSibling.nextElementSibling;
    console.log(likeBox.firstElementChild);


    likeBox.className = likeBox.className=="off"?"on":"off";
}


// 버튼을 눌렀을때 a태그 위로 이동금지
window.onload = function(){
    const btn = document.querySelector('#btn_link');
    btn.onclick = function(e){
        // 버튼을 클릭하면, a태그의 href 속성을 제거
        document.querySelector(".disableLink").removeAttribute('href');
    }
}
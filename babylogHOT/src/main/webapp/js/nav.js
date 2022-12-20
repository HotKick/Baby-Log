const toggleBtn = document.querySelector('.navbar_toggleBtn');
const menu = document.querySelector('.navbar_menu');
const links = document.querySelector('.navbar_icons');

// 클릭이 될때마다 호출해줘
toggleBtn.addEventListener('click', () => {
    //메뉴를 클릭했을때 엑티브가 있다면 엑티브를 해줄것이다 
    menu.classList.toggle('active');
    links.classList.toggle('active');
})

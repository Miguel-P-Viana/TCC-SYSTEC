
const avatar = document.getElementById('avatar') 

avatar.addEventListener('click', function abrirmenu(){

    const menuconta = document.getElementsByClassName('menu-conta')[0]

    menuconta.classList.toggle('active')

})



// ao clicar em qualquer outro lugar, fecha o menu

window.onclick = function (e) {
    if(!e.target.matches('#avatar') && !e.target.closest('.menu-conta')) {      // .matches - verifica se o elemento clicado foi o entre parenteses
        const menu = document.getElementsByClassName('menu-conta')[0]

        if(menu.classList.contains('active')) {
            menu.classList.remove('active')
        }
    }
}

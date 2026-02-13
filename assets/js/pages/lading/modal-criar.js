const abrirmodal = document.querySelector('.abrir-modal')

abrirmodal.addEventListener('click', function() {

    const modalcriar = document.querySelector('.modal-criar-conta')
    const modallogar = document.querySelector('.modal-logar-conta')

    modalcriar.style.display = "flex"
    modallogar.style.display = "flex"
})
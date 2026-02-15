const abrirmodalcriar = document.querySelector('.abrir-modal-criar')
const abrirmodallogar = document.querySelector('.abrir-modal-logar')
const modalcriar = document.querySelector('.criar-conta')
const modallog = document.querySelector('.logar-conta')
const x = document.querySelectorAll('.x')

modallog.showModal()

abrirmodalcriar.onclick = () => {
    
    modalcriar.showModal()
    document.body.style.overflow = 'hidden'
}

abrirmodallogar.onclick = () => {
    
    modallog.showModal()
    document.body.style.overflow = 'hidden'
}


// forEach junto com querySelectorAll

x.forEach(botaofechar => {
    botaofechar.onclick = () => {

       
        const modal = botaofechar.closest('dialog')  // encontra o dialog mais proximo do botao que for clicado
        modal.close()
        document.body.style.overflow = 'auto'
    }

})

    
    
    
modallog.addEventListener('cancel', () => {
    document.body.style.overflow = 'auto';
});
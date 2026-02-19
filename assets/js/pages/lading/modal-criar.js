import { resetarModal } from "./passarsection.js"

const abrirmodalcriar = document.querySelector('.abrir-modal-criar')
const abrirmodallogar = document.querySelector('.abrir-modal-logar')
const abriresqueci = document.querySelector('#esqueciminhasenha')
const modalcriar = document.querySelector('.criar-conta')
const modallog = document.querySelector('.logar-conta')
const modalesqueci = document.querySelector('.esqueci-senha')
const x = document.querySelectorAll('.x')






// Abrir o modal de criar conta

abrirmodalcriar.onclick = () => {
    
    modalcriar.showModal()
    document.body.style.overflow = 'hidden'
}



// Abrir o modal de logar

abrirmodallogar.onclick = () => {
    
    modallog.showModal()
    document.body.style.overflow = 'hidden'
}



// Abrir o modal de esqueci senha

abriresqueci.onclick = () => {
    
    modallog.close()
    modalesqueci.showModal()
    document.body.style.overflow = 'hidden'
}





// Fechar ambos os modals


x.forEach(botaofechar => {              // forEach junto com querySelectorAll
    botaofechar.onclick = () => {

       
        const modal = botaofechar.closest('dialog')  // encontra o dialog mais proximo do botao que for clicado
        
        
        // para apagar tudo q estiver escrito nos modais
        
        const form = document.querySelectorAll('[name="formjs"]')

        form.forEach(fecharforms =>{
            
            if(fecharforms) {
        fecharforms.reset()
    }
        })


    
        resetarModal()
        modal.close()
        document.body.style.overflow = 'auto'
    }
})



    
    
    // caso aperte esc, fecha o modal
modallog.addEventListener('cancel', () => {
    document.body.style.overflow = 'auto';
});




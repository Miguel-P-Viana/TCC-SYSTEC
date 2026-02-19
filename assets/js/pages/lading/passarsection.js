const multiforms = document.querySelector('#form')
const botaoprox = document.querySelectorAll('.btnprox')
const botaovoltar = document.querySelectorAll('.btnvoltar')
const bolinhas = document.querySelectorAll('.meio > div') // pega tudo dntro da div .meio

let etapaAtual = 1


function atualizarBolinhas(passo){

    const indiceBolinhas = [0, 2, 4]

    indiceBolinhas.forEach((domIndex, i)=> {
        const bolinha = bolinhas[domIndex]
        if(i + 1 == passo) {
            bolinha.className = 'bolinha-principal'
        }
        else{
            bolinha.className = 'bolinha'
        }
    })
}





function atualizarEtapa(passo){
    etapaAtual = passo


    // dispara o transform: translateX() 
    multiforms.classList.remove('etapa1', 'etapa2', 'etapa3')
    multiforms.classList.add(`etapa${passo}`)

    atualizarBolinhas(passo)
}







botaoprox.forEach(btnprox => {
    btnprox.addEventListener('click', function() {
        
        if(etapaAtual < 3) {
            atualizarEtapa(etapaAtual + 1)
        }
        
    })
})


botaovoltar.forEach(btnant => {
    btnant.addEventListener('click', function() {
        if(etapaAtual > 1) {
            atualizarEtapa(etapaAtual - 1)
        }
    })
})




export function resetarModal() {

    etapaAtual = 1
    multiforms.classList.remove('etapa1', 'etapa2', 'etapa3')
    multiforms.classList.add('etapa1')

    atualizarBolinhas(1)
}
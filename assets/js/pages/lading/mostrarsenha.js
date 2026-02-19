const inputmostrar = document.querySelector('#mostrarsenha')
const inputsenha = document.querySelector("#senha_logar")

inputmostrar.addEventListener('change', function() {

    if (inputmostrar.checked === true) {
        
        inputsenha.type = "text"
}
    else{
        inputsenha.type = "password"
    }
})


const telefone = document.getElementById("telefone");        

telefone.addEventListener("input", () => {    

    let valor = telefone.value.replace(/\D/g, ""); 

    if (valor.length > 11) valor = valor.substring(0, 11);  


    if (valor.length <= 10) {
      telefone.value = valor.replace(/(\d{2})(\d{4})(\d{0,4})/, "($1) $2-$3");
    } else {
      telefone.value = valor.replace(/(\d{2})(\d{5})(\d{0,4})/, "($1) $2-$3");
    }
  })



const cpf = document.getElementById("cpf")

cpf.addEventListener("input", () => {

  let valor = cpf.value.replace(/\D/g, "")

  if (valor.length > 11) {
    valor = valor.substring(0, 11)
  }

  cpf.value = valor.replace(
    /(\d{3})(\d{3})(\d{3})(\d{0,2})/,
    "$1.$2.$3-$4"
  )

})
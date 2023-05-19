function cambiaTexto(){
  let persona = prompt("Per favor escriu el teu nom: ");
  if(persona != null){
    document.getElementById("titulo").innerHTML = "BIENVENIDO A AGROJUCAR " + persona;
  }
}
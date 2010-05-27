
//funcion que valida un correo electronico
function valEmail(valor){
    re=/^[_a-z0-9-]+(.[_a-z0-9-]+)*@[a-z0-9-]+(.[a-z0-9-]+)*(.[a-z]{2,3})$/
    if(!re.exec(valor))    {
        return false;
    }else{
        return true;
    }
}
//funcion que valida la edad mayor que 18 
    edad = document.fvalida.edad.value 
    edad = validarEntero(edad) 
    document.fvalida.edad.value=edad 
    if (edad==""){ 
       alert("Tiene que introducir un número entero en su edad.") 
       document.fvalida.edad.focus() 
       return 0; 
    }else{ 
       if (edad<18){ 
          alert("Debe ser mayor de 18 años.") 
          document.fvalida.edad.focus() 
          return 0; 
       } 
    } 

	//funcion para campo vacio
	valor = document.getElementById("campo").value;
	if( valor == null || valor.length == 0 || /^\s+$/.test(valor) ) {
  return false;
}

//funcion para validar numeros
valor = document.getElementById("campo").value;
if( isNaN(valor) ) {
  return false;
}

//funcion que valida la fecha
var ano = document.getElementById("ano").value;
var mes = document.getElementById("mes").value;
var dia = document.getElementById("dia").value;

valor = new Date(ano, mes, dia);
 
if( !isNaN(valor) ) {
  return false;
}

//validar numero telefonico
valor = document.getElementById("campo").value;
if( !(/^\d{9}$/.test(valor)) ) {
  return false;



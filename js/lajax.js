function crearObjetoXmlHttpRequest(){
// Obtener la instancia del objeto XMLHttpRequest
 
  if(window.XMLHttpRequest) {
    peticion_http = new XMLHttpRequest();
	return peticion_http;
  }
  else if(window.ActiveXObject) {
    peticion_http = new ActiveXObject("Microsoft.XMLHTTP");
	return peticion_http;
  }
}

function descargaArchivo() {
  peticion_http=crearObjetoXmlHttpRequest();
 
  // Preparar la funcion de respuesta
  peticion_http.onreadystatechange = muestraContenido;
 
  // Realizar peticion HTTP
  
  peticion_http.open('POST', 'http://localhost/community/catalog/me/consultar_mensajes.php', true);
  peticion_http.send(null);
 
  function muestraContenido() {
  
    if(peticion_http.readyState == 4) {
      if(peticion_http.status == 200) {
        //alert(peticion_http.responseText);
		document.getElementById("mensajes").innerHTML=peticion_http.responseText;
      }
    }
  }
}

 window.onload = descargaArchivo;
<?php
include("bd/conexion.php");
/*
$rs = $DB->Execute("select * from usuario");
while (!$rs->EOF) {
    echo($rs->id_usuario);
    $rs->MoveNext();
}
*/
?>
<html>
<head>
<link rel="stylesheet" href="css/estilo.css" type="text/css"></link>
</head>
<body id="cuerpo">
<div id="root">
		<div>
			entrar a mi cuenta: <span><a href="catalog/contactos/listar_contactos.html">Login</a></span>
		</div>
		<div>
			crear una cuenta: <span>Crear <img src="imagen.png" /></span>
		</div>
		<div>
			<div id="imagen"><img src="img/designs/logo1.png"></img></div>
			<div id="lista">
				<ul>
					<dd>: ) <a href="ejemplos/ejemplo.html">Piensa</a></dd>
					<dd>: ) <a href="ejemplos/pt2.html">Discute</a> </dd>
					<dd>: ) <a href="ejemplos/pt3.html">Avanza</a></dd>
					<dd>: ) <a href="ejemplos/pt4.html">Gana</a></dd>		
				</ul>
			</div>
			<table>
				<tr>
					<td>¿ ¿ Que se ha compartido hoy ? ?</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="busqueda" id="busqueda" class="entrada"/>
						<span>Busqueda</span>
					</td>
				</tr>
			</table>
			
			<span>Los mejores temas... siguelos haciendo click : )</span>
			<div>
				Aqui van los mejores temas y los mas populares
			</div>
		</div>
</div>
</body>
</html>
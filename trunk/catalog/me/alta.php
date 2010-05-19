<?php
?>

<link rel="stylesheet" type="text/css" href="../../css/estilo.css"></link>
<form action="guardar.php" method="POST">
<h1>Registro de nuevo miembro Community<h1>
<table>
	<tr>
		<td>Login: </td><td><input type="text" id="login" class="entrada" name="login"></input></td>
	</tr>
	<tr>
		<td>Password: </td><td><input type="password" id="password" class="entrada" name="password1"></input></td>
	</tr>
	<tr>
		<td>Password: </td><td><input type="password" id="password2" class="entrada" name="password2"></input></td>
	</tr>

	<tr>
		<td>Nombre(s): </td><td><input type="text" id="nombre" class="entrada" name="nombre"></input></td>
	</tr>

	<tr>
		<td>Apellido Paterno: </td><td><input type="text" id="apellido_p" class="entrada" name="apellido_p"></input></td>
	</tr>

	<tr>
		<td>Apellido Paterno: </td><td><input type="text" id="apellido_m" class="entrada" name="apellido_m"></input></td>
	</tr>
	<tr>
		<td>E-mail </td><td><input type="text" id="email" class="entrada" name="email"></input></td>
	</tr>
	<tr>
		<td>Sexo </td><td><input type="radio" id="sexoM" class="entrada" name="sexo" value="0" checked="checked">Masculino</input></td>
	</tr>
	<tr>
		<td> </td><td><input type="radio" id="sexoF" class="entrada" name="sexo" value="1">Femenino</input></td>
	</tr>
	<tr>
		<td></td><td><input type="submit" id="boton" class="entrada" name="boton" value="Guardar"></input></td>
	</tr>
</form>
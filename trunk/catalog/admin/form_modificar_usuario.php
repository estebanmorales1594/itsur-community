<?php
session_start();
if(!($_SESSION['logueado']==1)){
header('location:errorlogin.html');
echo"si entro 2";
}
else{
		include("../../bd/conexion1.php");//community

		$query="select * from me where my_login='".$_GET['my_login']."'";
		$res=mysql_query($query,$conexion1)or die(mysql_error());
		while($row=mysql_fetch_array($res)){
		echo($row['my_login']);
		?>
		<link rel="stylesheet" type="text/css" href="../../css/estilo.css"></link>
		<form action="modificacion.php" method="POST">
		<h1>Registro de nuevo miembro Community<h1>
		<table>
			<tr>
				<td>Login: </td><td><input type="hidden" id="login" class="entrada" name="login" value="<?php echo($row['my_login']);?>"></input></td>
			</tr>
			<tr>
				<td>Password: </td><td><input type="password" id="password" class="entrada" name="password1" value="<?php echo($row['password']);?>" ></input></td>
			</tr>
			<tr>
				<td>Password: </td><td><input type="password" id="password2" class="entrada" name="password2" value="<?php echo($row['password']);?>" ></input></td>
			</tr>

			<tr>
				<td>Nombre(s): </td><td><input type="text" id="nombre" class="entrada" name="nombre" value="<?php echo($row['name']);?>" ></input></td>
			</tr>

			<tr>
				<td>Apellido Paterno: </td><td><input type="text" id="apellido_p" class="entrada" name="apellido_p" value="<?php echo($row['ap_paterno']);?>" ></input></td>
			</tr>

			<tr>
				<td>Apellido Paterno: </td><td><input type="text" id="apellido_m" class="entrada" name="apellido_m" value="<?php echo($row['ap_materno']);?>"></input></td>
			</tr>
			<tr>
				<td>E-mail </td><td><input type="text" id="email" class="entrada" name="email" value="<?php echo($row['email']);?>"></input></td>
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
		<?php
		}
	}
?>
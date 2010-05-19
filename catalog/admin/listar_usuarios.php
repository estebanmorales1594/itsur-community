<?php
include("../../bd/conexion1.php");
//$query="select * from usuario";
$query="select my_login,name,ap_materno,ap_paterno,email,sexo from me";
$res=mysql_query($query,$conexion1);
?>
<table>
<tr>
	<th>Modificar</th>
	<th>Eliminar</th>
	<th>Login</th>
	<th>Nombre</th>
	<th>Apellido Paterno</th>
	<th>Apellido Materno</th>
	<th>Email</th>
	<th>Sexo</th>
</tr>
<?php
while($row=mysql_fetch_array($res)){
if($row['sexo']==1)
{
	$sex="Masculino";
}else{
	$sex="Femenino";
}
echo("<tr>
		<td><a href='form_modificar_usuario.php?my_login=".$row['my_login']."'>Modificar</td>
		<td> <a>Eliminar</td>
		<td>".$row['my_login']."</td>
		<td>".$row['name']."</td>
		<td>".$row['ap_paterno']."</td>
		<td>".$row['ap_materno']."</td>
		<td>".$row['email']."</td>
		<td>".$sex."</td>
	</tr>");
}
?>
<table>
<?php
session_start();
if(!($_SESSION['logueado']==1)){
header('location:errorlogin.html');
echo"si entro 2";
}
else{
	$login=$_REQUEST['login'];
	$password1=$_REQUEST['password1'];
	$nombre=$_REQUEST['nombre'];
	$apellido_p=$_REQUEST['apellido_p'];
	$apellido_m=$_REQUEST['apellido_m'];
	$email=$_REQUEST['email'];
	$sexo=$_REQUEST['sexo'];
		
		include("../../bd/conexion1.php");//community
		$query="update me set password='".$password1."'";
		$query="select * from me where my_login='".$_GET['my_login']."'";
		$res=mysql_query($query,$conexion1)or die(mysql_error());
		
		
}
?>
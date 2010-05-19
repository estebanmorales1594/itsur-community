<?php
echo($_REQUEST["login"]);
echo($_REQUEST["password1"]);
echo($_REQUEST["password2"]);
echo($_REQUEST["nombre"]);
echo($_REQUEST["apellido_p"]);
echo($_REQUEST["apellido_m"]);
echo($_REQUEST["email"]);
echo($_REQUEST["sexo"]);


include("../../bd/conexion2.php");//security_community
//$query="select * from usuario";
$query="select id_usuario from usuario where id_usuario='".$_POST['login']."'";
$res=mysql_query($query,$conexion2);

$c=mysql_fetch_row($res);
if($c>0){
	echo("ya existe el usuario ".$_POST['login']);
}else{
	echo("insertar");
	include("../../bd/conexion1.php");//community
	$query="insert into me values('".$_POST['login']."','".$_POST['password1']."',
										'".$_POST['nombre']."',
										'".$_POST['apellido_m']."',
										'".$_POST['apellido_p']."',
										'".$_POST['email']."',
										'".$_POST['sexo']."'
										)";
	mysql_close($conexion2);
	$res=mysql_query($query,$conexion1)or die(mysql_error());
	
	$query="insert into my_profile values('pro_".$_POST['login']."','".$_POST['login']."',null,null,null,null,null,null,null,null,null,null)";
	$res=mysql_query($query,$conexion1)or die(mysql_error());
	
	include("../../bd/conexion2.php");//security_community
	$query="insert into usuario values('".$_POST['login']."','".$_POST['password1']."')";
	$res=mysql_query($query,$conexion2)or die(mysql_error());
	
	$query="insert into my_profile values('pro_".$_POST['login']."','".$_POST['login']."')";
	/*
	$res=mysql_query($query);
	while ($row=mysql_fetch_array($res)){
		echo("hola");
		echo("<br>".$row['id_usuario']);
	}
	*/
}



?>
<?php
session_start();
$nom=$_REQUEST['user'];
$pass=$_REQUEST['psw'];
$con = mysql_connect("localhost","root","root")or die(mysql_error());
mysql_select_db("community_security",$con)or die(mysql_error());
$res_consulta=mysql_query("select id_usuario,password from usuario where id_usuario='".$nom."' and password='".$pass."'",$con)or die(mysql_error());
//echo $res_consulta;
if(mysql_fetch_row($res_consulta)>0){
 $_SESSION['usuario']=$nom;
 $_SESSION['logueado']=1;
header('location: cargarsesion.php');
}
else{
//echo "no entro";
header('location: errorlogin2.html');
}


?>


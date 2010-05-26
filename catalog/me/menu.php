<?php
session_start();
if(!($_SESSION['logueado']==1)){
header('location:errorlogin2.html');
echo"si entro 2";
}
else{
?>
<a href="home.php">Home</a>
<a href="my_profile.html">My profile</a>
<a href="">*Buscar a alguien</a>
<a href="">*Configuración</a>
<a href="cerrar_sesion.php">Cerrar Sesion</a>
<?php
}


?>

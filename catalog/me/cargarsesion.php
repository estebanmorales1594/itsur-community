<?php
session_start();
if(!($_SESSION['logueado']==1)){
header('location:errorlogin2.html');
echo"si entro 2";
}
else{
//header('location:../../home.php');
header('location:home.php');
}
?>
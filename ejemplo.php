<?php
//include("bd/conexion.php");

$server="127.0.0.1";
$user="";
$pwd="";
$db="community_security";
include("bd/adodb5/adodb-exceptions.inc.php");
include('bd/adodb5/adodb.inc.php');
$DB = NewADOConnection('mysql');
$DB->Connect($server, $user, $pwd, $db);
$rs = $DB->Execute("select * from usuario");
while (!$rs->EOF) {
    echo($rs->id_usuario);
    $rs->moveNext();
}
?>
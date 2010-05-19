<?php
$server="localhost";
$user="root";
$pwd="root";
$db="community_security";
include('adodb5/adodb.inc.php');
$DB = NewADOConnection('mysql');
$DB->Connect($server, $user, $pwd, $db);


?>
<?php
$server="localhost";
$user="root";
$pwd="root";
$db="community";
include('adodb5/adodb.inc.php');
$DBcommunity = NewADOConnection('mysql');
$DBcommunity->Connect($server, $user, $pwd, $db);


?>
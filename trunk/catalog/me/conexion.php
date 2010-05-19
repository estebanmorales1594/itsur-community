<?php

$server="127.0.0.1";
$user="root";
$pwd="";
$db="community_security";

$DB = NewADOConnection('mysql');
$DB->Connect($server, $user, $pwd, $db);
?>
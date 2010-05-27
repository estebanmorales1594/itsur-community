<?php
session_start();
//*no subido toda via
$conexion=mysql_connect("localhost","root","root");
mysql_select_db("community",$conexion);
$query="select count(my_login) as cantidad from my_message where my_login='".$_SESSION['usuario']."'";
$res=mysql_query($query,$conexion) or die(mysql_error());
?>
<div>
	<?php
		while($row=mysql_fetch_array($res)){
			echo"<span>".$row['cantidad']."</span>";
		}
	?>
</div>
<?php
$conexion=mysql_connect("localhost","root","root");
mysql_select_db("community",$conexion);
$query="select * from my_message join me 
	on(my_message.my_login=me.my_login) 
	join contact 
		on(my_message.contact_id=contact.contact_id)";
$res=mysql_query($query,$conexion);
?>
<table>

<?php
while($row=mysql_fetch_array($res)){
echo"<tr>
	<td>".$row['my login']."</td>
	<td>".$row['texto']."</td>
	<td>".$row['contact_id']."</td>
	<td>Responder</td>
	<tr>";

}
?>
</table>
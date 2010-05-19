<?php
session_start();


?>
<form name="sesion" action="validausr.php" method="POST">
<table id="sesion_table">
<tr>
	 <td>Login or user name</td> 
	 <td><input type="text" name="user"></input></td>
</tr>
<tr>
	 <td>Password</td>
	 <td><input type="password" name="psw" ></input></td>
</tr>
<tr>
	 <td></td>
	 <td>
		<input type="submit" name="enviar" id="enviar" value="Iniciar sesion"></input>
	 </td>
</tr>
<input type="hidden" name="login2" value="<?php $login ?>"></input>
</table>

<form>

<?php 
//}
?>
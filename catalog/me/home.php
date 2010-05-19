<?php
session_start();
echo($_SESSION["logueo"]);

if($_SESSION["logueo"]!=null)
{
?>
<html>
<head>

</head>
<body id="cuerpo">

	<div id="root">
		<div id="header">
		 
		</div>
		<div id="bodier">
			<h2>aqui va todo lo del home</h2>
		</div>
		
		<div id="footer">
		
		</div>
		
	</div>
</body>
</html>
<?php
}else{echo("necesitas loguearte");
echo($_SESSION["logueo"]);
session_destroy();

echo($_SESSION["logueo"]);
}
?>
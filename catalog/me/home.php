<?php
session_start();
//***borrar y subir
if(!($_SESSION['logueado']==1)){
header('location:errorlogin2.html');
echo"si entro 2";
}
else{

?>
<html>
<head>

</head>
<body id="cuerpo">
	<div id="root">
		<div id="header">
		 <?include("menu.php");?>
		</div>
		<div id="bodier">
			<div id="mensajeria">
				<h2>aqui va todo lo del home</h2>
				<?php include("mensaje.php"); ?>
				<?php include("mensajes.html"); ?>
			</div>
			<div id="submenu">
				<?php echo($_SESSION['usuario']);?>
				<?php include("contar_mensajes.html"); ?>
				mensajes
			</div>
		</div>
		
		<div id="footer">
			contacto, quejas y sugerencias: <span class="email">greicky@gmail.com</span>
		</div>
		
	</div>
</body>
</html>
<?php
}
?>
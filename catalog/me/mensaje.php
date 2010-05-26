<form action="" method="post" id="form-mensaje">
<p>Escribe tu mensaje <?echo $_SESSION['usuario'];?>:</p>
	<table>
		 <tr>
			<td>
				
				<textarea id="mensaje" class="entrada">
				</textarea>
			</td>
			<td>
				<input type="button" value="enviar" id="send-button" class="send-button"/>
			</td>
		 </tr>
	 </table>
</form>
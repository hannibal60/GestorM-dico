<%-- 
    Document   : JSPMain
    Created on : 18/11/2019, 07:37:41 PM
    Author     : Jorge
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Login</title>
		<link rel="stylesheet" href="CSS/Estilos.CSS">
	</head>
	<body>
		<div class="login-box">
		<h1>Inicio De Sesión</h1>
		<form action="" method="POST">

			<!--Nombre de usuario-->
			<label for "Correo Electronico">Correo Electronico</label>
			<input type="text" placeholder="Inserte su correo" name="userInput">

			<!--Contraseña-->
			<label for "Contraseña">Contraseña</label>
			<input type="Contraseña" placeholder="Inserte su contraseña" name="passInput">

			<input type="submit" onclick="javascript:IrAServlet();" id="btnAceptar"value="Iniciar Sesión">
			
			
					

		</form>
		</div>
	</body>
</html>
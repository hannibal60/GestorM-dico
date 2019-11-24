<%@page import="WebServlets.Conexion"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Login</title>
		<link rel="stylesheet" href="CSS/Estilos.css" type="text/css"/>
	</head>
	<body>
		<div class="login-box">
		<h1>Inicio De Sesi??n</h1>
		<form action="" method="POST">

			<!--Nombre de usuario-->
			<label for "Correo Electronico">Correo Electronico</label>
			<input type="text" placeholder="Inserte su correo" name="userInput" id="userInput">

			<!--Contrase??a-->
			<label for "Contrase??a">Contrase??a</label>
			<input type="Contrase??a" placeholder="Inserte su contrase??a" name="passInput">

			<input type="submit" id="btnAceptar"value="Iniciar Sesi??n">
                        
			
			
					

		</form>
		</div>
	</body>
</html>
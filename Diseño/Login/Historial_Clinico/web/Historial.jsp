<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html>
	<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Historial Clinico</title>
		<link rel="stylesheet" href="CSS/Historial.css">
	</head>
	<body>
            
            <%
            //allow access only if session exists
            String user = null;
            if(session.getAttribute("user") == null){
                    response.sendRedirect("login.html");
            }else user = (String) session.getAttribute("user");
            String userName = null;
            String sessionID = null;
            Cookie[] cookies = request.getCookies();
            if(cookies !=null){
            for(Cookie cookie : cookies){
                    if(cookie.getName().equals("user")) userName = cookie.getValue();
                    if(cookie.getName().equals("JSESSIONID")) sessionID = cookie.getValue();
            }
            }else{
                    sessionID = session.getId();
            }
            %>
            <!-- need to encode all the URLs where we want session information to be passed -->
            <form action="<%=response.encodeURL("CerrarSesion") %>" method="post">
            <input type="submit" value="Logout" >
            </form>
            
		<div class="Titulo-box">
			<form>
				<h1>Histoial Clinico</h1>
			</form>
		</div>
		<!--Perfil-->
		<div class="Perfil-box">
			<form>
				<h2>Perfil</h2>	
				<!-- Datos a buscar-->
				<label for "Nombre">Nombre</label>
				<input type="text" placeholder="Inserte Nombre">
				<label for "Apellido Paterno">Apellido Paterno</label>
				<input type="text" placeholder="Inserte Apellido Paterno">
				<label for "Apellido Materno">Apellido Materno</label>
				<input type="text" placeholder="Inserte Apellido Materno">
				<label for "CURP">CURP</label>
				<input type="text" placeholder="Inserte CURP">
			</form>
		</div>
		<div class="Acciones-box">
			<form>
				<h2>Acciones</h2>
				<!--Botones-->
				<input type="submit" value="Consultar">
				<input type="submit" value="Modificar">
				<input type="submit" value="Guardar">
				<input type="submit" value="Cancelar">
			</form>
		</div>
		<!--Datos Del Paciente-->
		<div class="DatosPaciente-box">
			<form>
				<h3>Datos Del Paciente</h3>
				<label for "Nombre Completo">Nombre Completo</label>
				<input type="text" value="Nombre Completo">
				<label for "Folio Asignado">Folio Asignado</label>
				<input type="text" value="Folio Asignado">
				<label for "CURP">CURP</label>
				<input type="text" value="CURP">
				<label for "Fecha De Nacimiento">Fecha De Nacimiento</label>
				<input type="text" value="Inserte Fecha De Nacimiento">
				<label for "Telefono">Telefono</label>
				<input type="text" value="Inserte Telefono">
				<h4>Direccion</h4>
				<label for "Municipio">Municipio</label>
				<input type="text" value="Inserte Municipio">
				<label for "Colonia">Colonia</label>
				<input type="text" value="Inserte Colonia">
				<label for "Calle">Calle</label>
				<input type="text" value="Inserte Calle">
				<label for "Numero">Numero</label>
				<input type="text" value="Inserte Numero">
			</form>
		</div>
		<div class="DatosPacienteOtros-box">
			<form>
				<h5>Otros</h5>
					<input type="submit" value="A??adir Imagen">
					<label for "Religion">Religion</label>
					<input type="text" value="Inserte Religion">
					<label for "Trabajo">Trabajo</label>
					<input type="text" value="Inserte Trabajo">
					<label for "Sexo">Sexo</label>
					<select name="select">
						<option value="F">F</option>
						<option value="M">M</option>
					</select>
					<label for "Tipo De Sangre">Tipo De Sangre</label>
					<select name="select">
						<option value="O-">O-</option>
						<option value="O+">O+</option>
						<option value="A-">A-</option>
						<option value="A+">A+</option>
						<option value="B-">B-</option>
						<option value="B+">B+</option>
						<option value="AB-">AB-</option>
						<option value="Ab+">AB+</option>					
				</select>
			</form>
		</div>
		<div class="DatosMedico-box">
			<form>
				<h6>Datos Del Medico</h6>
					<select name="select">
						<option value="Medico">Medico</option>
					</select>
					<label for "Nombre Completo">Nombre Completo</label>
					<input type="text" value="Nombre Medico">
					<label for "Cedula Profesional">Cedula Profesional</label>
					<input type="text" value="Cedula Medico">
					<label for "Direccion">Direccion</label>
					<input type="text" value="Direccion Medico">
					<label for "Edad">Edad</label>
					<input type="text" value="Edad Medico">
					<label for "Sexo">Sexo</label>
					<input type="text" value="Sexo Medico">
					<label for "Telefono">Telefono</label>
					<input type="text" value="Telefono Medico">
			</form>
		</div>
		<div class="AntecedentesPersonales-box">
			<form>
				<h6>Antecentes Personales</h6>
				<textarea name="Antecedentes Personales" rows="10" cols="50">Escriba aqui</textarea>
			</form>
		</div>
		<div class="AntecedentesHeredo-box">
			<form>
				<h6>Antecentes Heredo-Familiares</h6>
				<textarea name="Antecedentes Heredo Familiares" rows="10" cols="50">Escriba aqui</textarea>
			</form>
		</div>
		<div class="AntecedentesPatologicos-box">
			<form>
				<h6>Antecentes Patologicos</h6>
				<textarea name="Antecedentes Patologicos" rows="10" cols="50">Escriba aqui</textarea>
			</form>
		</div>
		<div class="AntecedentesQuirurjicos-box">
			<form>
				<h6>Antecentes Quirurjicos</h6>
				<textarea name="Antecedentes Quirurjicos" rows="10" cols="50">Escriba aqui</textarea>
			</form>
		</div>
		
	</body>
</html>
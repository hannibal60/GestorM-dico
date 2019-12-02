<%-- 
    Document   : HistorialMedico
    Created on : 28/11/2019, 07:04:14 PM
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
        integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
     <link rel="stylesheet" href="css/style.css" type="text/css">
     <link rel="stylesheet"  href="css/estilos.css" type="text/css">
     <link rel="manifest" href="json/manifest.json">
    <title>Formulario</title>
</head>

<body>

    <header>
   	<div class="container">
   		<div class="row">
   			<div class="col-md-6" >
   				<h2 class="encab" >Historial Clinico</h2>
   			</div>
   			<div class="col-md-6">
   				<ul class="socialheader list-inline text-xs-rigth">
   					<li class="list-incline-item">


                
   						
    
   					</li>
   					
   				</ul> 
   			</div>
   		</div>
     </div>
     
   	<div class="menu-bar text-right">
   		<nav class= "container" role="menu">
   	     <ul class="menu">
         
            <li><a href="PaginaPrincipal.jsp">Inicio</a></li>
            <li><a href="#">Actualizar datos</a></li>
            <li><a href="#">Medicamentos</a></li>
            <li><a href="#">Citas por dia</a></li>
            <li><a href="#">Citas</a></li>
            <li><a href="#">Base de datos de historiales</a></li>
            <li><a href="HistorialMedico.jsp">Nuevo historial</a></li>
            <li> <a style="color: #E5EDE7;"  href="#"><i class="far fa-user" style="color: #E5EDE7;"></i> Sesion</a>
              <ul class="submenu">
                  <li><a href="#">Sign out</a></li>
                  
                </ul>
              </li>
            
          </ul>
   		</nav>
   	</div>
   </header>
    <div class="container">

        <section class="main row">

            <form method="POST" class="col-xs-12 col-sm-4 col-md-3">

                <div class="form-group">
                    <br>
                    <label class="control-label" for="jLTituloPerfil">Perfil</label>
                    <br>
                    <label class="control-label" for="jLNombrePaciente">Nombre(s):</label>
                    <input class="form-control" type="text" id="f1input1" placeholder="Nombre(s)" maxlength="30"
                        required pattern="[A-Za-z]+" title="Solo acepta letras mayusculas y minusculas">
                </div>

                <div class="form-group">
                    <label class="control-label" for="jLAPaterno">Apellido Paterno:</label>
                    <input class="form-control" type="text" id="f1Input2" placeholder="Apellido Paterno" maxlength="20"
                        required pattern="[A-Za-z]+" title="Solo acepta letras mayusculas y minusculas">
                </div>
                <div class="form-group">
                    <label class="control-label" for="jLAMaterno">Apellido Materno:</label>
                    <input class="form-control" type="text" id="f1Input3" placeholder="Apellido Materno" maxlength="20"
                        required pattern="[A-Za-z]+" title="Solo acepta letras mayusculas y minusculas">
                </div>

                <div class="form-group">
                    <label class="control-label" for="jLCurp1">CURP:</label>
                    <input class="form-control" type="text" id="f1Input4" placeholder="CURP" maxlength="18" required
                        pattern="[A-Za-z0-9]+" title="Solo acepta letras mayusculas y minusculas y numeros">
                </div>
                <div class="form-group">
                    <input class="btn btn-block btn-primary" type="submit" id="f1Input5" value="Agregar">
                    <input class="btn btn-block btn-primary" type="submit" id="f1Input6" value="Consultar">
                </div>
            </form>

            <form method="POST" class="col-xs-12 col-sm-8 col-md-9">

                <div class="form-group">
                    <br>
                    <label for="jLTituloDatosP">Datos del paciente</label>
                    <br>
                    <label for="jLNombreCompletoP">Nombre completo:</label>
                    <input class="form-control" type="text" id="f2Input1" required placeholder="Nombre completo"
                        maxlength="60" pattern="[A-Za-z]+" title="Solo acepta letras mayusculas y minusculas">
                </div>
                <div class="form-group">
                    <label for="jLFolioAsignado">Folio asignado:</label>
                    <input class="form-control" type="text" id="f2Input2" required placeholder="Folio asignado"
                        maxlength="10" pattern="[A-Za-z0-9]+"
                        title="Solo acepta letras mayusculas y minusculas y numeros">
                </div>

                <div class="form-group">
                    <label for="jLCurp2">CURP:</label>
                    <input class="form-control" type="text" id="f2Input3" required placeholder="CURP" maxlength="18"
                        pattern="[A-Za-z0-9]+" title="Solo acepta letras mayusculas y minusculas y numeros">
                </div>

                <div class="form-group">
                    <label for="jLFechaNac">Fecha de nacimiento:</label>
                    <input class="form-control" type="date" id="f2Input4" min="2019-11-11" max="" required
                        placeholder="Fecha de nacimiento" maxlength="">
                </div>

                <div class="form-group">
                    <label for="jLTelefono">Telefono:</label>
                    <input class="form-control" type="tel" id="f2Input5" required placeholder="Telefono" maxlength="10"
                        pattern="[0-9]+" title="Solo acepta numeros">
                </div>

                <div class="form-group">
                    <br>
                    <label for="jLTituloDireccion">Direccion del paciente</label>
                    <br>
                    <label for="jLMunicipio">Municipio:</label>
                    <input class="form-control" type="text" id="f2Input6" required placeholder="Municipio"
                        maxlength="20" pattern="[A-Za-z]+" title="Solo acepta letras mayusculas y minusculas">
                </div>

                <div class="form-group">
                    <label for="jLColonia">Colonia:</label>
                    <input class="form-control" type="text" id="f2Input7" required placeholder="Colonia" maxlength="20"
                        pattern="[A-Za-z]+" title="Solo acepta letras mayusculas y minusculas">
                </div>

                <div class="form-group">
                    <label for="jLCalle">Calle:</label>
                    <input class="form-control" type="text" id="f2Input8" required placeholder="Calle" maxlength="20"
                        pattern="[A-Za-z]+" title="Solo acepta letras mayusculas y minusculas">
                </div>

                <div class="form-group">
                    <label for="jLNumero">Numero:</label>
                    <input class="form-control" type="text" id="f2Input9" required placeholder="Numero" maxlength="3"
                        pattern="[0-9]+" title="Solo acepta numeros">
                </div>

                <div class="form-group">
                    <br>
                    <label for="jLTituloOtros">Otros datos del paciente</label>
                    <br>
                    <label for="jLReligion">Religion:</label>
                    <input class="form-control" type="text" id="f2Input10" required placeholder="Religion"
                        maxlength="20" pattern="[A-Za-z]+" title="Solo acepta letras mayusculas y minusculas">
                </div>

                <div class="form-group">
                    <label for="jLTrabajo">Trabajo:</label>
                    <input class="form-control" type="text" id="f2Input11" required placeholder="Trabajo" maxlength="20"
                        pattern="[A-Za-z]+" title="Solo acepta letras mayusculas y minusculas">
                </div>

                <div class="form-group">
                    <label for="jLSexo">Sexo:</label>
                    <select class="form-control" name="jCBSexo">
                        <option value="M">Masculino</option>
                        <option value="F">Femenino</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="jLTipoSangre">Tipo de sangre:</label>
                    <select class="form-control" name="jCBTipoSangre">
                        <option value="O-">O-</option>
                        <option value="O+">O+</option>
                        <option value="A-">A-</option>
                        <option value="A+">A+</option>
                        <option value="B-">B-</option>
                        <option value="B+">B+</option>
                        <option value="AB-">AB-</option>
                        <option value="AB+">AB+</option>
                    </select>
                </div>

                <div class="form-group">
                    <br>
                    <label for="jLTituloDatosM">Datos del medico:</label>
                    <br>
                    <label for="jLNombreCompletoM">Nombre del medico:</label>
                    <input class="form-control" type="text" id="f2Input12" required placeholder="Nombre del medico"
                        maxlength="60" pattern="[A-Za-z]+" title="Solo acepta letras mayusculas y minusculas">
                </div>

                <div class="form-group">
                    <label for="jLCedula">Cedula profesional:</label>
                    <input class="form-control" type="text" id="f2Input13" required placeholder="Cedula profesional"
                        maxlength="8" pattern="[A-Za-z0-9]+"
                        title="Solo acepta letras mayusculas y minusculas y numeros">
                </div>

                <div class="form-group">
                    <label for="jLDireccion">Direccion:</label>
                    <input class="form-control" type="text" id="f2Input14" required placeholder="Direccion"
                        maxlength="20" pattern="[A-Za-z]+" title="Solo acepta letras mayusculas y minusculas">
                </div>

                <div class="form-group">
                    <label for="jLFechaNacM">Fecha de nacimiento:</label>
                    <input class="form-control" type="date" id="f2Input15" min="" max="" required
                        placeholder="Fecha de nacimiento" maxlength="">
                </div>

                <div class="form-group">
                    <label for="jLSexo">Sexo:</label>
                    <select class="form-control" name="jCBSexo">
                        <option value="M">Masculino</option>
                        <option value="F">Femenino</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="jLTelefonoM">Telefono:</label>
                    <input class="form-control" type="tel" id="f2Input16" required placeholder="Telefono" maxlength="10"
                        pattern="[0-9]+" title="Solo acepta numeros">
                </div>

                <div class="form-group">
                    <br>
                    <label for="jLTituloDatosClinicos">Datos clinicos:</label>
                    <br>
                    <label for="jLAntPersonales">Antecedentes personales:</label>
                    <br>
                    <textarea class="form-control" name="AntPersonales" rows="10" cols="40" required
                        placeholder="Escribe aquí tus comentarios" maxlength="255"></textarea>
                </div>

                <div class="form-group">
                    <label for="jLAntHeredo">Antecedentes heredo-familiares:</label>
                    <br>
                    <textarea class="form-control" name="AntHeredo" rows="10" cols="40" required
                        placeholder="Escribe aquí tus comentarios" maxlength="255"></textarea>
                </div>

                <div class="form-group">
                    <label for="jLAntPatologico">Antecedentes patologicos:</label>
                    <br>
                    <textarea class="form-control" name="AntPatologico" rows="10" cols="40" required
                        placeholder="Escribe aquí tus comentarios" maxlength="255"></textarea>
                </div>

                <div class="form-group">
                    <label for="jLAntQuirurgico">Antecedentes quirurgicos:</label>
                    <br>
                    <textarea class="form-control" name="AntQuirurgico" rows="10" cols="40" required
                        placeholder="Escribe aquí tus comentarios" maxlength="255"></textarea>
                </div>

                <div class="form-group">
                    <input class="btn btn-block btn-primary" type="submit" id="f2Input17" value="Guardar">
                    <input class="btn btn-block btn-primary" type="submit" id="f2Input18" value="Modificar">
                </div>

            </form>
        </section>

    </div>
    <br>
    <footer>
        <div class="container">
            <h5>Historial clinico UAEMEX GestorM-dico 2019. </h1>
        </div>
    </footer>

</body>

</html>

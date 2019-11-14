<%-- 
    Document   : Nuevo
    Created on : 12-nov-2019, 7:57:00
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="metodos.CRUD"%>

<!DOCTYPE html>
<!doctype html>
<html lang="es">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
        <link rel="manifest" href="/manifest.json">
        <link href="estiloNuevo.css" rel="stylesheet" type="text/css"/>
        <link href="estilos1Nuevo.css" rel="stylesheet" type="text/css"/>
        <link href="estilo2.css" rel="stylesheet" type="text/css"/>

        <title>Administrador de Médico</title>
    </head>
    <body>

        <header>
            <div class="container">
                <div class="row">
                    <h2 class="encab" >Administrador de Médico</h2>
                </div>
            </div>

            <div class="menu-bar text-right">
                <nav class= "container" role="menu">
                    <ul class="menu">

                        <li><a href="Inicio">Inicio</a></li>                  

                    </ul>
                </nav>
            </div>
        </header>

        <!-- Medico-->
        <%
            if (request.getParameter("agregar")!=null) {
                    
                
              CRUD metodo = new CRUD();
                    String nombre=request.getParameter("Nombre");
                    String APaterno=request.getParameter("APaterno");
                    String AMaterno = request.getParameter("AMaterno");
                    String fecha="2019-11-13";
                    String sexo=request.getParameter("sexo");
                    String curp=request.getParameter("CURP");
                    String rfc=request.getParameter("RFC");
                    String cedula=request.getParameter("cedula");
                    metodo.insertar(nombre,APaterno,AMaterno,fecha,sexo,curp,rfc,cedula);
            }
            %>
        

        <form name="agregar" action = "Medicos.jsp" method="post">
            <div id = "ventana">
                <h1> <label id="titulo"> Información del Médico</label></h1>
                <hr class="linea">
                </br></br>


                <div class="container">
                    <div class="row">  

                        <div class="col-md-6" >
                            <form action = "" method="post">
                                <label id= "buscar"> Cédula Profesional: </label>
                                <input type="text" class="buscar"/>

                                </br></br>

                                <label id="buscar"> </label>  
                                <input type="submit" class="buscarbtn" value="Buscar Médico">
                                </br></br></br>

                                <label id="modificar"> </label>  
                                <input type="submit" class="buscarbtn" value="Modificar Médico">
                                </br></br></br>

                                <label id="eliminar"> </label>  
                                <input type="submit" class="buscarbtn" value="Eliminar Médico">
                            </form>
                        </div>

                        <div class="col-md-6" >
                            <label id= "Nom"> Nombre(s): </label>
                            <input type="text" class="Nombre" name="Nombre"/>
                            </br></br>

                            <label id= "APaterno"> Apellido Paterno: </label>
                            <input type="text" class="APaterno" name="APaterno"/>
                            </br></br>

                            <label id= "AMaterno"> Apellido Materno: </label>
                            <input  type="text" class="AMaterno" name="AMaterno"/>
                            </br></br>

                            <label id= "FechaN"> Fecha de Nacimiento: </label>
                            <!--   <input type="text" class="FechaN"/> -->
                            <input type="date" min="2019-11-11" max="" required placeholder="FechaNac" maxlength="">
                            </br></br>


                            <label id= "sex"> Sexo: </label>
                            <select name ="sexo">
                                <option value="M">M</option>
                                <option value="F">F</option>
                                <option value="I">I</option>
                            </select>
                            </br></br>

                            <label id= "curp"> CURP: </label>
                            <input type="text" class="curp" name="CURP"/>
                            </br></br>

                            <label id= "rfc"> RFC: </label>
                            <input type="text" class="rfc" name="RFC"/>
                            </br></br>

                            <label id= "cedula"> Cédula Profesional: </label>
                            <input type="text" class="cedula" name="cedula"/>
                            </br></br></br>
                        </div>
                    </div>
                </div>   

               
                    
                <label id="agregar">    </label>  
                <input type="submit" class="Agregar" value="Agregar Médico" >
                </form>
            </div>   


            <!-- Footer -->
            <footer class="page-footer font-small unique-color-dark" style="background:#14737C  ;">

                <div style="background-color: #3C95A2; ;">
                    <div class="container">

                        <!-- Grid row-->
                        <div class="row py-4 d-flex align-items-center">

                            <!-- Grid column -->
                            <div class="col-md-6 col-lg-5 text-center text-md-left mb-4 mb-md-0">
                                <h6 class="mb-0" style="color: #fff ;">¡Conéctate con nosotros en nuestras redes sociales!</h6>
                            </div>
                            <!-- Grid column -->

                            <!-- Grid column -->
                            <div class="col-md-6 col-lg-7 text-center text-md-right">

                                <!-- Facebook -->
                                <a class="fb-ic">
                                    <i class="fab fa-facebook-f white-text mr-4" style="color:#fff;"> </i>
                                </a>
                                <!-- Twitter -->
                                <a class="tw-ic">
                                    <i class="fab fa-twitter white-text mr-4"style="color:#fff;"> </i>
                                </a>
                                <!-- Google +-->
                                <a class="gplus-ic">
                                    <i class="fab fa-google-plus-g white-text mr-4"style="color:#fff;"> </i>
                                </a>
                                <!--Linkedin -->
                                <a class="li-ic">
                                    <i class="fab fa-linkedin-in white-text mr-4"style="color:#fff;"> </i>
                                </a>
                                <!--Instagram-->
                                <a class="ins-ic">
                                    <i class="fab fa-instagram white-text" style="color:#fff;"> </i>
                                </a>

                            </div>
                            <!-- Grid column -->

                        </div>
                        <!-- Grid row-->

                    </div>
                </div>

                <!-- Footer Links -->
                <div class="container text-center text-md-left mt-5">

                    <!-- Grid row -->
                    <div class="row mt-3">

                        <!-- Grid column -->
                        <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">

                            <!-- Content -->
                            <h6 class="text-uppercase font-weight-bold" style="color:#E5EDE7;">Equipo profesional y experimentado</h6>
                            <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px; ">
                            <p style="color:#E5EDE7 ;">Nuestra mejor garantía es el trabajo de nuestros profesionales. Nuestros pacientes así lo confirman. </p>

                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">

                            <!-- Links -->
                            <h6 class="text-uppercase font-weight-bold" style="color:#E5EDE7 ;">SERVICIOS</h6>
                            <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                            <p>
                                <a href="#!" style="color: #07153B;">Consultas 24hrs.</a>
                            </p>
                            <p>
                                <a href="#!" style="color: #07153B;">Consultas a domicilio</a>
                            </p>
                            <p>
                                <a href="#!" style="color: #07153B;">Precios accesibles</a>
                            </p>
                            <p>
                                <a href="#!" style="color: #07153B;"></a>
                            </p>

                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">

                            <!-- Links -->
                            <h6 class="text-uppercase font-weight-bold" style="color:#E5EDE7 ;">Información</h6>
                            <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                            <p>
                                <a href="#!" style="color: #07153B;">Ubicacion</a>
                            </p>
                            <p>
                                <a href="#!" style="color: #07153B;">Consultas</a>
                            </p>
                            <p>
                                <a href="#!" style="color: #07153B;">Medicamentos</a>
                            </p>
                            <p>
                                <a href="#!" style="color: #07153B;">Ayuda</a>
                            </p>

                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">

                            <!-- Links -->
                            <h6 class="text-uppercase font-weight-bold" style="color:#E5EDE7 ;">Contactanos</h6>
                            <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                            <p>
                                <i class="fas fa-home mr-3"></i> Tianguistenco, Mex</p>
                            <p>
                                <i class="fas fa-envelope mr-3"></i> getormedico@gmail.com</p>
                            <p>
                                <i class="fas fa-phone mr-3"></i> + 01 234 567 88</p>
                            <p>
                                <i class="fas fa-print mr-3"></i> + 01 234 567 89</p>

                        </div>
                        <!-- Grid column -->

                    </div>
                    <!-- Grid row -->

                </div>
                <!-- Footer Links -->

                <!-- Copyright -->
                <div class="footer-copyright text-center py-3">� 2019 Gestor Medico:
                    <a href="https://mdbootstrap.com/education/bootstrap/"> gestormedico.com</a>
                </div>
                <!-- Copyright -->

            </footer>

            <!-- Optional JavaScript -->
            <!-- jQuery first, then Popper.js, then Bootstrap JS -->
            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
            <script src="JS/general.js" type="text/javascript"></script>
            <script src="JS/jquery-3.1.1.min.js"></script>  
            <script src="https://kit.fontawesome.com/7edcc08e48.js" crossorigin="anonymous"></script>  

    </body>
</html>

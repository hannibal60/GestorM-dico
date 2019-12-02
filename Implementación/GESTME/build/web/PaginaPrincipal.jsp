<%-- 
    Document   : PaginaPrincipal
    Created on : 28/11/2019, 05:59:16 PM
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="metodos.CRUD"%>
<%@page import="SQL.Conexion" %>

<!doctype html>
<html lang="es">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
     <link rel="stylesheet" href="css/style.css" type="text/css">
     <link rel="stylesheet"  href="css/estilos.css" type="text/css">
     <link rel="manifest" href="json/manifest.json">
     
    <title>Gestorclinico</title>
  </head>
  <body>
   
   <header>
   	<div class="container">
   		<div class="row">
   			<div class="col-md-6" >
   				<h2 class="encab" >Gestor Historial Medico</h2>
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
            <li><a href="Medicos.jsp">Medicamentos</a></li>
            <li><a href="#">Citas por dia</a></li>
            <li><a href="citas.php">Citas</a></li>
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
   
  <div id="main"></div>
  <div class="container">
  <div class="col-md-12">
  <div id="slider-home" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="slider-home" data-slide-to="0" class="active"></li>
      <li data-target="slider-home" data-slide-to="1"></li>
      
    </ol>

    <div class="carousel-inner">
     
      
      <div class="carousel-item active">
          <div class="banner">
        <img src="img/fondo.jpg" alt="" class="banner-img">
        <div class="contenedor">
          <h2 class="banner-titulo">Los mejores doctores a tu alcance</h2>
          <p class="banner-titulo">Tu salud en las mejores manos</p>
        </div>
    </div>
    </div>
      
      <div class="carousel-item">
            <div class="banner">
          <img src="img/fondo2.jpg" alt="" class="banner-img">
          <div class="contenedor">
            <h2 class="banner-titulo">Los mejores doctores a tu alcance</h2>
            <p class="banner-titulo">Tu salud en las mejores manos</p>
          </div>
      </div>
      </div>

    </div>
    <a class="carousel-control-prev" href="#slider-home" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#slider-home" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
  </div>
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


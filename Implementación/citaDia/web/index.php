<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Gestor clinico - Citas por Dia</title>
        <meta charset="utf-8">
        <!--<meta name="viewport" content="width=device-width, initial-scale=1.0">-->
        <link rel="stylesheet" href="CSS/estilos.css" type="text/css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
        <link rel="stylesheet" href="css/style.css" type="text/css">
        <link rel="stylesheet"  href="css/estilos.css" type="text/css">
        <link rel="manifest" href="/manifest.json">
    </head>
    <body>
        <header>
            <?php include("tabla.php");?>
            <div class="menu-bar text-right">
                <nav class= "container" role="menu">
                    <ul class="menu">
                        <li><a href="#">Inicio</a></li>
                        <li><a href="#">Actualizar datos</a></li>
                        <li><a href="#">Medicamentos</a></li>
                        <li><a href="#">Citas por dia</a></li>
                        <li><a href="#">Citas</a></li>
                        <li><a href="#">Base de datos de historiales</a></li>
                        <li><a href="#">Nuevo historial</a></li>
                        <li> <a style="color: #E5EDE7;"  href="#"><i class="far fa-user" style="color: #E5EDE7;"></i> Sesión</a>
                            <ul class="submenu">
                                <li><a href="#">Sign out</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </header>
    </body>
</html>

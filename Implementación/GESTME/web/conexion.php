<?php
function conectar(){
$user="root";
$pass="";
$server="localhost";
$db="gestorclinico";
$con=mysqli_connect($server,$user,$pass,$db) or die ("errr al conectar".mysql_error());

return $con;

}
 ?>

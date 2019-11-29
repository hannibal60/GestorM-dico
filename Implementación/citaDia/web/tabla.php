<?php
  include("conexion.php");
  $con=conectar();
 ?>
 <?php $fechahoy = date("Y-m-d");?>


<div class="container">
    <div class="row">
        <div class="col-md-5" >
            <h2 class="encab" >Gestor Historial Medico</h2>
        </div>
        <div class="col-md-7 table-wrapper-scroll-y my-custom-scrollbar">
                <table>
                    <tr>
                        <th class="th">ID Cita</th>
                        <th class="th">ID Paciente</th>
                        <th class="th">Asunto</th>
                        <th class="th">Fecha</th>
                        <th class="th">Hora</th>
                        <th class="th">Estado</th>
                    </tr>
                    <?php
					$idmedico="2";
                    $sql= "SELECT med.id_medico,
			cit.id_cita,cit.id_paciente,cit.asunto,cit.fecha_cita,cit.hora_cita,cit.estado_cita,cit.id_medico
			FROM medicos med INNER JOIN citas cit ON med.id_medico = cit.id_medico WHERE med.id_medico= '$idmedico' AND cit.fecha_cita = '$fechahoy'" ;
                    $result=mysqli_query($con,$sql);
                    while ($mostrar=mysqli_fetch_array($result)) {
                     ?>
                    <tr>
                        <td class="td"><?php echo $mostrar['id_cita'] ?></td>
                        <td class="td"><?php echo $mostrar['id_paciente'] ?></td>
                        <td class="td"><?php echo $mostrar['asunto'] ?></td>
                        <td class="td"><?php echo $mostrar['fecha_cita'] ?></td>
                        <td class="td"><?php echo $mostrar['hora_cita'] ?></td>
                        <td class="td"><?php echo $mostrar['estado_cita'] ?></td>
                    </tr>
                    <?php
                  }
                     ?>
                </table>
        </div>
    </div>
</div>

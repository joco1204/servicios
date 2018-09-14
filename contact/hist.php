<?php 
	require_once('../src/connect.php'); 
?>
<form class="form-horizontal">
  <div class="table-responsive">
    <table class="table table-bordered table-striped table-highlight">
		<thead>
			<tr>
				<th colspan="3" align="center">Historial Cliente</th>
			</tr>
		</thead>
		<thead>
			<tr>
				<th>Fecha</th>
				<th>Calificación</th>
				<th>Agente</th
			</tr>
		</thead>
      <tbody>
	  
	  <?php
				$sql = "SELECT fec_fin,calif,nombre,apellido FROM crmpa_calificaciones A inner join crmpa_usuarios B on A.id_agente=B.id where id_serv=".$_GET['serv']." and id_cl=".$_GET['cl'];
				foreach($pdo->query($sql) as $row){
					echo "<tr>
						<td>".$row['fec_fin']."</td>
						<td>".$row['calif']."</td>
						<td>".$row['nombre']." ".$row['apellido']."</td>
					</tr>";
				}
				?>
      </tbody>
    </table>
  </div>
</form>
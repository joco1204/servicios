<?php
require_once('../src/connect.php'); 
$sqlser = "SELECT * FROM crmpa_clientes where id_servicio=".$_GET['serv']." and  id_cl=".$_GET['cl'];
foreach($pdo->query($sqlser) as $row_cl){
?>
<form class="form-horizontal">
  <div class="table-responsive">
    <table class="table table-bordered table-striped table-highlight">
		<thead>
			<tr>
				<th colspan="2" align="center">Datos Básicos</th>
			</tr>
		</thead>
      <tbody>
        <tr>

			<th>Nombre:</th>
			<td><input type="text" class="form-control" value="<?php echo $row_cl['nombre'];?>" /></td>
		</tr>
		<tr>
			<th>Celular:</th>
			<td><input type="text" class="form-control" value="<?php echo $row_cl['telefono'];?>" /></td>
		</tr>
		<tr>
			<th>Télefono:</th>
			<td><input type="text" class="form-control" value="<?php echo $row_cl['celular'];?>" /></td>
		</tr>
		<tr>
			<th>Email:</th>
			<td><input type="text" class="form-control" value="<?php echo $row_cl['email'];?>" /></td>
		</tr>
      </tbody>
    </table>
  </div>
</form>
<?php
}
?>
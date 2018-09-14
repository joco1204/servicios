<?php require_once('../src/connect.php'); 
$pdate= date("Y/m/d H:i:s");


$sql = "SELECT id_cl,nombre,telefono,celular,email,tipo_documento,documento FROM crmpa_clientes ";
if ($_GET['d1']==1){
	$sql .="WHERE DOCUMENTO='".$_GET['d2']."'";
}else{
	$sql .="WHERE ID_CL=".$_GET['d2'];
}


	echo "<table class='table table-responsive table-striped table-bordered' align='center'>";
	echo "<thead>
		<tr>
			<th>ID BPO</th>
			<th>NOMBRE</th>
			<th>TELEFONO</th>
			<th>CELULAR</th>
			<th>EMAIL</th>
			<th>T. DOC.</th>
			<th>DOC</th>
		</tr>
	</thead><tbody>";
	
	foreach($pdo->query($sql) as $row){
		
		echo '<tr>
		<td><a href="inbound.php?idserv='.$_GET['d3'].'&id_cl='.$row['id_cl'].'&pdate='.$pdate.'" class="news-item-title"><span class="icon-ok"></span></button></td></a>
		<td>'.$row['id_cl'].'</td>
		<td>'.$row['nombre'].'</td>
		<td>'.$row['telefono'].'</td>
		<td>'.$row['celular'].'</td>
		<td>'.$row['email'].'</td>
		<td>'.$row['tipo_documento'].'</td>
		<td>'.$row['documento'].'</td>
		</tr>';
	}
	echo "</tbody><tfooter>
		<tr>
			<th>ID BPO</th>
			<th>NOMBRE</th>
			<th>TELEFONO</th>
			<th>CELULAR</th>
			<th>EMAIL</th>
			<th>T. DOC.</th>
			<th>DOC</th>
		</tr>
	</tfooter>";
	echo "</table>";

	?>

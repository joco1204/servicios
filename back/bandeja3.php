<?php 
	require_once('../src/connect.php'); 
?>
<div id="menu0" class="tab-pane fade in active">
<h3>Pendientes Paso 3</h3>
<ul class="nav nav-pills nav-stacked">

	<?php
	$sql = "SELECT doc_sus,name_sus,apel_sus,id_cl,id_calif,id_modulo FROM  crmpa_modulo_1 where paso_now=3 ";
	
	foreach($pdo->query($sql) as $row){
		echo '<li>
			<a data-toggle="tab" onclick="modDiv(1,3,'.$row['id_cl'].','.$row['id_calif'].','.$row['id_modulo'].')">
				'.$row['doc_sus'].' - '.$row['name_sus'].' '.$row['apel_sus'].'
			</a>
		</li>';
	}
	?>
</ul>
</div>

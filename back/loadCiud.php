<?php require_once('../src/connect.php'); ?>
<?php
$array = array();
	$sql = "SELECT ID,NOMBRE FROM crmpa_ciud where depto =".$_POST['id_dpt'];
	//var_dump($sql);

	foreach($pdo->query($sql) as $row){
		
		$array[$row['ID']] = $row['NOMBRE'];
	}
echo json_encode($array);
exit();
	?>

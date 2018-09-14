<?php 
require_once('../../src/connect.php'); 

$array = array();
	$sql = "SELECT * from crmpa_servicio where emp_id=".$_POST['id_emp'];
	//var_dump($sql);

	foreach($pdo->query($sql) as $row){
		
		$array[$row['id_serv']] = $row['servicio'];
	}
echo json_encode($array);
exit();
?>

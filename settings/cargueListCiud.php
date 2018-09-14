<?php require_once('../src/connect.php'); 
$sql = "SELECT * FROM crmpa_servicio";
$array = array();

foreach($pdo->query($sql) as $row){
	$array[$row['id_serv']] = $row['servicio'];
}
echo json_encode($array);
?>
<?php
require_once('../src/connect.php'); 
			

$sql = "INSERT INTO crmpa_servicio (servicio, descripcion,estado, emp_id)
VALUES ('".$_POST['name_n']."','".$_POST['desc_n']."',1,'".$_POST['empr_n']."')";
// use exec() because no results are returned
try {
$pdo->exec($sql);
	echo json_encode("New record created successfully");
	$lastId = $pdo->lastInsertId();
}
catch(PDOException $e)
{
	echo json_encode($sql . "<br>" . $e->getMessage());
}

$sql = "INSERT INTO crmpa_guiones (idserv,guion,mostrar)
VALUES ($lastId,'Bienvenido ACSOIN CRM','N')";
// use exec() because no results are returned
try {
$pdo->exec($sql);
	echo json_encode("New record created successfully");
}
catch(PDOException $e)
{
	echo json_encode($sql . "<br>" . $e->getMessage());
}			


?>
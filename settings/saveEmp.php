<?php
require_once('../src/connect.php'); 
			

$sql = "INSERT INTO crmpa_empresa (nombre, descripcion)
VALUES ('".$_POST['name_n']."','".$_POST['desc_n']."')";
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
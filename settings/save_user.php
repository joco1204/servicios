<?php
require_once('../src/connect.php'); 
			
			
$lastId=0;
$sql = "INSERT INTO crmpa_usuarios (user,password,nombre,apellido,email,fecha_creacion,estado)
VALUES ('".$_POST['user']."',MD5('".$_POST['pass']."'),'".$_POST['name']."','".$_POST['apel']."','".$_POST['email']."',NOW(),1)";
// use exec() because no results are returned
try {
$pdo->exec($sql);
	//echo json_encode("OK");
	$lastId = $pdo->lastInsertId();
}
catch(PDOException $e)
{
	echo json_encode($sql . "<br>" . $e->getMessage());
}

if($lastId != 0){
	$sql = "INSERT INTO crmpa_permisos (id_usuario,id_perfil,id_empresa)
	VALUES ('".$lastId."','".$_POST['perf']."','".$_POST['empr']."')";
	// use exec() because no results are returned
	try {
	$pdo->exec($sql);
		echo json_encode("OK");
		$lastId = $pdo->lastInsertId();
	}
	catch(PDOException $e)
	{
		echo json_encode($sql . "<br>" . $e->getMessage());
	}	
}


?>
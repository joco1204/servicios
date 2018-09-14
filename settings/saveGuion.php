<?php
require_once('../src/connect.php'); 
			

$sql = "update crmpa_guiones set guion='".$_POST['guion']."' where idserv=".$_POST['idserv'];
// use exec() because no results are returned
try {
$pdo->exec($sql);
	echo json_encode("Record Update successfully");
}
catch(PDOException $e)
{
	echo json_encode($sql . "<br>" . $e->getMessage());
}


?>
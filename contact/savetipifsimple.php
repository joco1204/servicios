<?php require_once('../src/connect.php'); 
session_start();
unset($_SESSION['cliente_actual']);
$pdate= date("Y/m/d H:i:s");
$array = array();
	$array['s0'] = $_POST['idcl'];
	$array['s1'] = $_POST['sercl'];
	$array['s2'] = $_POST['tipifcl'];
	$array['s3'] = $_POST['date_inicl'];
	$array['s4'] = $_SESSION['id_usuario'];
	
$sql = "INSERT INTO crmpa_calificaciones (id_cl,id_serv,id_agente,fec_ini,fec_fin,calif,needs_back,perfil,back_agent_calif)VALUES ('".$_POST['idcl']."','".$_POST['sercl']."','".$_SESSION['id_usuario']."','".$_POST['date_inicl']."','".$pdate."','".$_POST['tipifcl']."',0,2,0)";


$sql = "UPDATE crmpa_clientes set seleccionado='N' WHERE ID_CL=".$_POST['idcl'];
			if ($pdo->query($sql) === TRUE) {
				$msg=$msg." New record created successfully";
			} else {
				//$msg= $msg." Error: " . $sql . "<br>" . $conn->error;
			} 

// use exec() because no results are returned

try {
$pdo->exec($sql);
}
catch(PDOException $e)
{
}

$read="N";
$asesor=0;

if ($_POST['againcl']==0){
	$sql = "UPDATE crmpa_clientes set isread='N', asesor='".$asesor."' ,intentos=intentos+1  where id_cl =".$_POST['idcl'];
}elseif($_POST['againcl']==1){
	$fecha_prog=$_POST['datecl']." ".$_POST['timecl'].":00";
	$sql = "UPDATE crmpa_clientes set isread='Y', asesor='".$_SESSION['id_usuario']."' ,intentos=intentos+1 ,again='".$fecha_prog."' where id_cl =".$_POST['idcl'];
}else{
	$fecha_prog=$_POST['datecl']." ".$_POST['timecl'].":00";
	$sql = "UPDATE crmpa_clientes set isread='Y', asesor='-1' ,intentos=intentos+1 ,again='".$fecha_prog."' where id_cl =".$_POST['idcl'];
}



// use exec() because no results are returned

try {
$pdo->exec($sql);
}
catch(PDOException $e)
{
}
echo json_encode($pdate);
	
	//echo json_encode($array);
	exit();
?>

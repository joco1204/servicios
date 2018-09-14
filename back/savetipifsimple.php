<?php require_once('../src/connect.php'); 
session_start();
$pdate= date("Y/m/d H:i:s");
/*var_dump($_POST);
["idcl"]
["sercl"]
["tipifcl"]
["date_inicl"]
["id_mod"]
["paso"]
*/



$array = array();
	$array['s0'] = $_POST['idcl'];
	$array['s1'] = $_POST['sercl'];
	$array['s2'] = $_POST['tipifcl'];
	$array['s3'] = $_POST['date_inicl'];
	$array['s4'] = $_SESSION['id_usuario'];
	
$sql = "INSERT INTO crmpa_calificaciones (id_cl,id_serv,id_agente,fec_ini,fec_fin,calif,needs_back,perfil,back_agent_calif)VALUES 
('".$_POST['idcl']."','".$_POST['sercl']."','".$_SESSION['id_usuario']."','".$_POST['date_inicl']."','".$pdate."','".$_POST['tipifcl']."',0,3,'".$_POST['id_mod']."')";

// use exec() because no results are returned

try {
$pdo->exec($sql);
}
catch(PDOException $e)
{
}
$pasa=0;
if ($_POST['paso']==1){
	if ($_POST['next_bck']=='SI'){
		$pasa=2;
	}else{
		$pasa=1;
	}
	$sql = "UPDATE crmpa_modulo_1 set back_fec1='".$_POST['fec_rec_bck']."', back1='".$_SESSION['id_usuario']."' ,back_obs1='".$_POST['obs_bck']."',paso_now=".$pasa."  where id_cl =".$_POST['idcl']." and id_modulo=".$_POST['id_mod'];
}elseif($_POST['paso']==2){
	if ($_POST['next_bck']=='SI'){
		$pasa=3;
	}else{
		$pasa=2;
	}
	$sql = "UPDATE crmpa_modulo_1 set back_fec2='".$_POST['fec_rec_bck']."', back2='".$_SESSION['id_usuario']."' ,back_obs2='".$_POST['obs_bck']."',paso_now=".$pasa."  where id_cl =".$_POST['idcl']." and id_modulo=".$_POST['id_mod'];
}else{
	if ($_POST['next_bck']=='SI'){
		$pasa=4;
	}else{
		$pasa=3;
	}
	$sql = "UPDATE crmpa_modulo_1 set back_fec3='".$_POST['fec_rec_bck']."', back3='".$_SESSION['id_usuario']."' ,back_obs3='".$_POST['obs_bck']."',paso_now=".$pasa."  where id_cl =".$_POST['idcl']." and id_modulo=".$_POST['id_mod'];
}

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

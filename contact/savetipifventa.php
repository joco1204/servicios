<?php require_once('../src/connect.php'); 
session_start();
unset($_SESSION['cliente_actual']);
//var_dump($_POST);
$pdate= date("Y/m/d H:i:s");
$array = array();
	$array['s0'] = $_POST['idcl'];
	$array['s1'] = $_POST['sercl'];
	$array['s2'] = $_POST['tipifcl'];
	$array['s3'] = $_POST['date_inicl'];
	$array['s4'] = $_SESSION['id_usuario'];
	
$sql = "INSERT INTO crmpa_calificaciones (id_cl,id_serv,id_agente,fec_ini,fec_fin,calif,needs_back,perfil,back_agent_calif)VALUES ('".$_POST['idcl']."','".$_POST['sercl']."','".$_SESSION['id_usuario']."','".$_POST['date_inicl']."','".$pdate."','".$_POST['tipifcl']."',1,2,0)";
$sql = "UPDATE crmpa_clientes set seleccionado='N' WHERE ID_CL=".$_POST['idcl'];
			if ($pdo->query($sql) === TRUE) {
				$msg=$msg." New record created successfully";
			} else {
				//$msg= $msg." Error: " . $sql . "<br>" . $conn->error;
			} 



try {
$pdo->exec($sql);
$ult_id_calif = $pdo->lastInsertId(); 
}
catch(PDOException $e)
{
	
}


$sql = "INSERT INTO crmpa_modulo_1 (id_serv,id_cl,id_calif,scoreG,nline,doc_sus,name_sus,apel_sus,fec_nac_sus,fec_exp_sus,barrio_sus,email_sus,dir1_sus,dir2_sus,dir3_sus,dir4_sus,dir5_sus,dir6_sus,dir7_sus,dir8_sus,dept_sus,ciud_sus,doc_sus1,name_sus1,apel_sus1,tipo_1,linea_1,otro_1,nip_1,operador_1,tipservice1,planservice1,infoservice1,service1,fecha_venta_1,obs_1,doc_sus2,name_sus2,apel_sus2,tipo_2,linea_2,otro_2,nip_2,operador_2,tipservice2,planservice2,infoservice2,service2,fecha_venta_2,obs_2,doc_sus3,name_sus3,apel_sus3,tipo_3,linea_3,otro_3,nip_3,operador_3,tipservice3,planservice3,infoservice3,service3,fecha_venta_3,obs_3,doc_sus4,name_sus4,apel_sus4,tipo_4,linea_4,otro_4,nip_4,operador_4,tipservice4,planservice4,infoservice4,service4,fecha_venta_4,obs_4,doc_sus5,name_sus5,apel_sus5,tipo_5,linea_5,otro_5,nip_5,operador_5,tipservice5,planservice5,infoservice5,service5,fecha_venta_5,obs_5,doc_sus6,name_sus6,apel_sus6,tipo_6,linea_6,otro_6,nip_6,operador_6,tipservice6,planservice6,infoservice6,service6,fecha_venta_6,obs_6,doc_sus7,name_sus7,apel_sus7,tipo_7,linea_7,otro_7,nip_7,operador_7,tipservice7,planservice7,infoservice7,service7,fecha_venta_7,obs_7,doc_sus8,name_sus8,apel_sus8,tipo_8,linea_8,otro_8,nip_8,operador_8,tipservice8,planservice8,infoservice8,service8,fecha_venta_8,obs_8,doc_sus9,name_sus9,apel_sus9,tipo_9,linea_9,otro_9,nip_9,operador_9,tipservice9,planservice9,infoservice9,service9,fecha_venta_9,obs_9,doc_sus10,name_sus10,apel_sus10,tipo_10,linea_10,otro_10,nip_10,operador_10,tipservice10,planservice10,infoservice10,service10,fecha_venta_10,obs_10)VALUES (";
$sql .= "'".$_POST['sercl']."','".$_POST['idcl']."','".$ult_id_calif."','".$_POST['scoreG']."','".$_POST['nline']."','".$_POST['doc_sus']."','".$_POST['name_sus']."','".$_POST['apel_sus']."','".$_POST['fec_nac_sus']."',";
$sql .= "'".$_POST['fec_exp_sus']."','".$_POST['barrio_sus']."','".$_POST['email_sus']."','".$_POST['dir1_sus']."','".$_POST['dir2_sus']."','".$_POST['dir3_sus']."',";
$sql .= "'".$_POST['dir4_sus']."','".$_POST['dir5_sus']."','".$_POST['dir6_sus']."','".$_POST['dir7_sus']."','".$_POST['dir8_sus']."','".$_POST['dept_sus']."',";
$sql .= "'".$_POST['ciud_sus']."','".$_POST['doc_sus1']."','".$_POST['name_sus1']."','".$_POST['apel_sus1']."','".$_POST['tipo_1']."','".$_POST['linea_1']."',";
$sql .= "'".$_POST['otro_1']."','".$_POST['nip_1']."','".$_POST['operador_1']."','".$_POST['tipservice1']."','".$_POST['planservice1']."','".$_POST['infoservice1']."',";
$sql .= "'".$_POST['service1']."','".$_POST['fecha_venta_1']."','".$_POST['obs_1']."','".$_POST['doc_sus2']."','".$_POST['name_sus2']."','".$_POST['apel_sus2']."',";
$sql .= "'".$_POST['tipo_2']."','".$_POST['linea_2']."','".$_POST['otro_2']."','".$_POST['nip_2']."','".$_POST['operador_2']."','".$_POST['tipservice2']."',";
$sql .= "'".$_POST['planservice2']."','".$_POST['infoservice2']."','".$_POST['service2']."','".$_POST['fecha_venta_2']."','".$_POST['obs_2']."','".$_POST['doc_sus3']."',";
$sql .= "'".$_POST['name_sus3']."','".$_POST['apel_sus3']."','".$_POST['tipo_3']."','".$_POST['linea_3']."','".$_POST['otro_3']."','".$_POST['nip_3']."',";
$sql .= "'".$_POST['operador_3']."','".$_POST['tipservice3']."','".$_POST['planservice3']."','".$_POST['infoservice3']."','".$_POST['service3']."','".$_POST['fecha_venta_3']."',";
$sql .= "'".$_POST['obs_3']."','".$_POST['doc_sus4']."','".$_POST['name_sus4']."','".$_POST['apel_sus4']."','".$_POST['tipo_4']."','".$_POST['linea_4']."',";
$sql .= "'".$_POST['otro_4']."','".$_POST['nip_4']."','".$_POST['operador_4']."','".$_POST['tipservice4']."','".$_POST['planservice4']."','".$_POST['infoservice4']."',";
$sql .= "'".$_POST['service4']."','".$_POST['fecha_venta_4']."','".$_POST['obs_4']."','".$_POST['doc_sus5']."','".$_POST['name_sus5']."','".$_POST['apel_sus5']."',";
$sql .= "'".$_POST['tipo_5']."','".$_POST['linea_5']."','".$_POST['otro_5']."','".$_POST['nip_5']."','".$_POST['operador_5']."','".$_POST['tipservice5']."',";
$sql .= "'".$_POST['planservice5']."','".$_POST['infoservice5']."','".$_POST['service5']."','".$_POST['fecha_venta_5']."','".$_POST['obs_5']."',";
$sql .= "'".$_POST['doc_sus6']."','".$_POST['name_sus6']."','".$_POST['apel_sus6']."','".$_POST['tipo_6']."','".$_POST['linea_6']."','".$_POST['otro_6']."',";
$sql .= "'".$_POST['nip_6']."','".$_POST['operador_6']."','".$_POST['tipservice6']."','".$_POST['planservice6']."','".$_POST['infoservice6']."',";
$sql .= "'".$_POST['service6']."','".$_POST['fecha_venta_6']."','".$_POST['obs_6']."','".$_POST['doc_sus7']."','".$_POST['name_sus7']."','".$_POST['apel_sus7']."',";
$sql .= "'".$_POST['tipo_7']."','".$_POST['linea_7']."','".$_POST['otro_7']."','".$_POST['nip_7']."','".$_POST['operador_7']."','".$_POST['tipservice7']."',";
$sql .= "'".$_POST['planservice7']."','".$_POST['infoservice7']."','".$_POST['service7']."','".$_POST['fecha_venta_7']."','".$_POST['obs_7']."',";
$sql .= "'".$_POST['doc_sus8']."','".$_POST['name_sus8']."','".$_POST['apel_sus8']."','".$_POST['tipo_8']."','".$_POST['linea_8']."','".$_POST['otro_8']."',";
$sql .= "'".$_POST['nip_8']."','".$_POST['operador_8']."','".$_POST['tipservice8']."','".$_POST['planservice8']."','".$_POST['infoservice8']."',";
$sql .= "'".$_POST['service8']."','".$_POST['fecha_venta_8']."','".$_POST['obs_8']."','".$_POST['doc_sus9']."','".$_POST['name_sus9']."','".$_POST['apel_sus9']."',";
$sql .= "'".$_POST['tipo_9']."','".$_POST['linea_9']."','".$_POST['otro_9']."','".$_POST['nip_9']."','".$_POST['operador_9']."','".$_POST['tipservice9']."',";
$sql .= "'".$_POST['planservice9']."','".$_POST['infoservice9']."','".$_POST['service9']."','".$_POST['fecha_venta_9']."','".$_POST['obs_9']."',";
$sql .= "'".$_POST['doc_sus10']."','".$_POST['name_sus10']."','".$_POST['apel_sus10']."','".$_POST['tipo_10']."','".$_POST['linea_10']."','".$_POST['otro_10']."',";
$sql .= "'".$_POST['nip_10']."','".$_POST['operador_10']."','".$_POST['tipservice10']."','".$_POST['planservice10']."','".$_POST['infoservice10']."',";
$sql .= "'".$_POST['service10']."','".$_POST['fecha_venta_10']."','".$_POST['obs_10']."'";
$sql .= ")";
try {
$pdo->exec($sql);
//$ult_id_calif = $pdo->lastInsertId(); 
}
catch(PDOException $e)
{
	
}



$sql = "INSERT INTO crmpa_encuesta_1 (id_cl,id_calif,encuesta_1,encuesta_2,encuesta_3,encuesta_4,encuesta_5,encuesta_6,encuesta_7,encuesta_8,encuesta_9,encuesta_10,encuesta_11,encuesta_12,encuesta_13,encuesta_14,encuesta_15,encuesta_16)VALUES (";
$sql .= "'".$_POST['idcl']."','".$ult_id_calif."','".$_POST['encuesta_1']."','".$_POST['encuesta_2']."','".$_POST['encuesta_3']."','".$_POST['encuesta_4']."',";
$sql .= "'".$_POST['encuesta_5']."','".$_POST['encuesta_6']."','".$_POST['encuesta_7']."','".$_POST['encuesta_8']."','".$_POST['encuesta_9']."',";
$sql .= "'".$_POST['encuesta_10']."','".$_POST['encuesta_11']."','".$_POST['encuesta_12']."','".$_POST['encuesta_13']."',";
$sql .= "'".$_POST['encuesta_14']."','".$_POST['encuesta_15']."','".$_POST['encuesta_16']."'";
$sql .= ")";


try {
$pdo->exec($sql);
//$ult_id_calif = $pdo->lastInsertId(); 
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

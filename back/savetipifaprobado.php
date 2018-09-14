<?php require_once('../src/connect.php'); 
session_start();
$pdate= date("Y/m/d H:i:s");

if($_POST)	{
	$numpost=0;	
	foreach ($_POST as $clave=>$valor){
		$numpost++;
		//echo "El valor de $clave es: $valor <br>";
	}
}
	$sizepost = $numpost."<br>";
	//$lines_cl = (($numpost-9)/4)."<br>";
	$lines_cl =$_POST['lineascl'];
	$aux="";
	//echo "las lineas por llenar son ".$lines_cl."<hr>";
	for ($i = 1; $i <= $lines_cl; $i++) {
		$aux = 'sim'.$i;
		$sim = $_POST[$aux];
		$aux = 'evidente'.$i;
		$evidente = $_POST[$aux];
		$aux = 'asignado'.$i;
		$asignado = $_POST[$aux];
		$aux = 'anexo'.$i;
		$anexo = $_POST[$aux];
		if ($i <=5){
			$sql = "INSERT INTO crmgest_back1 (id_modulo,linea,sim,evidente,asignado,anexo)VALUES 
			('".$_POST['id_mod']."',".$i.",'".$sim."','".$evidente."','".$asignado."','".$anexo."')";
			try {
				$pdo->exec($sql);
			}
			catch(PDOException $e)
			{
			}
		}
		if ($i >=6){
			$aux = 'oportunidad'.$i;
			$oportunidad = $_POST[$aux];
			$aux = 'compra'.$i;
			$compra = $_POST[$aux];
			$aux = 'cotizacion'.$i;
			$cotizacion = $_POST[$aux];
			$aux = 'fca'.$i;
			$fca = $_POST[$aux];
			$aux = 'fce'.$i;
			$fce = $_POST[$aux];
			$sql = "INSERT INTO crmgest_back1 (id_modulo,linea,sim,evidente,asignado,anexo,oportunidad,compra,cotizacion,fca,fce)VALUES 
			('".$_POST['id_mod']."',".$i.",'".$sim."','".$evidente."','".$asignado."','".$anexo."','".$oportunidad."','".$compra."','".$cotizacion."','".$fca."','".$fce."')";
		
			// use exec() because no results are returned
			try {
				$pdo->exec($sql);
			}
			catch(PDOException $e)
			{
			}
		}
	}	
	
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
$pasa=3;
$sql = "UPDATE crmpa_modulo_1 set back_fec2='".$_POST['fec_rec_bck']."', back2='".$_SESSION['id_usuario']."' ,back_obs2='".$_POST['obs_bck']."',paso_now=".$pasa."  where id_cl =".$_POST['idcl']." and id_modulo=".$_POST['id_mod'];


try {
$pdo->exec($sql);
}
catch(PDOException $e)
{
}
echo json_encode($pdate);
	
	
	exit();
?>

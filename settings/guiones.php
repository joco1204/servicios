<?php 
	require_once('../src/connect.php'); 
?>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>jQuery TE | Downloaded Demo | v.1.4.0</title>

<link type="text/css" rel="stylesheet" href="demo.css">
<link type="text/css" rel="stylesheet" href="../js/jQuery_TE/jquery-te-1.4.0.css">

<script type="text/javascript" src="http://code.jquery.com/jquery.min.js" charset="utf-8"></script>
<script type="text/javascript" src="../js/jQuery_TE/jquery-te-1.4.0.min.js" charset="utf-8"></script>
</head>

<body>
<h1>Guión</h1>
<?php
$sql = "SELECT * FROM crmpa_guiones where idserv=".$_GET['idserv'];
foreach($pdo->query($sql) as $row){
	echo '<textarea name="textarea" class="jqte-test" id="newguion">'.$row['guion'].'</textarea>';
}
?>
<input id="servicio" type="hidden" value="<?php echo $_GET['idserv']?>">
<button type="button" class="btn btn-success" onclick="add_guion();"> Guardar</button>


<script>
	$('.jqte-test').jqte();
	
	// settings of status
	var jqteStatus = true;
	$(".status").click(function()
	{
		jqteStatus = jqteStatus ? false : true;
		$('.jqte-test').jqte({"status" : jqteStatus})
	});
</script>

</body>
</html>
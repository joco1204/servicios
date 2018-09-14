<?php
//Valida la conexión de base de datos
try {
	/*$dsn = 'mysql:host=172.246.126.64;dbname=crm_bpo';
	$nombre_usuario = 'root';
	$contraseña = 'Aur4N01r3*Sm4rtS0lut10nS3rv1c3';*/
	$dsn = 'mysql:host=localhost;dbname=crm_bpo';
	$nombre_usuario = 'root';
	$contraseña = '';
	$opciones = array(
	    PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8',
	);
    $pdo = new PDO($dsn, $nombre_usuario, $contraseña, $opciones);
} catch(PDOException $e){
    print "¡Error!: " . $e->getMessage() . "<br/>";
    die();
}

?>

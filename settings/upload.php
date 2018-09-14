<?php
$result="";
require_once('../src/connect.php'); 
//comprobamos que sea una petición ajax
if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') 
{
 
    //obtenemos el archivo a subir
    $file = $_FILES['archivo']['name'];
 
    //comprobamos si existe un directorio para subir el archivo
    //si no es así, lo creamos
    if(!is_dir("files/")) 
        mkdir("files/", 0777);
     
    //comprobamos si el archivo ha subido
    if ($file && move_uploaded_file($_FILES['archivo']['tmp_name'],"files/".$file))
    {
       sleep(3);//retrasamos la petición 3 segundos
       
		$líneas = file("files/".$file);
		$msg="";
		foreach ($líneas as $num_línea => $línea) {
			$columna = explode(";", htmlspecialchars($línea));
			$sql = "INSERT INTO crmpa_clientes (nombre,telefono,celular,email,ciudad,tipo_documento,documento,id_servicio,isread,intentos,asesor) VALUES ('".$columna[0]."','".$columna[1]."','".$columna[2]."','".$columna[3]."','".$columna[4]."','".$columna[5]."','".$columna[6]."','".$_POST['ser']."','Y',0,0)";
			
			if ($pdo->query($sql) === TRUE) {
				$msg=$msg." New record created successfully";
			} else {
				//$msg= $msg." Error: " . $sql . "<br>" . $conn->error;
			}
		}

	   
	   //echo $msg;
	   $result="OK";
    }else{
		$result= "problem move file";
	}
}else{
    throw new Exception("Error Processing Request", 1);   
	$result="Error Processing Request";
}
echo $result;
?>
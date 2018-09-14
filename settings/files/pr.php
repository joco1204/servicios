<?php require_once('../../src/connect.php'); 
$líneas = file('prueba.txt');

// Recorrer nuestro array, mostrar el código fuente HTML como tal y mostrar tambíen los números de línea.
foreach ($líneas as $num_línea => $línea) {
    $columna = explode(";", htmlspecialchars($línea));
	echo $columna[0];
	echo $columna[1];
	echo $columna[2];
	echo $columna[3];
	
}





?>
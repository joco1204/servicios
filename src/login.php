<?php
include 'connect.php';
if(isset($_POST['user']) && isset($_POST['pass'])){
	if($_POST['user'] != '' && $_POST['pass'] != ''){
		$user = $_POST['user'];
		$pass = md5($_POST['pass']);
		$query = "SELECT id, user, password, nombre, apellido FROM crmpa_usuarios WHERE user = '".$user."' AND estado = '1';";
		$result = $pdo->query($query);
		if($result->rowCount() > 0){
			$row = $result->fetch();
			if($row['password'] == $pass){
				$query2  = "SELECT a.id_perfil, b.perfil, a.id_empresa, c.nombre ";
				$query2 .= "FROM crmpa_permisos AS a ";
				$query2 .= "JOIN crmpa_perfiles AS b ON a.id_perfil = b.id ";
				$query2 .= "JOIN crmpa_empresa AS c ON a.id_empresa = c.id ";
				$query2 .= "WHERE a.id_usuario = '".$row['id']."';";
				$result2 = $pdo->query($query2);
				$row2 = $result2->fetch();
				session_start();
				$_SESSION['id_usuario'] = $row['id'];
				$_SESSION['usuario'] = $row['user'];
				$_SESSION['nombre'] = $row['nombre'];
				$_SESSION['apellido'] = $row['apellido'];
				$_SESSION['id_perfil'] = $row2['id_perfil'];
				$_SESSION['perfil'] = $row2['perfil'];
				$_SESSION['id_empresa'] = $row2['id_empresa'];
				$_SESSION['empresa'] = $row2['nombre'];
				if($row2['id_perfil'] == '1'){
					header('location: ../settings/control.html');
				} else if($row2['id_perfil'] == '2'){
					header('location: ../contact/control.php');
				} else {
					header('location: ../back/control.php');
				}
			} else {
				header('location: ../index.php?error_login=3');
			}
		} else {
			header('location: ../index.php?error_login=2');	
		}
	} else {
		header('location: ../index.php?error_login=1');	
	}
} else {
	header('location: ../index.php?error_login=1');
}

?>
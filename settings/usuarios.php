<?php
require_once('../src/connect.php'); 
?>
<style>
body{
    //background:#eee;    
}
.main-box.no-header {
    padding-top: 20px;
}
.main-box {
    background: #FFFFFF;
    -webkit-box-shadow: 1px 1px 2px 0 #CCCCCC;
    -moz-box-shadow: 1px 1px 2px 0 #CCCCCC;
    -o-box-shadow: 1px 1px 2px 0 #CCCCCC;
    -ms-box-shadow: 1px 1px 2px 0 #CCCCCC;
    box-shadow: 1px 1px 2px 0 #CCCCCC;
    margin-bottom: 16px;
    -webikt-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
}
.table a.table-link.danger {
    color: #e74c3c;
}
.table a.table-link.success {
    color: #09bc27;
}
.label {
    border-radius: 3px;
    font-size: 0.875em;
    font-weight: 600;
}
.user-list tbody td .user-subhead {
    font-size: 0.875em;
    //font-style: italic;
}
.user-list tbody td .user-link {
    display: block;
    font-size: 1.25em;
    padding-top: 3px;
    margin-left: 60px;
}
a {
    color: #3498db;
    outline: none!important;
}
.user-list tbody td>img {
    position: relative;
    max-width: 50px;
    float: left;
    margin-right: 15px;
}

.table thead tr th {
    //text-transform: uppercase;
    font-size: 0.875em;
}
.table thead tr th {
    border-bottom: 2px solid #e7ebee;
}
.table tbody tr td:first-child {
    font-size: 1.125em;
    font-weight: 300;
	background:#eee;    
}
.table tbody tr td {
    font-size: 0.875em;
    vertical-align: middle;
    border-top: 1px solid #e7ebee;
    padding: 12px 8px;
	background:#eee;    
}
</style>
<script>
	function new_user(){
		var nameus = $('#name_us').val();
		var apelus = $('#apel_us').val();
		var userus = $('#user_us').val();
		var emailus = $('#email_us').val();
		var passus = $('#pass_us').val();
		var perfus = $('#perf_us').val();
		var emprus = $('#empr_us').val();
		
		$.ajax({
			type: "POST",
			url: 'save_user.php',
			dataType: 'json',
			data: {
				name: nameus,
				apel: apelus,
				user: userus,
				pass: passus,
				email:emailus,
				perf:perfus,
				empr:emprus,
			},
			beforeSend: function() {
					//$('#summary111').html('checking');
			},
			complete: function() {},
			success: function(html) {
				
				if (html=='OK'){
					alert('Usuario Creado Correctamente');
					$('#contenidos').load('usuarios.php');
				}else{
					alert('No se pudo crear el usuario');
				}
				$('#user_new').modal('hide');
					
			}
		});
	}
</script>
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
<hr>
<div class="container bootstrap snippet">
    <div class="row">
        <div class="col-lg-12">
            <div class="main-box no-header clearfix">
				<div align="right">
					<button type="button" class="btn btn-default btn-lg" data-toggle="modal" data-target="#user_new">
						<i class="icon-user icon-large"></i><i class="icon-plus icon-large"></i>
					</button>
					<hr>
				</div>
                <div class="main-box-body clearfix" style="height: 400px;overflow-y: scroll;">
                    <div class="table-responsive">
                        <table class="table user-list" >
                            <thead>
                                <tr>
									<th><span>Nombre</span></th>
									<th><span>Usuario</span></th>
									<th><span>Estado</span></th>
									<th><span>Opciones</span></th>
                                </tr>
                            </thead>
                            <tbody>
								<?php
								$sql = "select nombre,apellido,perfil,A.estado,email,fecha_creacion,user 
										from crmpa_usuarios A 
										inner join crmpa_permisos B on A.id = B.id_usuario
										inner join crmpa_perfiles C on B.id_perfil = C.id
										order by A.estado,A.fecha_creacion";
								foreach($pdo->query($sql) as $row){
								?>
                                <tr>
                                    <td>
                                        <img src="../images/AMERICANBPO.jpg" alt="">
                                        <span class="user-link"><?php echo $row['nombre']." ".$row['apellido'];?></span>
                                        <span class="user-subhead"><?php echo $row['perfil']; ?></span>
                                    </td>
                                    <td style="vertical-align: middle;">
                                       <span class="user-subhead"><?php echo $row['user'];?></span>
                                    </td>
									<td style="vertical-align: middle;">
										
										<?php
										if ($row['estado'] == 0){
											echo '<span class="label label-danger">Inactivo</span>';
										}else{
											echo '<span class="label label-success">Activo</span>';
										}
										?>
                                    </td>
									<td style="width: 20%;vertical-align: middle;">
                                        <a href="#" class="table-link success">
                                            <span class="fa-stack">
                                                <i class="fa fa-square fa-stack-2x"></i>
                                                <i class="fa fa-search-plus fa-stack-1x fa-inverse"></i>
                                            </span>
                                        </a>
											<a href="#" class="table-link">	
                                            <span class="fa-stack">
                                                <i class="fa fa-square fa-stack-2x"></i>
                                                <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
                                            </span>
                                        </a>
                                        <a href="#" class="table-link danger">
                                            <span class="fa-stack">
                                                <i class="fa fa-square fa-stack-2x"></i>
                                                <i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
                                            </span>
                                        </a>
                                    </td>
                                </tr>
								<tr>
									<td colspan="5" style="background-color:#FFF;"></td>
								</tr>
								<?php
								}
								?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>	

<div id="user_new" class="modal fade" role="dialog">
  
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header text-center bg-green">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title text-center"><b>Adicionar nuevo usuario:</b></h4>
                </div>
                <div class="modal-body">
					<div class="row">
						<div class="span3">
							Nombre:
						</div>
						<div class="span3">
							<input type="text" id="name_us" />
						</div>
					</div>
					<div class="row">
						<div class="span3">
							Apellido:
						</div>
						<div class="span3">
							<input type="text" id="apel_us" />
						</div>
					</div>
					<div class="row">
						<div class="span3">
							Usuario:
						</div>
						<div class="span3">
							<input type="text" id="user_us" />
						</div>
					</div>
					<div class="row">
						<div class="span3">
							Password:
						</div>
						<div class="span3">
							<input type="password" id="pass_us" />
						</div>
					</div>
					<div class="row">
						<div class="span3">
							Email:
						</div>
						<div class="span3">
							<input type="text" id="email_us" />
						</div>
					</div>
					<div class="row">
						<div class="span3">
							Perfil:
						</div>
						<div class="span3">
							<select id="perf_us" >
								<option value="1">Administrador</option>
								<option value="2">Asesor</option>
								<option value="3">Backoffices</option>
							</select>
						</div>
					</div>
					<div class="row">
						<div class="span3">
							Empresa:
						</div>
						<div class="span3">
							<select id="empr_us" >
								<option value=""></option>
								<?php
								$sql1 = "SELECT * from crmpa_empresa ";
								
								foreach($pdo->query($sql1) as $row1){
									echo '<option value="'.$row1['id'].'">'.$row1['nombre'].'</option>';
								}
								?>
							</select>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" onclick="new_user()" class="btn btn-primary">Load</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    
</div>		
<?php
require_once('../src/connect.php'); 
?>
<div class='box box-success'>
	<div class='box-header with-border'>
		ADD
	</div>
	<div class='box-body'>

	<form id="add_emp" role="form" autocomplete="off">
		<div class="row">
			<div class="span12">
			
				<label for="name_emp">Nombre:</label>
				<input type="text" name="name_serv" id="name_serv" class="form-control">
				<label for="desc_emp">Descripción:</label>
				<textarea  id="desc_serv" rows="4" cols="8"></textarea>
				<label for="desc_emp">Empresa:</label>
				<select id="emp_serv">
				<?php 
				$sql = "SELECT * FROM crmpa_empresa";
				foreach($pdo->query($sql) as $row){
					echo "<option value='".$row['id']."'>".$row['nombre']."</option>";
				}
				?>
				</select>
				<a href="javascript:;" class="btn btn-small btn-success" onclick="add_serv();">
				<i class="btn-icon-only icon-add"> + Adicionar</i>
				</a>
			</div>
		</div>
	</form>
	</div>	
</div>	
	
<?php
	session_start();
	
	require_once('../src/connect.php'); 
	?>
<script>
//dia actual
var today = new Date();
var today2 = new Date();
var dd = today.getDate();
var mm = today.getMonth()+1; //January is 0!
var yyyy = today.getFullYear();
 if(dd<10){
        dd='0'+dd
    } 
    if(mm<10){
        mm='0'+mm
    } 

//today = yyyy+'-'+mm+'-'+dd;
today = dd+'-'+mm+'-'+yyyy;
//dar fechas a los campos
document.getElementById("fec_recibido_mod1").setAttribute("max", today);
document.getElementById("fec_recibido_mod1").setAttribute("min", today);
document.getElementById("fec_recibido_mod1").setAttribute("value", today);

</script>


<form class="form-horizontal">
  <div class="table-responsive">
    <table class="table table-bordered table-striped table-highlight">
		<tbody>
        <tr>
			<th colspan="4"><div class="badge badge-info" width="100%"> BACK-OFFICE PASO 2:</div></th>
		</tr>
		<tr>
			<td>FECHA DE RECIBIDO:</td>
			<td><input type="date" class="form-control" id="fecha_recibido_mod2" value="<?php echo $today;?>" /></td>
		
			<td>NOMBRE DEL USUARIO QUE TOMO LA FICHA:</td>
			<?php echo '<td><input type="text" class="form-control" id="back_mod2" value="'.$_SESSION['nombre'].'" readonly /></td>'; ?>
		</tr>
		<tr>
			<td>OBSERVACIONES</td>
			<td colspan="3">
				<textarea id="obs_mod2" style="width:98%;" class="form-control" onKeyUp="aMayusculas(this.value,this.id)"></textarea>
			</td>
		</tr>
		<tr>
			<th colspan="4"><div class="badge badge-info" width="100%"></div></th>
		</tr>
	</table>
	<?php

	$sql = "SELECT * FROM crmpa_modulo_1 where id_cl=".$_GET['idcl']." and id_calif=".$_GET['idcalif'];
	foreach($pdo->query($sql) as $row){
	?>
	<table class="table table-bordered table-striped table-highlight">
		<tbody>
		<tr>
			<td>TIPO CLIENTE / CALIFICACION</td>
			<td>
				<input type="" value="<?php echo $row['id_calif']; ?>" readonly />
			</td>
			<td>NUMERO DE LINEAS:</td>
			<td>
			<input type="" id="nlineas" value="<?php echo $row['nline']; ?>" readonly />
			</td>
		</tr>
		<tr>	
			<th colspan="4">
				<div style="display:none;" class="badge badge-danger" id="NotaScore" width="100%">
					NO APLICA, NO PUEDE CONTINUAR;
					</div>
			</th>
		</tr>
		<tr>
			<th colspan="4"><div class="badge badge-info" width="100%"> TITULAR Y/O SUSCRIPTOR:</div></th>
		</tr>
		 <tr>
			<td>CEDULA / NIT:</td>
			<td><input type="" value="<?php echo $row['doc_sus']; ?>" readonly /></td>
			<td>NOMBRES / NOMBRE EMPRESA:</td>
			<td><input type="" value="<?php echo $row['name_sus']; ?>" readonly /></td>
		</tr>
		<tr>
			<td>APELLIDOS:</td>
			<td><input type="" value="<?php echo $row['apel_sus']; ?>" readonly /></td>
			<td>FECHA NACIMIENTO / FECHA CREACION:</td>
			<td><input type="" value="<?php echo $row['fec_nac_sus']; ?>" readonly /></td>
		</tr>
		<tr>
			<td>FECHA EXPEDICION:</td>
			<td><input type="" value="<?php echo $row['fec_exp_sus']; ?>" readonly /></td>
			<td>Barrio:</td>
			<td><input type="" value="<?php echo $row['barrio_sus']; ?>" readonly /></td>
		</tr>
		</tr>
			<td>EMAIL:</td>
			<td><input type="" value="<?php echo $row['email_sus']; ?>" readonly /></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td rowspan="4">DIRECCION:</td>
			<td><input type="" value="<?php echo $row['dir1_sus']; ?>" readonly /></td>
			<td><input type="" value="<?php echo $row['dir2_sus']; ?>" readonly /></td>
		</tr>
		<tr>
			<td><input type="" value="<?php echo $row['dir3_sus']; ?>" readonly /></td>
			<td><input type="" value="<?php echo $row['dir4_sus']; ?>" readonly /></td>
		</tr>
		<tr>
			<td><input type="" value="<?php echo $row['dir5_sus']; ?>" readonly /></td>
			<td><input type="" value="<?php echo $row['dir6_sus']; ?>" readonly /></td>
		</tr>
		<tr>
			<td><input type="" value="<?php echo $row['dir7_sus']; ?>" readonly /></td>
			<td><input type="" value="<?php echo $row['dir8_sus']; ?>" readonly /></td>
		</tr>
		<tr>
			<td>DEPARTAMENTO:</td>
			<td><input type="" value="<?php echo $row['dept_sus']; ?>" readonly /></td>
			<td>CIUDAD:</td>
			<td><input type="" value="<?php echo $row['ciud_sus']; ?>" readonly /></td>
		</tr>
		<!-- Linea-->
		<?php
		for ($i = 1; $i <= $row['nline']; $i++) {
		$nlinea="Linea".$i;
		$doc_sus='doc_sus'.$i;
		$name_sus='name_sus'.$i;
		$apel_sus='apel_sus'.$i;
		$tipo='tipo_'.$i;
		$linea='linea_'.$i;
		$otro='otro_'.$i;
		$nip='nip_'.$i;
		$operador='operador_'.$i;
		$tipservice='tipservice'.$i;
		$planservice='planservice'.$i;
		$infoservice='infoservice'.$i;
		$service='service'.$i;
		$fecha_venta='fecha_venta_'.$i;
		$obs='obs_'.$i;
		?>
		
		<tr>
			<td colspan="4">
				 <?php echo'<div id="line'.$i.'" style="display:block;"><button type="button"><a  data-toggle="collapse" data-target="#'.$nlinea.'">'.$nlinea.'</a></button>'; ?>
			</td>
		</tr>
		<tr>
			<td colspan="4">
				<?php echo '<div id="'.$nlinea.'" name="'.$nlinea.'" class="collapse">';?>
					<table >
						<tr>
							<td>CEDULA / NIT:</td>
							<td>NOMBRES / NOMBRE EMPRESA:</td>
							<td>APELLIDOS:</td>
							<td></td>
						</tr>
						<tr>
							<td><input type="" value="<?php echo $row[$doc_sus]; ?>" readonly /></td>
							<td><input type="" value="<?php echo $row[$name_sus]; ?>" readonly /></td>
							<td><input type="" value="<?php echo $row[$apel_sus]; ?>" readonly /></td>
							<td><input type="" value="<?php echo $row[$tipo]; ?>" readonly /></td>
						</tr>
						<tr>
							
							<th>LINEA</th>
							<th>OTRO NUMERO</th>
							<th>NIP</th>
							<th>OPERADOR ORIGEN</th>
							
						</tr>
						<tr>
							
							<td><input type="" value="<?php echo $row[$linea]; ?>" readonly /></td>
							<td><input type="" value="<?php echo $row[$otro]; ?>" readonly /></td>
							<td><input type="" value="<?php echo $row[$nip]; ?>" readonly /></td>
							<td><input type="" value="<?php echo $row[$operador]; ?>" readonly /></td>
						</tr>
						<tr>
							<th>TIPO DE SERVICIO</th>
							<td>VALOR PLAN</td>
							<th>INFORMACION DEL PLAN</th>
							<th>SERVICIO</th>
						</tr>
						
						<tr>
							<td><input type="" value="<?php echo $row[$tipservice]; ?>" readonly /></td>
							<td><input type="" value="<?php echo $row[$planservice]; ?>" readonly /></td>
							<td><input type="" value="<?php echo $row[$infoservice]; ?>" readonly /></td>
							<td><input type="" value="<?php echo $row[$service]; ?>" readonly /></td>
						</tr>
						<tr>
							<th>FECHA DE VENTA</th>
							<th colspan="2">OBSERVACIONES-2-2-</th>
							<th>NOMBRE DEL ASESOR</th>
						</tr>
						<tr>
							 <td><input type="" value="<?php echo $row[$fecha_venta]; ?>" readonly /></td>
							 <td colspan="2"><textarea cols="200" rows="2" readonly="readonly"><?php echo $row[$obs]; ?></textarea></td>
							 <td><input type="" value="<?php echo ''; ?>" readonly /></td>
						</tr>
						<tr>
							<th colspan="4"><div class="badge badge-info" width="100%"> INFORMACI&Oacute;N BACK OFFICE:</div></th>
						</tr>
						<tr>
							<th># SIM AVANTEL</th>
							<td><input type="" value="<?php echo ''; ?>" id="sim_<?php echo $i;?>"/></td>
							<th># EVIDENTE</th>
							<td><input type="" value="<?php echo ''; ?>" id="evidente_<?php echo $i;?>"/></td>
						</tr>	
						<tr>
							<th>#ASIGNADO</th>
							<td><input type="" value="<?php echo ''; ?>" id="asignado_<?php echo $i;?>"/></td>
							<th># ANEXO</th>
							<td><input type="" value="<?php echo ''; ?>" id="anexo_<?php echo $i;?>"/></td>
						</tr>	
						<?php
						if ($i >= 6){
						?>	
						<tr>
							<th># OPORTUNIDAD</th>
							<td><input type="text" value="<?php echo ''; ?>" id="oportunidad_<?php echo $i;?>"/></td>
							<th># COMPRA</th>
							<td><input type="text" value="<?php echo ''; ?>" id="compra_<?php echo $i;?>"/></td>
						</tr>							
						<tr>
							<th># COTIZACION</th>
							<td><input type="text" value="<?php echo ''; ?>" id="cotizacion_<?php echo $i;?>"/></td>
							<th># FCA</th>
							<td><input type="text" value="<?php echo ''; ?>" id="fca_<?php echo $i;?>"/></td>
						</tr>							
						<tr>
							<th># FCE</th>
							<td><input type="text" value="<?php echo ''; ?>" id="fce_<?php echo $i;?>"/></td>
							<th></th>
							<td></td>
						</tr>							
						<?php
						}
						?>
					</table>
				</div>
			</td>
		</tr>
		
		<?php } ?>
      </tbody>
    </table>
	<?php } ?>
  </div>
</form>
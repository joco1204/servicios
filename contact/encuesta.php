<script>
function changeCiud_enc(){
	var depto = $('#dept_enc').val();
	
	$.ajax({
		type: "POST",
		url: 'loadCiud.php',
		dataType: 'json',
		data: "id_dpt="+depto, // appears as $_GET['id'] @ your backend side
		beforeSend: function() {
				//$('#summary111').html('checking');
		},
		complete: function() {},
		success: function(html) {
				var cadena="<option value='' selected></option>";
				$.each(html, function(index,valor) {
					cadena  = cadena +"<option value='"+index +"'>"+valor +"</option>";
				});
				$('#ciud_enc').find('option').remove().end();
				$('#ciud_enc').append(cadena);
		}
   });
}

	
</script>
<?php require_once('../src/connect.php');?>
<form class="form-horizontal">
  <div class="table-responsive">
    <table class="table table-bordered table-striped table-highlight">
		
      <tbody>
        <tr>
			<th colspan="2"><span class="badge badge-success" style="width: 100%">CITA:</span></th>
		</tr>
		<tr>
			<td>FECHA DE ENTREGA:</td>
			<td><input type="date" class="form-control" placeholder="" id="fec_ent_enc"/></td>
		</tr>
		<tr>
			<td>DIRECCION:</td>
			<td>
				<select id="dri1_enc">
					<option value='CALLE '>CALLE </option>
					<option value='CARRERA '>CARRERA </option>
					<option value='AVENIDA '>AVENIDA </option>
					<option value='AUTOPISTA NORTE O SUR'>AUTOPISTA NORTE O SUR</option>
					<option value='AUTOPISTA  SUR'>AUTOPISTA  SUR</option>
					<option value='TRANSVERSAL'>TRANSVERSAL</option>
					<option value='DIAGONAL'>DIAGONAL</option>
				</select>
				<input type="text" class="form-control" placeholder="" id="dri2_enc"/>
				<select class="form-control" id="dri3_enc">
					<option value='CALLE '>CALLE </option>
					<option value='CARRERA '>CARRERA </option>
					<option value='AVENIDA '>AVENIDA </option>
					<option value='AUTOPISTA NORTE O SUR'>AUTOPISTA NORTE O SUR</option>
					<option value='AUTOPISTA  SUR'>AUTOPISTA  SUR</option>
					<option value='TRANSVERSAL'>TRANSVERSAL</option>
					<option value='DIAGONAL'>DIAGONAL</option>
				</select>
				<input type="text" class="form-control" placeholder="" id="dri4_enc"/>
				<select class="form-control" id="dri5_enc">
					<option value='URBANIZACION'>URBANIZACION</option>
					<option value='APTARTAMENTO '>APTARTAMENTO </option>
					<option value='INTERIOR'>INTERIOR</option>
					<option value='MANZANA '>MANZANA </option>
					<option value='TORRE'>TORRE</option>
					<option value='EDIFICIO'>EDIFICIO</option>
				</select>
				<input type="text" class="form-control" placeholder="" id="dri6_enc"/>
				<select class="form-control" id="dri7_enc">
					<option value='URBANIZACION'>URBANIZACION</option>
					<option value='APTARTAMENTO '>APTARTAMENTO </option>
					<option value='INTERIOR'>INTERIOR</option>
					<option value='MANZANA '>MANZANA </option>
					<option value='TORRE'>TORRE</option>
					<option value='EDIFICIO'>EDIFICIO</option>
				</select>
				<input type="text" class="form-control" placeholder="" id="dri8_enc"/>
			</td>
		</tr>
		<tr>
			<td>DEPARTAMENTO:</td>
			<td>
				<select onchange="changeCiud_enc();" id="dept_enc">
				<option value="">--</option>
				<?php
					$sql = "SELECT * FROM crmpa_deptos";
					
					foreach($pdo->query($sql) as $row){
						echo "<option value='".$row['id']."'>".$row['nombre']."</option>";
					}
				?>
				</select>
			</td>
		</tr>
		<tr>
			<td>CIUDAD:</td>
			<td>
			<select id="ciud_enc">
			
			</select>
			</td>
		</tr>
		<tr>
			<td>Barrio:</td>
			<td><input type="text" class="form-control" placeholder="" id="barrio_enc"/></td>
		</tr>
		<tr>
			<td>UBICACIÓN:</td>
			<td>
				<select id="ubicacion_enc">
					<option value=""></option>
					<option value="NORTE">NORTE</option>
					<option value="SUR">SUR</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>SITIO:</td>
			<td>
				<select id="sitio_enc">
					<option value=""></option>
					<option value="CASA">CASA</option>
					<option value="OFICINA">OFICINA</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>ESPECIFICACIONES:</td>
			<td><input type="text" class="form-control" placeholder="" id="especif_enc"/></td>
		</tr>
		<tr>
			<td>HORARIO:</td>
			<td>
				<select id="horario_enc">
					<option value=""></option>
					<option value="COMPLETO">COMPLETO 9AM A 5PM</option>
					<option value="MAÑANA">MAÑANA 9 A 12:30</option>
					<option value="TARDE">TARDE 1:00PM A 5:00PM</option>
				</select>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<button type="button" class="btn btn-success" onclick="nvalid_venta('VENTA',0,0,0);">MISMO ASESOR</button>
			</td>
		</tr>
		</tbody>
    </table>
  </div>
</form>
<script>
function changeCiud(){
	var depto = $('#dept').val();
	alert(depto);
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
						//alert("element at " + index + ": " + valor); // will alert each value
						cadena  = cadena +"<option value='"+index +"'>"+valor +"</option>";
				});
				alert(cadena);
				$('#ciud').find('option').remove().end();
				$('#ciud').append(cadena);
		}
   });
}
$(document).ready(function() {
	
} );
</script>
<?php require_once('../src/connect.php'); ?>
<form class="form-horizontal">
  <div class="table-responsive">
    <table class="table table-bordered table-striped table-highlight">
		
      <tbody>
        <tr>
			<th colspan="2"><span class="badge badge-success" style="width: 100%">CITA:</span></th>
		</tr>
		<tr>
			<td>FECHA DE ENTREGA:</td>
			<td><input type="date" class="form-control" placeholder="" /></td>
		</tr>
		<tr>
			<td>DIRECCION:</td>
			<td>
				<select>
					<option value='CALLE '>CALLE </option>
					<option value='CARRERA '>CARRERA </option>
					<option value='AVENIDA '>AVENIDA </option>
					<option value='AUTOPISTA NORTE O SUR'>AUTOPISTA NORTE O SUR</option>
					<option value='AUTOPISTA  SUR'>AUTOPISTA  SUR</option>
					<option value='TRANSVERSAL'>TRANSVERSAL</option>
					<option value='DIAGONAL'>DIAGONAL</option>
				</select>
				<input type="text" class="form-control" placeholder="" />
				<select class="form-control">
					<option value='CALLE '>CALLE </option>
					<option value='CARRERA '>CARRERA </option>
					<option value='AVENIDA '>AVENIDA </option>
					<option value='AUTOPISTA NORTE O SUR'>AUTOPISTA NORTE O SUR</option>
					<option value='AUTOPISTA  SUR'>AUTOPISTA  SUR</option>
					<option value='TRANSVERSAL'>TRANSVERSAL</option>
					<option value='DIAGONAL'>DIAGONAL</option>
				</select>
				<input type="text" class="form-control" placeholder="" />
				<select class="form-control">
					<option value='URBANIZACION'>URBANIZACION</option>
					<option value='APTARTAMENTO '>APTARTAMENTO </option>
					<option value='INTERIOR'>INTERIOR</option>
					<option value='MANZANA '>MANZANA </option>
					<option value='TORRE'>TORRE</option>
					<option value='EDIFICIO'>EDIFICIO</option>
				</select>
				<input type="text" class="form-control" placeholder="" />
				<select class="form-control">
					<option value='URBANIZACION'>URBANIZACION</option>
					<option value='APTARTAMENTO '>APTARTAMENTO </option>
					<option value='INTERIOR'>INTERIOR</option>
					<option value='MANZANA '>MANZANA </option>
					<option value='TORRE'>TORRE</option>
					<option value='EDIFICIO'>EDIFICIO</option>
				</select>
				<input type="text" class="form-control" placeholder="" />
			</td>
		</tr>
		<tr>
			<td>DEPARTAMENTO:</td>
			<td>
				<select onchange="changeCiud();" id="dept">
				<?php
					$sql = "SELECT * FROM crmpa_deptos";
				
					foreach($pdo->query($sql) as $row){
						echo "<option>".$row['nombre']."</option>";
					}
				?>
				</select>
			</td>
		</tr>
		<tr>
			<td>CIUDAD:</td>
			<td>
			<select id="ciud">
			
			</select>
			</td>
		</tr>
		<tr>
			<td>Barrio:</td>
			<td><input type="text" class="form-control" placeholder="" /></td>
		</tr>
		<tr>
			<td>UBICACIÓN:</td>
			<td>
				<select>
					<option value=""></option>
					<option value="NORTE">NORTE</option>
					<option value="SUR">SUR</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>SITIO:</td>
			<td>
				<select>
					<option value=""></option>
					<option value="CASA">CASA</option>
					<option value="OFICINA">OFICINA</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>ESPECIFICACIONES:</td>
			<td><input type="text" class="form-control" placeholder="" /></td>
		</tr>
		<tr>
			<td>HORARIO:</td>
			<td>
				<select>
					<option value=""></option>
					<option value="COMPLETO">COMPLETO 9AM A 5PM</option>
					<option value="MAÑANA">MAÑANA 9 A 12:30</option>
					<option value="TARDE">TARDE 1:00PM A 5:00PM</option>
				</select>
			</td>
		</tr>
		</tbody>
    </table>
  </div>
</form>
<?php
	session_start();
	
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

today = yyyy+'-'+mm+'-'+dd;

//dia anterior
var yesterday = new Date();;
yesterday.setHours(today2.getHours()-24);

dd = yesterday.getDate();
mm = yesterday.getMonth()+1; //January is 0!
yyyy = yesterday.getFullYear();
 if(dd<10){
        dd='0'+dd
    } 
    if(mm<10){
        mm='0'+mm
    } 

yesterday = yyyy+'-'+mm+'-'+dd;

//dia despues

var tomorrow = new Date();;
tomorrow.setHours(today2.getHours()-24);

dd = tomorrow.getDate();
mm = tomorrow.getMonth()+1; //January is 0!
yyyy = tomorrow.getFullYear();
 if(dd<10){
        dd='0'+dd
    } 
    if(mm<10){
        mm='0'+mm
    } 

tomorrow = yyyy+'-'+mm+'-'+dd;

//dar fechas a los campos
document.getElementById("fec_exp_sus").setAttribute("max", today);
document.getElementById("fec_exp_sus").setAttribute("min", today);
document.getElementById("fec_exp_sus").setAttribute("value", today);


document.getElementById("fecha_venta_1").setAttribute("max", today);
document.getElementById("fecha_venta_1").setAttribute("min", today);
document.getElementById("fecha_venta_1").setAttribute("value", today);
document.getElementById("fecha_venta_2").setAttribute("max", today);
document.getElementById("fecha_venta_2").setAttribute("min", today);
document.getElementById("fecha_venta_2").setAttribute("value", today);
document.getElementById("fecha_venta_3").setAttribute("max", today);
document.getElementById("fecha_venta_3").setAttribute("min", today);
document.getElementById("fecha_venta_3").setAttribute("value", today);
document.getElementById("fecha_venta_4").setAttribute("max", today);
document.getElementById("fecha_venta_4").setAttribute("min", today);
document.getElementById("fecha_venta_4").setAttribute("value", today);
document.getElementById("fecha_venta_5").setAttribute("max", today);
document.getElementById("fecha_venta_5").setAttribute("min", today);
document.getElementById("fecha_venta_5").setAttribute("value", today);
document.getElementById("fecha_venta_6").setAttribute("max", today);
document.getElementById("fecha_venta_6").setAttribute("min", today);
document.getElementById("fecha_venta_6").setAttribute("value", today);
document.getElementById("fecha_venta_7").setAttribute("max", today);
document.getElementById("fecha_venta_7").setAttribute("min", today);
document.getElementById("fecha_venta_7").setAttribute("value", today);
document.getElementById("fecha_venta_8").setAttribute("max", today);
document.getElementById("fecha_venta_8").setAttribute("min", today);
document.getElementById("fecha_venta_8").setAttribute("value", today);
document.getElementById("fecha_venta_9").setAttribute("max", today);
document.getElementById("fecha_venta_9").setAttribute("min", today);
document.getElementById("fecha_venta_9").setAttribute("value", today);
document.getElementById("fecha_venta_10").setAttribute("max", today);
document.getElementById("fecha_venta_10").setAttribute("min", today);
document.getElementById("fecha_venta_10").setAttribute("value", today);
function showLine(){
	var nline = $('#nline').val();
	var aux2 =parseInt(nline) +1;
	for (i = 0; i <= nline; i++) {
		$('#line'+i).show();
	}
	for (i = aux2; i <= 10; i++) {
		$('#line'+i).hide();
	}	
}
function changeCiud(){
	var depto = $('#dept_sus').val();
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
				$('#ciud_sus').find('option').remove().end();
				$('#ciud_sus').append(cadena);
		}
   });
}
$(document).ready(function() {
		
} );

function score(){
	var sel=$('#scoreG').val();
	if (sel=="E" || sel =="SDNE"){
		$('#NotaScore').show();
		$('#nline').prop('disabled', true);
		$('#nline').val('');
		/*$('#tipservice'+linea).prop('disabled', true);
		$('#planservice'+linea).prop('disabled', true);
		$('#fecha_venta_'+linea).prop('disabled', true);
		$('#obs_'+linea).prop('disabled', true);*/
		for (i = 0; i <= 10; i++) {
			$('#line'+i).hide();
		}
	}else{
		$('#NotaScore').hide();
		$('#nline').prop('disabled', false);
		/*$('#tipservice'+linea).prop('disabled', false);
		$('#planservice'+linea).prop('disabled', false);
		$('#fecha_venta_'+linea).prop('disabled', false);
		$('#obs_'+linea).prop('disabled', false);*/
	}
}

function tipservice(linea){	
	var sel=$('#tipservice'+linea).val();
	$('#planservice'+linea).empty();
	if (sel=="PERSONALES"){
		$('#planservice'+linea).append(
			$('<option>', {value: 0,text: " -- "}),
			$('<option>', {value: 1,text: "$ 45.000"}),
			$('<option>', {value: 2,text: "$ 50.000"}),
			$('<option>', {value: 3,text: "$ 60.000"}),
			$('<option>', {value: 4,text: "$ 90.000"}),
			$('<option>', {value: 5,text: "$ 120.000"})
		);
	}else if(sel=="INTERNET MOVIL"){
		$('#planservice'+linea).append(
			$('<option>', {value: 0,text: " -- "}),
			$('<option>', {value: 6,text: "$ 30.000"}),
			$('<option>', {value: 7,text: "$ 40.000"}),
			$('<option>', {value: 8,text: "$ 60.000"})
		);
	}else if(sel=="CORPORATIVO"){
		$('#planservice'+linea).append(
			$('<option>', {value: 0,text: " -- "}),
			$('<option>', {value: 9,text: "$ 25.000"}),
			$('<option>', {value: 10,text: "$ 30.000"}),
			$('<option>', {value: 11,text: "$ 40.000"}),
			$('<option>', {value: 12,text: "$ 55.000"}),
			$('<option>', {value: 13,text: "$ 70.000"}),
			$('<option>', {value: 14,text: "$ 85.000"}),
			$('<option>', {value: 15,text: "$ 110.000"})
		);
	}else{
		$('#planservice'+linea).empty();
	}	

}

function planservice(linea){
	var sel=$('#planservice'+linea).val();
	$('#infoservice'+linea).val();
	$('#service'+linea).val();
	if (sel=="1"){$('#infoservice'+linea).val('300 MIN ; 500 SMS ; 2,5 GB EN 4G');$('#service'+linea).val('VOZ Y DATOS');}
	if (sel=="2"){$('#infoservice'+linea).val('400 MIN ; 500 SMS ; 5 GB EN 4G');$('#service'+linea).val('VOZ Y DATOS');}
	if (sel=="3"){$('#infoservice'+linea).val('700 MIN ; 500 SMS ; 10GB EN 4G');$('#service'+linea).val('VOZ Y DATOS');}
	if (sel=="4"){$('#infoservice'+linea).val('1000 MIN ; 500 SMS ; 20GB EN 4G');$('#service'+linea).val('VOZ Y DATOS');}
	if (sel=="5"){$('#infoservice'+linea).val('2000 MIN ; 500 SMS ; 30GB EN 4G');$('#service'+linea).val('VOZ Y DATOS');}

	if (sel=="6"){$('#infoservice'+linea).val('5GB EN 4G');$('#service'+linea).val('SOLO DATOS');}
	if (sel=="7"){$('#infoservice'+linea).val('10GB EN 4G');$('#service'+linea).val('SOLO DATOS');}
	if (sel=="8"){$('#infoservice'+linea).val('30GB EN 4G');$('#service'+linea).val('SOLO DATOS');}

	if (sel=="9"){$('#infoservice'+linea).val('MIN ILIM AVANTEL; 500 SMS ; 1GB EN 4G');$('#service'+linea).val('VOZ Y DATOS');}
	if (sel=="10"){$('#infoservice'+linea).val('150 MIN ; 500 SMS ; 2,5 GB EN 4G');$('#service'+linea).val('VOZ Y DATOS');}
	if (sel=="11"){$('#infoservice'+linea).val('300 MIN ; 500 SMS ; 5 GB EN 4G');$('#service'+linea).val('VOZ Y DATOS');}
	if (sel=="12"){$('#infoservice'+linea).val('700 MIN ; 500 SMS ; 10GB EN 4G');$('#service'+linea).val('VOZ Y DATOS');}
	if (sel=="13"){$('#infoservice'+linea).val('900 MIN ; 500 SMS ; 15GB EN 4G');$('#service'+linea).val('VOZ Y DATOS');}
	if (sel=="14"){$('#infoservice'+linea).val('1100 MIN ; 500 SMS ; 20GB EN 4G');$('#service'+linea).val('VOZ Y DATOS');}
	if (sel=="15"){$('#infoservice'+linea).val('2000 MIN ; 500 SMS ; 30GB EN 4G');$('#service'+linea).val('VOZ Y DATOS');}
}
function nipBlock(linea){
	var nline=$('#nip_Linea'+linea).val();
	if (nline==88891 || nline==88892){
		alert('NIP '+nline+'Invalido');
		$('#nip_Linea'+linea).val('');
	}
}

function valDir1(){
	var n=$('#dir1_sus').val();
	var n1=$('#dir3_sus').val();
	
	if (n == n1){
		alert('Escoger otra opcion');
		$('#dir3_sus').val('');
	}
	
}
function valDir2(){
	var n=$('#dir5_sus').val();
	var n1=$('#dir7_sus').val();
	
	if (n == n1){
		alert('Escoger otra opcion');
		$('#dir7_sus').val('');
	}
}
function valDir3(){
	var n=$('#dir1_sus').val();
	var n1=$('#dir3_sus').val();
	
	if (n == n1){
		alert('Escoger otra opcion');
		$('#dir1_sus').val('');
	}
	
}
function valDir4(){
	var n=$('#dir5_sus').val();
	var n1=$('#dir7_sus').val();
	
	if (n == n1){
		alert('Escoger otra opcion');
		$('#dir5_sus').val('');
	}
}
</script>
<?php require_once('../src/connect.php'); ?>

<form class="form-horizontal">
  <div class="table-responsive">
    <table class="table table-bordered table-striped table-highlight">
		<tbody>
        <!-- <tr>
			<th colspan="4"><div class="badge badge-info" width="100%"> TITULAR:</div></th>
		</tr>
		<tr>
			<td>CEDULA / NIT:</td>
			<td><input type="number" class="form-control" id="doc_tit" placeholder="" /></td>
		
			<td>NOMBRES / NOMBRE EMPRESA:</td>
			<td><input type="text" class="form-control" id="name_tit" placeholder="" /></td>
		</tr>-->
		<tr>
			<td><!-- TIPO CLIENTE / CALIFICACION --><input type="hidden" value="N/A" id="scoreG" /></td>
			<td>
				<!-- <select onchange="score();" id="scoreG" >
					<option value=""></option>
					<option value="A">A</option>
					<option value="B">B</option>
					<option value="C">C</option>
					<option value="D">D</option>
					<option value="H">H</option>
					<option value="E">E</option>
					<option value="SDNE">SDNE</option>

				</select> -->
				
			</td>
			<td>NUMERO DE LINEAS:</td>
			<td>
			<select onchange="showLine();" id="nline">
				<option value=""></option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>
			</select>
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
			<td><input type="text" class="form-control" id="doc_sus" placeholder="" onKeyUp="aMayusculas(this.value,this.id)"/></td>
			<td>NOMBRES / NOMBRE EMPRESA:</td>
			<td><input type="text" class="form-control" id="name_sus" placeholder="" onKeyUp="aMayusculas(this.value,this.id)" /></td>
		</tr>
		<tr>
			<td>APELLIDOS:</td>
			<td><input type="text" class="form-control" id="apel_sus" placeholder="" onKeyUp="aMayusculas(this.value,this.id)"/></td>
			<td>FECHA NACIMIENTO / FECHA CREACION:</td>
			<td><input type="date" class="form-control" id="fec_nac_sus" placeholder="" /></td>
		</tr>
		<tr>
			<td>FECHA EXPEDICION:</td>
			<td><input type="date" id="fec_exp_sus" class="form-control" placeholder="" /></td>
			<td>Barrio:</td>
			<td><input type="text" class="form-control" id="barrio_sus" placeholder="" onKeyUp="aMayusculas(this.value,this.id)"/></td>
		</tr>
		</tr>
			<td>EMAIL:</td>
			<td><input type="email" id="email_sus" class="form-control" placeholder="" onKeyUp="aMayusculas(this.value,this.id)"/></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td rowspan="4">DIRECCION:</td>
			<td><select class="form-control" id="dir1_sus" onchange="valDir3();">
					<option value=""></option>
					<option value='CALLE '>CALLE </option>
					<option value='CARRERA '>CARRERA </option>
					<option value='AVENIDA '>AVENIDA </option>
					<option value='AUTOPISTA NORTE O SUR'>AUTOPISTA NORTE O SUR</option>
					<option value='AUTOPISTA  SUR'>AUTOPISTA  SUR</option>
					<option value='TRANSVERSAL'>TRANSVERSAL</option>
					<option value='DIAGONAL'>DIAGONAL</option>
				</select></td>
			<td colspan="2" ><input type="text" class="form-control" id="dir2_sus" placeholder="" onKeyUp="aMayusculas(this.value,this.id)"/></td>
		</tr>
		<tr>
			<td><select class="form-control" id="dir3_sus" onchange="valDir1();">
					<option value=""></option>
					<option value='CALLE '>CALLE </option>
					<option value='CARRERA '>CARRERA </option>
					<option value='AVENIDA '>AVENIDA </option>
					<option value='AUTOPISTA NORTE O SUR'>AUTOPISTA NORTE O SUR</option>
					<option value='AUTOPISTA  SUR'>AUTOPISTA  SUR</option>
					<option value='TRANSVERSAL'>TRANSVERSAL</option>
					<option value='DIAGONAL'>DIAGONAL</option>
				</select></td>
			<td colspan="2"><input type="text" id="dir4_sus" class="form-control" placeholder="" onKeyUp="aMayusculas(this.value,this.id)"/></td>
		</tr>
		<tr>
			<td><select class="form-control" id="dir5_sus" onchange="valDir4();">
					<option value=""></option>
					<option value='URBANIZACION'>URBANIZACION</option>
					<option value='APARTAMENTO '>APARTAMENTO </option>
					<option value='INTERIOR'>INTERIOR</option>
					<option value='MANZANA '>MANZANA </option>
					<option value='TORRE'>TORRE</option>
					<option value='EDIFICIO'>EDIFICIO</option>
				</select></td>
			<td colspan="2"><input type="text" id="dir6_sus" class="form-control" placeholder="" onKeyUp="aMayusculas(this.value,this.id)"/></td>
		</tr>
		<tr>
			<td><select class="form-control" id="dir7_sus" onchange="valDir2();">
					<option value=""></option>
					<option value='URBANIZACION'>URBANIZACION</option>
					<option value='APARTAMENTO '>APARTAMENTO </ñoption>
					<option value='INTERIOR'>INTERIOR</option>
					<option value='MANZANA '>MANZANA </option>
					<option value='TORRE'>TORRE</option>
					<option value='EDIFICIO'>EDIFICIO</option>
				</select></td>
			<td colspan="2"><input type="text" id="dir8_sus" class="form-control" placeholder="" onKeyUp="aMayusculas(this.value,this.id)"/></td>
		</tr>
		<tr>
			<td>DEPARTAMENTO:</td>
			<td>
				<select onchange="changeCiud();" id="dept_sus">
				<option value="">--</option>
				<?php
					$sql = "SELECT * FROM crmpa_deptos";
					
					foreach($pdo->query($sql) as $row){
						echo "<option value='".$row['id']."'>".$row['nombre']."</option>";
					}
				?>
				</select>
			</td>
			<td>CIUDAD:</td>
			<td>
			<select id="ciud_sus">
			
			</select>



			</td>
		</tr>
		<!-- Linea-->
		<?php
		for ($i = 1; $i <= 10; $i++) {
		$nlinea="Linea".$i;
		?>
		
		<tr>
			<td colspan="4">
				 <?php echo'<div id="line'.$i.'" style="display:none;"><button><A href="#'.$nlinea.'" data-toggle="collapse" data-target="#'.$nlinea.'">'.$nlinea.'</A></button>'; ?>
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
							<td><input type="text" class="form-control" id="doc_sus<?php echo $nlinea;?>" placeholder="doc_sus<?php echo $nlinea;?>" onKeyUp="aMayusculas(this.value,this.id)"/></td>
							<td><input type="text" class="form-control" id="name_sus<?php echo $nlinea;?>" placeholder="" onKeyUp="aMayusculas(this.value,this.id)" /></td>
							<td><input type="text" class="form-control" id="apel_sus<?php echo $nlinea;?>" placeholder="" onKeyUp="aMayusculas(this.value,this.id)"/></td>
							<td>
								<select class="form-control" id="tipo_<?php echo $nlinea;?>">
									<option value=""></option>
									<option value="TELEFONO A PORTAR">TELEFONO A PORTAR</option>
									<option value="LINEA NUEVA">LINEA NUEVA</option>
									<option value="MIGRACION">MIGRACION</option>
								</select>
							</td>
						</tr>
						<tr>
							
							<th>LINEA</th>
							<th>OTRO NUMERO</th>
							<th>NIP</th>
							<th>OPERADOR ORIGEN</th>
							
						</tr>
						<tr>
							
							<?php echo '<td><input type="text"  maxlength="10" id="linea_'.$nlinea.'" class="form-control" placeholder="" onKeyPress="return soloNumeros(event)" /></td> ';?>
							<?php echo '<td><input type="text"  maxlength="10" id="otro_'.$nlinea.'" class="form-control" placeholder="" onKeyPress="return soloNumeros(event)" /></td> ';?>
							<?php echo '<td><input type="text" maxlength="5" id="nip_'.$nlinea.'" class="form-control" placeholder="" onKeyPress="return soloNumeros(event);" onchange="nipBlock('.$i.');" /></td>';?>
							<td>
								<?php echo '<select class="form-control" id="operador_'.$nlinea.'">'; ?>
									<option value=""></option>
									<option value="TIGO">TIGO</option>
									<option value="CLARO">CLARO</option>
									<option value="MOVISTAR">MOVISTAR</option>
									<option value="UFF">UFF</option>
									<option value="UNE">UNE</option>
									<option value="ETB">ETB</option>
									<option value="ÉXITO">ÉXITO</option>
									<option value="VIRGIN">VIRGIN</option>
									<option value="VILLACOM">VILLACOM </option>
									<option value="SCARLET">SCARLET</option>
									<option value="AVANTEL">AVANTEL</option>
								</select>
							</td>
						</tr>
						<tr>
							<th>TIPO DE SERVICIO</th>
							<td>VALOR PLAN</td>
							<th>INFORMACION DEL PLAN</th>
							<th>SERVICIO</th>
						</tr>
						
						<tr>
							
							<td>
								<?php echo '<select class="form-control" onchange="tipservice('.$i.');" id="tipservice'.$i.'">'; ?>
									<option value=""></option>
									<option value="PERSONALES">PERSONALES</option>
									<option value="INTERNET MOVIL">INTERNET MOVIL</option>
									<option value="CORPORATIVO">CORPORATIVO</option>
								</select>
							</td>
							<td>
								<?php echo '<select class="form-control" onchange="planservice('.$i.');" id="planservice'.$i.'">'; ?>
								</select>
							</td>
							<?php echo '<td><input type="tetx" class="form-control" placeholder="" id="infoservice'.$i.'" readonly onKeyUp="aMayusculas(this.value,this.id)"/></td>'; ?>
							<?php echo '<td><input type="tetx" class="form-control" placeholder="" id="service'.$i.'" readonly onKeyUp="aMayusculas(this.value,this.id)"/></td>';?>
						</tr>
						<tr>
							<th>FECHA DE VENTA</th>
							<th colspan="2">OBSERVACIONES</th>
							<th>NOMBRE DEL ASESOR</th>
						</tr>
						<tr>
							 <?php echo '<td><input type="date" id="fecha_venta_'.$i.'" class="form-control" placeholder="" /></td>'; ?>
						
							<td colspan="2">
								<?php echo '<textarea id="obs_'.$i.'" style="width:98%;" class="form-control" onKeyUp="aMayusculas(this.value,this.id)"></textarea></td>'; 
								echo '<td><input type="text" id="asesor_'.$nlinea.'" class="form-control" placeholder="" value="'.$_SESSION['nombre'].' '.$_SESSION['apellido'].'" readonly /></td>'; ?>
						</tr>
					</table>
				</div>
			</td>
		</tr>
		<?php } ?>
      </tbody>
    </table>
  </div>
</form>
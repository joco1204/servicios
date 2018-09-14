<?php 
	require_once('../../src/connect.php'); 
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="es" xml:lang="es">
<head>
	<title>Reportes BPO</title>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
	<meta name="title" content="" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="CDO" />
<script>
	function cambiarServ(){
		var empresa = $("#empresa").val();
		$.ajax({
			type: "POST",
			url: 'reportes/lista_servicios.php',
			dataType: 'json',
			data: "id_emp="+empresa, // appears as $_GET['id'] @ your backend side
			beforeSend: function() {
					//$('#summary111').html('checking');
			},
			complete: function() {},
			success: function(html) {
					var cadena="<option value='' selected></option>";
					$.each(html, function(index,valor) {
						cadena  = cadena +"<option value='"+index +"'>"+valor +"</option>";
					});
					$('#servicio').find('option').remove().end();
					$('#servicio').append(cadena);
			}
		});
	}

	function descargar(){
		var error="";
		var fecini = $("#datepicker").val();
		var fecfin = $("#datepicker1").val();
		var empresa = $("#empresa").val();
		var servicio = $("#servicio").val();
		
		if (fecini==''){error="Fecha Inicio\n";}
		if (fecfin==''){error=error+"Fecha Fin\n";}
		if (empresa==''){error=error+"Empresa\n";}
		if (servicio==''){error=error+"Servicio\n";}
		
		if (error==""){
			document.location.href = "reportes/reporte_general.php?fecini="+fecini+ "&fecfin="+fecfin+"&servicio="+servicio;
			return true;
		}else{
			alert("Campos Vacios\n"+error);
			return false;
		}
		
	}
	function download_report(modal_id,url){
		var fini = $("#fecini"+modal_id).val();
		var ffin = $("#fecfin"+modal_id).val();
		document.location.href = "reportes/"+url+".php?fecini="+fini+ "&fecfin="+ffin;
		
	}
    </script>
	
<style type="text/css">
#global {
	height: 600px;
	width: 100%;
	border: 1px solid #ddd;
	background: #f1f1f1;
	overflow-y: scroll;
}
#mensajes {
	height: auto;
}
.texto {
	padding-top:6px;
	padding-left:1px;
	background:#ccc;
}
.lineas_report{
	padding-top:6px;
	padding-bottom:6px;
	padding-left:1px;
	//background:#fff;
	cursor:pointer;	
	width:95%;
	text-align: left;
}
</style>	
</head>
<body align="center">
	
	<div class="container">
		<div class="row">
			<div class="span6" align="left">
				<div id="global">
				  <div id="mensajes"> <h3 align="l">REPORTES ESPECIFICOS</h3>
					<?php
					$sql = "SELECT report,modal_id FROM  crmconf_reportes where estado=1 order by report";
					foreach($pdo->query($sql) as $row){
						echo '<div class="texto"><li class="lineas_report btn btn-info btn-lg" data-toggle="modal" data-target="#'.$row['modal_id'].'">'.$row['report'].'</i></li></div>';
					}
					?>
					
				  </div>
				</div>
			</div>	
			<div class="span10" align="center">
				<div class="row">
					<div class="span8" align="center">
						<img src="../images/LOGOSIN_NIT.png" width="200px" alt="Logo Demos" />
					</div>
				</div>
				<hr />
				<div class="row">
					<div class="span8" align="center">
						<h3> REPORTE GESTION</h3>
					</div>
				</div>
				<div class="row">
					<div class="span8">
					</div>
					<div class="span4">
						<label> Empresa:</label>
					</div>
					<div class="span4">
						<label> Servicio:</label>
					</div>
				</div>
				<div class="row">
					<div class="span8">
					</div>
					<div class="span4">
						<select id="empresa" onchange="cambiarServ();">
						<option value=""></option>
						<?php
						$sql = "SELECT * from crmpa_empresa";
						foreach($pdo->query($sql) as $row){
						echo '<option value="'.$row['id'].'">'.$row['nombre'].'</option>';
						}
						?>
						</select>
					</div>
					<div class="span4">
						<select id="servicio">
						</select>
					</div>
				</div>
				<br />
				<div class="row">
					<div class="span8">
					</div>
					<div class="span4">
						Seleccionar Fecha Inicial:
					</div>
					<div class="span4">
						Seleccionar Fecha Inicial:
					</div>
				</div>
				<br />
				<div class="row">
					<div class="span8">
					</div>
					<div class="span4">
						<input type="date" name="datepicker" id="datepicker"  size="12" />
					</div>
					<div class="span4">
						<input type="date" name="datepicker1" id="datepicker1" size="12" />
					</div>
				</div>
				<br />
				<div class="row">
					<div class="span8">
					</div>
					<div class="span8">
						<button class="span8" type="submit" onclick="descargar();">Descargar</button>
					</div>
				</div>
			</div>	
			
		</div>	
    </div>
<?php
$sql = "SELECT report,modal_id,url FROM  crmconf_reportes where estado=1 order by report";
foreach($pdo->query($sql) as $row){
	
?>
<div id="<?php echo $row['modal_id']?>" class="modal fade" role="dialog">
  
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header text-center bg-green">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title text-center"><b><?php echo $row['report'];?></b></h4>
                </div>
                <div class="modal-body">
                    <div class="row">
					<div class="span3">
						Seleccionar Fecha Inicial:
					</div>
					<div class="span1">
					</div>
					<div class="span3">
						Seleccionar Fecha Inicial:
					</div>
				</div>
				<br />
				<div class="row">
					<div class="span3">
						<input type="date" name="" id="fecini<?php echo $row['modal_id'];?>"  size="12" />
					</div>
					<div class="span1">
					</div>
					<div class="span3">
						<input type="date" name="" id="fecfin<?php echo $row['modal_id'];?>" size="12" />
					</div>
				</div>
                </div>
                <div class="modal-footer">
					<?php
						$mid=$row['modal_id'];
						$url=$row['url'];
					?>
                    <button type="button" onclick="download_report('<?php echo $mid;?>','<?php echo $url;?>')" class="btn btn-primary">Load</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    
</div>		
<?php
}
?>
</body>
</html>


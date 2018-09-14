<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script>
function initMenu() {
    $(".sub-menu").hide();
    $(".current_page_item .sub-menu").show();
    $('#menu li a').click(

    function() {
        var checkElement = $(this).next();
        if ((checkElement.is('ul')) && (checkElement.is(':visible'))) {
            return false;
        }
        if ((checkElement.is('ul')) && (!checkElement.is(':visible'))) {
            console.log(checkElement.parentsUntil('#menu'));
            $('#menu ul:visible').not(checkElement.parentsUntil('#menu')).slideUp('normal');
            checkElement.slideDown('normal');
            return false;
        }
    });
}

$(function() {
    initMenu();
});
</script>
<style>

.level1{
	list-style-type: none;
    margin: 8px;
    padding: 8px;
	background-color:#CCC;
}
.level2{
	list-style-type: none;
    margin: 8px;
    padding: 8px;
	background-color:#FFF;
}
.level3{
	list-style-type: none;
    margin: 8px;
    padding: 8px;
	background-color:#CCC;
}
.level4{
	list-style-type: none;
    margin: 8px;
    padding: 8px;
	background-color:#FFF;
}
	
</style>
<?php
$areasel=$_GET['areaW'];
if ($areasel==1){
	$selarea=2;
}else{
	$selarea=1;
}  
session_start();
$begin_level_des='<a href="#"><span class="badge badge-info" style="width: 100%"><i class="fa fa-arrow-circle-o-down"></i> ';
$begin_level_seg='<a href="#"><span class="badge badge-success" style="width: 100%"><i class="fa fa-arrow-circle-o-right"></i> ';
$end_level_des='</span></a>';
$end_level_seg='</span></a></li>';
?>
<ul id="menu" class="menu">
	<li class="level1"><?php echo $begin_level_des." CONTESTA".$end_level_des; ?>
		<ul class="sub-menu">
			<li class="level2"><?php echo $begin_level_des." CONTACTO NO UTIL".$end_level_des; ?>
				<ul class="sub-menu">
					<li class="level3" onclick="nvalid('TELEFONO ERRADO',0,0,0);"><?php echo $begin_level_seg." TELEFONO ERRADO".$end_level_seg; ?>
					<li class="level3" onclick="nvalid('FUERA DEL PAIS',0,0,0);"><?php echo $begin_level_seg." FUERA DEL PAIS".$end_level_seg; ?>
					<li class="level3" onclick="nvalid('FALLECIDO',0,0,0);"><?php echo $begin_level_seg." FALLECIDO".$end_level_seg; ?>
				</ul>
			</li>
			<li class="level2"><?php echo $begin_level_des." CONTACTO UTIL".$end_level_des; ?>
				<ul class="sub-menu">
					<li class="level3" onclick="nventa(<?php echo $selarea;?>);"><?php echo $begin_level_seg." VENTA".$end_level_seg; ?>
					<li class="level3"><?php echo $begin_level_des." VOLVER A LLAMAR".$end_level_des; ?>
						<ul class="sub-menu">
							<li class="level4" data-toggle="modal" data-target="#Masesor" ><?php echo $begin_level_seg." MISMO ASESOR".$end_level_seg; ?>
							<li class="level4" data-toggle="modal" data-target="#Oasesor" ><?php echo $begin_level_seg." OTRO ASESOR".$end_level_seg; ?>
						</ul>
					</li>
					<li class="level3" onclick="nvalid('FUERA DE COBERTURA',0,0,0);"><?php echo $begin_level_seg." FUERA DE COBERTURA".$end_level_seg; ?>
					<li class="level3"><?php echo $begin_level_des." NO INTERESADO".$end_level_des; ?>
						<ul class="sub-menu">
							<li class="level4" onclick="nvalid('NO COMPRA POR TELEFONO',0,0,0);"><?php echo $begin_level_seg." NO COMPRA POR TELEFONO".$end_level_seg; ?>
							<li class="level4" onclick="nvalid('FIDELIDAD OTRO OPERADOR',0,0,0);"><?php echo $begin_level_seg." FIDELIDAD OTRO OPERADOR".$end_level_seg; ?>
							<li class="level4" onclick="nvalid('MALA EXPERIENCIA',0,0,0);"><?php echo $begin_level_seg." MALA EXPERIENCIA".$end_level_seg; ?>
							<li class="level4" onclick="nvalid('SIN COBERTURA',0,0,0);"><?php echo $begin_level_seg." SIN COBERTURA".$end_level_seg; ?>
							<li class="level4" onclick="nvalid('MALA REFERENCIA',0,0,0);"><?php echo $begin_level_seg." MALA REFERENCIA".$end_level_seg; ?>
							<li class="level4" onclick="nvalid('MOVIL 3G',0,0,0);"><?php echo $begin_level_seg." MOVIL 3G".$end_level_seg; ?>
							<li class="level4" onclick="nvalid('DESCONFIA',0,0,0);"><?php echo $begin_level_seg." DESCONFIA".$end_level_seg; ?>
							<li class="level4" onclick="nvalid('POCO INTERNET',0,0,0);"><?php echo $begin_level_seg." POCO INTERNET".$end_level_seg; ?>
							<li class="level4" onclick="nvalid('POCOS MINUTOS',0,0,0);"><?php echo $begin_level_seg." POCOS MINUTOS".$end_level_seg; ?>
							<li class="level4" onclick="nvalid('ES UN USUARIO PREPAGO',0,0,0);"><?php echo $begin_level_seg." ES UN USUARIO PREPAGO".$end_level_seg; ?>
							<li class="level4" onclick="nvalid('SCORING NEGATIVO',0,0,0);"><?php echo $begin_level_seg." SCORING NEGATIVO".$end_level_seg; ?>
							<li class="level4" onclick="nvalid('NO ES EL DUEÑO DE LA LINEA',0,0,0);"><?php echo $begin_level_seg." NO ES EL DUEÑO DE LA LINEA".$end_level_seg; ?>
							<li class="level4" onclick="nvalid('SALE DEL PAIS',0,0,0);"><?php echo $begin_level_seg." SALE DEL PAIS".$end_level_seg; ?>
							<li class="level4" onclick="nvalid('CUELGA',0,0,0);"><?php echo $begin_level_seg." CUELGA".$end_level_seg; ?>
							<li class="level4" onclick="nvalid('NO ES EL TITULAR',0,0,0);"><?php echo $begin_level_seg." NO ES EL TITULAR".$end_level_seg; ?>
							<li class="level4" onclick="nvalid('LINEA CORPORATIVA',0,0,0);"><?php echo $begin_level_seg." LINEA CORPORATIVA".$end_level_seg; ?>
						</ul>
					</li>
				</ul>
			</li>
		</ul>
	</li>

	<li class="level1"><?php echo $begin_level_des." NO CONTESTA".$end_level_des; ?>
		<ul class="sub-menu">
			<li class="level2" onclick="nvalid('NO CONTESTA',0,0,0);"><?php echo $begin_level_seg." NO CONTESTA".$end_level_seg; ?>
			<li class="level2" onclick="nvalid('BUZON DE VOZ',0,0,0);"><?php echo $begin_level_seg." BUZON DE VOZ".$end_level_seg; ?>
			<li class="level2" onclick="nvalid('TELEFONO NO EXISTE',0,0,0);"><?php echo $begin_level_seg." TELEFONO NO EXISTE".$end_level_seg; ?>
			<li class="level2" onclick="nvalid('TELEFONO SUSPENDIDO',0,0,0);"><?php echo $begin_level_seg." TELEFONO SUSPENDIDO".$end_level_seg; ?>
			<li class="level2" onclick="nvalid('TELEFONO APAGADO',0,0,0);"><?php echo $begin_level_seg." TELEFONO APAGADO".$end_level_seg; ?>
		</ul>
	</li>
</ul>

<div id="Oasesor" class="modal fade" role="dialog">
    <form id="load_file_awb">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header text-center bg-green">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title text-center"><b>LOAD FILE AWB</b></h4>
                </div>
                <div class="modal-body">
                    
                        
                            <div class="form-group has-feedback">
                                <label for="file_awb">Fecha</label>
                                <input type="date" class="form-control" name="date1" id="date2">
								<input type="time" class="form-control" name="time1" id="time2">
                            </div>
                        
                    
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" onclick="ncallback2('OTRO ASESOR',2);">OTRO ASESOR</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </form>   
</div>
			
<div id="Masesor" class="modal fade" role="dialog">
    <form id="load_file_awb">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header text-center bg-green">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title text-center"><b>LOAD FILE AWB</b></h4>
                </div>
                <div class="modal-body">
                    
                        
                            <div class="form-group has-feedback">
                                <label for="file_awb">Fecha</label>
                                <input type="date" class="form-control" name="date1" id="date1">
								<input type="time" class="form-control" name="time1" id="time1">
                            </div>
                        
                    
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" onclick="ncallback1('MISMO ASESOR',1);">MISMO ASESOR</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </form>   
</div>
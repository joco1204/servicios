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

function valid_cumple(){
	var falta=0;
	if (!$("#check1").is(":checked")) {
		falta++;
	}
	if (!$("#check2").is(":checked")) {
		falta++;
	}
	if (!$("#check3").is(":checked")) {
		falta++;
	}
	if (!$("#check4").is(":checked")) {
		falta++;
	}
	if (!$("#check5").is(":checked")) {
		falta++;
	}
	
	if (falta == 0){
		$("#cumple_mod1").show();
		$("#ncumple_mod1").hide();
	}else{
		$("#ncumple_mod1").show();
		$("#cumple_mod1").hide();
	}
	
}
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

input[type=checkbox] {
    padding-left:5px;
    padding-right:5px;
    border-radius:15px;

    -webkit-appearance:button;

    //border:  1px #00F;

    background-color:yellow;
    color:#FFF;
    white-space: nowrap;
    overflow:hidden;

    width:25px;
    height:25px;
}

input[type=checkbox]:checked {
    background-color:blue;
    border-left-color:#06F;
    border-right-color:#06F;
}

input[type=checkbox]:hover {
    box-shadow:0px 0px 10px #1300ff;
}	
</style>
<?php
$begin_level_des='<a href="#"><span class="badge badge-info" style="width: 100%"><i class="fa fa-arrow-circle-o-down"></i> ';
$begin_level_seg='<a href="#"><span class="badge badge-success" style="width: 100%"><i class="fa fa-arrow-circle-o-right"></i> ';
$begin_level_dan='<a href="#"><span class="badge badge-warning" style="width: 100%"><i class="fa fa-arrow-circle-o-right"></i> ';
$begin_level_val='<a href="#" ><span class="badge badge-primary" style="width: 90%;padding-top: 12px;padding-bottom: 12px;"><i class="fa fa-arrow-circle-o-right"></i> ';
$end_level_des='</span></a>';
$end_level_seg='</span></a></li>';
$end_level_dan='</span></a></li>';
$end_level_val='</span></a></li>';

?>
<ul id="menu" class="menu">
	<li class="level1"><?php echo $begin_level_des." CUMPLIO".$end_level_des; ?>
		<ul class="sub-menu">
			<li class="level1" onclick="valid_cumple();"><?php echo $begin_level_val." VALOR PLAN <input type='checkbox' id='check1'>".$end_level_val; ?>
			<li class="level1" onclick="valid_cumple();"><?php echo $begin_level_val." CEDULAS <input type='checkbox' id='check2'>".$end_level_val; ?>
			<li class="level1" onclick="valid_cumple();"><?php echo $begin_level_val." CONTRATO <input type='checkbox' id='check3'>".$end_level_val; ?>
			<li class="level1" onclick="valid_cumple();"><?php echo $begin_level_val." F.PORTABILIDAD <input type='checkbox' id='check4'>".$end_level_val; ?>
			<li class="level1" onclick="valid_cumple();"><?php echo $begin_level_val." F. PROMOCION <input type='checkbox' id='check5'>".$end_level_val; ?>
			<li class="level1"><?php echo $begin_level_val." PAGARE <input type='checkbox'>".$end_level_val; ?>
			<li class="level1"><?php echo $begin_level_val." CAMARA DE COMERCIO <input type='checkbox'>".$end_level_val; ?>
			<div id="cumple_mod1" style="display:none;"><li class="level2" onclick="nvalid('DOC COMPLETA',1,'SI');"><?php echo $begin_level_seg." DOC. COMPLETA".$end_level_seg; ?></div>
			<div id="ncumple_mod1" style="display:none;"><li class="level2" onclick="nvalid('DOC INCOMPLETA',1,'NO');"><?php echo $begin_level_dan." DOC. INCOMPLETA".$end_level_dan; ?></div>
		</ul>
	</li>
	<li class="level1"><?php echo $begin_level_des." INCUMPLIO".$end_level_des; ?>
		<ul class="sub-menu">
			<li class="level2"><?php echo $begin_level_des." REAGENDAR".$end_level_des; ?>
				<ul class="sub-menu">
					<li class="level3" onclick="nvalid('ASESOR',1,'NO');"><?php echo $begin_level_seg." ASESOR".$end_level_seg; ?>
					<li class="level3" onclick="nvalid('SUPERVISOR',1,'NO');"><?php echo $begin_level_seg." SUPERVISOR".$end_level_seg; ?>
				</ul>
			</li>
			<li class="level2"><?php echo $begin_level_des." DECLINADO".$end_level_des; ?>
				<ul class="sub-menu">
					<li class="level3" onclick="nvalid('DIRECCION ERRADA',1,'NO');"><?php echo $begin_level_seg." DIRECCION ERRADA".$end_level_seg; ?>
					<li class="level3" onclick="nvalid('INCUMPLIMIENTO CITAS',1,'NO');"><?php echo $begin_level_seg." INCUMPLIMIENTO CITAS".$end_level_seg; ?>
					<li class="level3" onclick="nvalid('MALA INFORMACION',1,'NO');"><?php echo $begin_level_seg." MALA INFORMACION".$end_level_seg; ?>
				</ul>
			</li>
			<li class="level2"><?php echo $begin_level_des." DESISTE".$end_level_des; ?>
				<ul class="sub-menu">
					<li class="level3" onclick="nvalid('PRECIO ALTO',1,'NO');"><?php echo $begin_level_seg." PRECIO ALTO".$end_level_seg; ?>
					<li class="level3" onclick="nvalid('SIN DINERO',1,'NO');"><?php echo $begin_level_seg." SIN DINERO".$end_level_seg; ?>
					<li class="level3" onclick="nvalid('INFO ERRADA',1,'NO');"><?php echo $begin_level_seg." INFO ERRADA".$end_level_seg; ?>
					<li class="level3" onclick="nvalid('PROCESO OTRO CANAL',1,'NO');"><?php echo $begin_level_seg." PROCESO OTRO CANAL".$end_level_seg; ?>
					<li class="level3" onclick="nvalid('NO INTERESADO',1,'NO');"><?php echo $begin_level_seg." NO INTERESADO".$end_level_seg; ?>
					<li class="level3" onclick="nvalid('MEJOR OFERTA',1,'NO');"><?php echo $begin_level_seg." MEJOR OFERTA".$end_level_seg; ?>
				</ul>
			</li>
		</ul>
	</li>
</ul>


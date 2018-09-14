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
$begin_level_val='<a href="#" ><span class="badge badge-primary" style="width: 90%;padding-top: 12px;padding-bottom: 12px;"><i class="fa fa-arrow-circle-o-right"></i> ';
$end_level_des='</span></a>';
$end_level_seg='</span></a></li>';
$end_level_val='</span></a></li>';
?>
<ul id="menu" class="menu">
	<li class="level1" onclick="nvalid_paso2('APROBADO',2,'SI');"><?php echo $begin_level_seg." APROBADO".$end_level_seg; ?>
	<li class="level1"><?php echo $begin_level_des." PENDIENTE".$end_level_des; ?>
		<ul class="sub-menu">
			<li class="level2" onclick="nvalid('HONONIMO',2,'NO');"><?php echo $begin_level_seg." HONONIMO".$end_level_seg; ?>
			<li class="level2" onclick="nvalid('ERROR FACTURA',2,'NO');"><?php echo $begin_level_seg." ERROR FACTURA".$end_level_seg; ?>
			<li class="level2" onclick="nvalid('VOLVER A LLAMAR',2,'NO');"><?php echo $begin_level_seg." VOLVER A LLAMAR".$end_level_seg; ?>
			<li class="level2" onclick="nvalid('NO CONTESTA',2,'NO');"><?php echo $begin_level_seg." NO CONTESTA".$end_level_seg; ?>
		</ul>
	</li>
	<li class="level1"><?php echo $begin_level_des." RECHAZADO".$end_level_des; ?>
		<ul class="sub-menu">
			<li class="level2" onclick="nvalid('DESISTE',2,'NO');"><?php echo $begin_level_seg." DESISTE".$end_level_seg; ?>
			<li class="level2" onclick="nvalid('SCORE NEGATIVO',2,'NO');"><?php echo $begin_level_seg." SCORE NEGATIVO".$end_level_seg; ?>
			<li class="level2" onclick="nvalid('STC',2,'NO');"><?php echo $begin_level_seg." STC".$end_level_seg; ?>
		</ul>
	</li>
</ul>


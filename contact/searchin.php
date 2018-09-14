<?php
require_once('../src/connect.php'); 
$pdate= date("Y/m/d H:i:s");
session_start();

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>CRM AMERICAN BPO</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="layout" content="main"/>
	<script type="text/javascript" src="http://www.google.com/jsapi"></script>
	<script src="../js/jquery/jquery-1.8.2.min.js" type="text/javascript" ></script>
	<link href="../css/customize-template.css" type="text/css" media="screen, projection" rel="stylesheet" />
	<style>
		#body-content { padding-top: 40px;}
	</style>
</head>
<body>
<div class="navbar navbar-fixed-top">
	<div class="navbar-inner">
		<div class="container">
			<button class="btn btn-navbar" data-toggle="collapse" data-target="#app-nav-top-bar">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<div id="app-nav-top-bar" class="nav-collapse">
				<ul class="nav pull-right">
					<li>
						<a href="../index.php">Logout</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div id="body-container">
	<div id="body-content">
		<section class="nav nav-page">
			<div class="container">
				<div class="row">
					<div class="span7">
						<header class="page-header">
							<h3>AMERICAN CENTER BPO <br/>
								<small>CRM ACSOIN</small>
							</h3>
						</header>
					</div>
					<div class="page-nav-options">
						<div class="span9" align="right">
							<a href="#"><img src="../images/LOGOSIN_NIT.PNG" alt="" width="80px"></a>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="page container">
			<div class="row">
				<div class="span4">
					<input type="hidden" value="<?php echo $_GET['idserv'];?>" id="d3"/>
					<select id="d1">
						<option value="0"></option>
						<option value="1">DOCUMENTO</option>
						<option value="2">ID BPO</option>
					</select>
				</div>
				<div class="span4">
					<input type="text" id="d2"/>
				</div>
				<div class="span4">
					<button type="button" class="btn btn-lg" id="btn_search"><span class="icon-search"></span>SEARCH</button>
				</div>
				<div class="span4">
					<div class="opciones" align="right">
						<div class="dropdown" align="right">
							<button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Opciones Agente
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu dropdown-menu-left" style="margin-left:70%;text-align:left;">
								<li class="dropdown-header icon-retweet icon-large"> Estados</li>
								<li class="divider"></li>
								<li><a href="#" onclick="window.location='control_estado.php?new_est=bre';">Break</a></li>
								<li><a href="#" onclick="window.location='control_estado.php?new_est=alm';">Almuerzo</a></li>
								<li><a href="#" onclick="window.location='control_estado.php?new_est=ban';">Baño</a></li>
								<li><a href="#" onclick="window.location='control_estado.php?new_est=cap';">Capacitación</a></li>
								<li class="divider"></li> 
								<li class="dropdown-header icon-pushpin icon-large"> Opciones</li>
								<li><a href="#" onclick="window.location='control.php';">Atrás</a></li>
								<li class="divider"></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section>	
		<div class="row">
			<div class="span2" id="busqueda" >
			</div>
			<div class="span12" id="busqueda" >
			</div>
			<div class="span2" id="busqueda" >
			</div>
		</div>
	</section>

	<div id="spinner" class="spinner" style="display:none;">
		Loading&hellip;
	</div>

	<footer class="application-footer">
		<div class="container">
			<p>AMERICAN BPO</p>
			<div class="disclaimer">
				<p>Copyright © Acosin</p>
			</div>
		</div>
	</footer>
</div>
<script src="../js/bootstrap/bootstrap-transition.js" type="text/javascript" ></script>
<script src="../js/bootstrap/bootstrap-alert.js" type="text/javascript" ></script>
<script src="../js/bootstrap/bootstrap-modal.js" type="text/javascript" ></script>
<script src="../js/bootstrap/bootstrap-dropdown.js" type="text/javascript" ></script>
<script src="../js/bootstrap/bootstrap-scrollspy.js" type="text/javascript" ></script>
<script src="../js/bootstrap/bootstrap-tab.js" type="text/javascript" ></script>
<script src="../js/bootstrap/bootstrap-tooltip.js" type="text/javascript" ></script>
<script src="../js/bootstrap/bootstrap-popover.js" type="text/javascript" ></script>
<script src="../js/bootstrap/bootstrap-button.js" type="text/javascript" ></script>
<script src="../js/bootstrap/bootstrap-collapse.js" type="text/javascript" ></script>
<script src="../js/bootstrap/bootstrap-carousel.js" type="text/javascript" ></script>
<script src="../js/bootstrap/bootstrap-typeahead.js" type="text/javascript" ></script>
<script src="../js/bootstrap/bootstrap-affix.js" type="text/javascript" ></script>
<script src="../js/bootstrap/bootstrap-datepicker.js" type="text/javascript" ></script>
<script src="../js/jquery/jquery-tablesorter.js" type="text/javascript" ></script>
<script src="../js/jquery/jquery-chosen.js" type="text/javascript" ></script>
<script src="../js/jquery/virtual-tour.js" type="text/javascript" ></script>
<script type="text/javascript">
$(function() {
$('#sample-table').tablesorter();
$('#datepicker').datepicker();
$(".chosen").chosen();
$('#btn_search').click(function(e){
var dt1=$("#d1").val();
var dt2=$("#d2").val();
var dt3=$("#d3").val();
$("#busqueda").load('cl_search.php?d1='+dt1+'&d2='+dt2+'&d3='+dt3);
});

});

</script>

</body>
</html>
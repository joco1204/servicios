<?php 
$idserv=$_GET['idserv'];
$pdate_ini=$_GET['pdate'];
require_once('../src/connect.php'); 
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
    <link href="../css/customize-templateContact.css" type="text/css" media="screen, projection" rel="stylesheet" />

    <style>
        #body-content { 
			padding-top: 40px;
			font-size:12px;
		}
    </style>
	<script>
	
		function nvalid(tipif,mod,next){
			var date_ini = $('#pdate_ini').val();
			var fec_rec = $('#fecha_recibido_mod1').val();
			var back = 0;
			var obs = 0;
			if(mod==1){
				fec_rec = $('#fecha_recibido_mod1').val();
				back = $('#back_mod1').val();
				obs = $('#obs_mod1').val();
				alert(fec_rec+' 1');
			}
			if(mod==3){
				fec_rec = $('#fecha_recibido_mod3').val();
				back = $('#back_mod3').val();
				obs = $('#obs_mod3').val();
				alert(fec_rec+' 3');
			}			
			
			
			$.ajax({
				type: "POST",
				url: 'savetipifsimple.php',
				dataType: 'json',
				//data: "id_dpt="+depto, // appears as $_GET['id'] @ your backend side
				data: {
					idcl: jscrpt_cl,
					sercl: jscrpt_serv,
					tipifcl: tipif,
					date_inicl: date_ini,
					id_mod:jscrpt_mod,
					paso: mod,
					fec_rec_bck:fec_rec,
					back_bck:back,
					obs_bck:obs,
					next_bck:next,
					
				},
				beforeSend: function() {
						//$('#summary111').html('checking');
				},
				complete: function() {},
				success: function(html) {
					window.location="connect.php?idserv="+jscrpt_cl+"&pdate="+html;
				}
			});
			
		}
		function nvalid_paso2(tipif,mod,next){
			var num_line = $('#nlineas').val();
			var date_ini = $('#pdate_ini').val();
			var fec_rec = $('#fecha_recibido_mod2').val();
			var back = $('#back_mod2').val();
			var obs = $('#obs_mod2').val();
			var arraylimites = {};
			var n1="";
			var n2="";
			var n3="";
			var n4="";
			var n5="";
			var n6="";
			var n7="";
			var n8="";
			var n9="";
			var pos_array=0;
			arraylimites['lineascl'] = num_line;
			arraylimites['idcl'] = jscrpt_cl;
			arraylimites['sercl'] = jscrpt_serv;
			arraylimites['tipifcl'] = tipif;
			arraylimites['date_inicl'] = date_ini;
			arraylimites['id_mod'] = jscrpt_mod;
			arraylimites['paso'] = mod;
			arraylimites['fec_rec_bck'] = fec_rec;
			arraylimites['back_bck'] = back;
			arraylimites['obs_bck'] = obs;
			arraylimites['next_bck'] = next;
			for (i = 1; i <= num_line; i++) {
					n1= $('#sim_'+i).val();
					n2= $('#evidente_'+i).val();
					n3= $('#asignado_'+i).val();
					n4= $('#anexo_'+i).val();
					
					arraylimites['sim'+i] = n1;
					pos_array++;
					arraylimites['evidente'+i] = n2;
					pos_array++;
					arraylimites['asignado'+i] = n3;
					pos_array++;
					arraylimites['anexo'+i] = n4;
					pos_array++;
					if (i >= 6){
						n5= $('#oportunidad_'+i).val();
						arraylimites['oportunidad'+i] = n5;
						pos_array++;
						n6= $('#compra_'+i).val();
						arraylimites['compra'+i] = n6;
						pos_array++;
						n7= $('#cotizacion_'+i).val();
						arraylimites['cotizacion'+i] = n7;
						pos_array++;
						n8= $('#fca_'+i).val();
						arraylimites['fca'+i] = n8;
						pos_array++;
						n9= $('#fce_'+i).val();
						arraylimites['fce'+i] = n9;
						pos_array++;
					}
					
			}
			
			$.ajax({
				type: "POST",
				url: 'savetipifaprobado.php',
				dataType: 'json',
				data: arraylimites,
				beforeSend: function() {
						//$('#summary111').html('checking');
				},
				complete: function() {},
				success: function(html) {
					window.location="connect.php?idserv="+jscrpt_cl+"&pdate="+html;
				}
			});
			
		}		
		function soloNumeros(e){
			var key = window.Event ? e.which : e.keyCode
			return (key >= 48 && key <= 57)
		}
		$( document ).ready(function() {
			var clsel = $('#cl_sel').val();
			var servsel = $('#ser_sel').val();
		});
		
		function workarea(area,page){
			var clsel = $('#cl_sel').val();
			var servsel = $('#ser_sel').val();
			$('#worka'+area).load(page+'.php?cl='+clsel+'&serv='+servsel);
			$('#modulo_n1').hide('');
			$('#modulo_n2').hide('');
			$('#modulo_n3').hide('');
		}
		function char10_7(obj1,obj2){
			alert(obj1);
			alert(obj2);
			var lon = $('#'+obj2).val();
			if (lon >= 2 ){
				return false
			}else{
				return true
			}
			
		}
		jscrpt_cl=0;
		jscrpt_mod=0;
		jscrpt_serv=0;
		function temp_info_in(idcl,idmod,idserv){
			jscrpt_cl=idcl;
			jscrpt_mod=idmod;
			jscrpt_serv=idserv;
		}
		
		
		function modDiv(area,page,cl,calif,id_modulo){
			
			var servsel = $('#ser_sel').val();
			temp_info_in(cl,id_modulo,servsel);
			if (page==1){
				if( $('#modulo_n1').is(":visible") ){
					$('#modulo_n1').hide('');
					$('#modulo_n2').hide('');
					$('#modulo_n3').hide('');
				}else{
					$('#workma3').load('modulo'+page+'.php?serv='+servsel+'&idcl='+cl+'&idcalif='+calif);
					$('#modulo_n1').show('');
					$('#modulo_n2').hide('');
					$('#modulo_n3').hide('');
				}
			}
			if (page==2){
				if( $('#modulo_n2').is(":visible") ){
					$('#modulo_n1').hide('');
					$('#modulo_n2').hide('');
					$('#modulo_n3').hide('');
				}else{
					$('#workmb3').load('modulo'+page+'.php?serv='+servsel+'&idcl='+cl+'&idcalif='+calif);
					$('#modulo_n2').show('');
					$('#modulo_n1').hide('');
					$('#modulo_n3').hide('');
				}
			}
			if (page==3){
				if( $('#modulo_n3').is(":visible") ){
					$('#modulo_n1').hide('');
					$('#modulo_n2').hide('');
					$('#modulo_n3').hide('');
				}else{
					$('#workmc3').load('modulo'+page+'.php?serv='+servsel+'&idcl='+cl+'&idcalif='+calif);
					$('#modulo_n3').show('');
					$('#modulo_n1').hide('');
					$('#modulo_n2').hide('');
				}
			}
		}
		function aMayusculas(obj,id){
			obj = obj.toUpperCase();
			document.getElementById(id).value = obj;
		}
		
		function menu_bandeja(item){
			var sersel = $('#ser_sel').val();
			$('#tab-content-bandeja').load('bandeja'+item+'.php?servid='+sersel);
			$('#worka2').load('tipif'+item+'.php');
			$('#modulo_n1').hide('');
			$('#modulo_n2').hide('');
			$('#modulo_n3').hide('');
		}
	</script>
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
						<!-- <li>
								<a href='#' style='background-color:#36a1d9;border: 1px solid #db7038; display: inline-block;'> -->
									<input type='hidden' id='ser_sel' value="<?php echo $idserv; ?>">
									<input type='hidden' id='pdate_ini' value="<?php echo $pdate_ini; ?>">
									<!-- <input type='hidden' id='cl_sel'> 
								</a></li>-->
							<li> 
                                <a href="../index.php" style='background-color:#36a1d9;border: 1px solid #db7038; display: inline-block;'>Logout</a>
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
            <!--<div class="span3">
                <div class="box">
                    <div class="box-content">

                    </div>
                </div>
            </div>-->
            
            <div class="span16">
                <div class="row">
                    <div class="span8">
                        <div class="box">
                            <div class="box-header">
                                <i class="icon-bar-chart"></i>
                                <h5>Bandeja casos</h5>
                            </div>
                            <div class="box-content">
                                <div id="worka1">
								<?php
								$sql = "select count(paso_now) cnt,paso_now from crmpa_modulo_1 group by paso_now;";
								$npasos1=0;
								$npasos2=0;
								$npasos3=0;
								foreach($pdo->query($sql) as $row){
									if ($row['paso_now']==1){
										$npasos1=$row['cnt'];
									}
									if ($row['paso_now']==2){
										$npasos2=$row['cnt'];
									}
									if ($row['paso_now']==3){
										$npasos3=$row['cnt'];
									}
									
								}
								?>
									<ul class="nav nav-pills ">
										<!-- <li class="active"> -->
										<li>
											<a data-toggle="tab" onclick="menu_bandeja(1);">
												<table><tr><td><span class="badge pull-right"><?php echo $npasos1;?></span></td></tr><tr><td>Paso 1</td></tr></table>
											</a>
										</li>
										<li>
											<a data-toggle="tab" onclick="menu_bandeja(2);">
												<table><tr><td><span class="badge pull-right"><?php echo $npasos2;?></span></td></tr><tr><td>Paso 2</td></tr></table>
											</a>
										</li>
										<li>
											<a data-toggle="tab" onclick="menu_bandeja(3);">
												<table><tr><td><span class="badge pull-right"><?php echo $npasos3;?></span></td></tr><tr><td>Paso 3</td></tr></table>
											</a>
										</li>
									</ul>

									<div class="tab-content-bandeja" id="tab-content-bandeja">
										
									</div>
								</div>
                            </div>
                        </div>
                    </div>
                    <div class="span8">
                        <div class="box">
                            <div class="box-header">
                                <i class="icon-bar-chart"></i>
                                <h5>Tipif</h5>
                            </div>
                            <div class="box-content" id="worka2" class="form-group">
							
							</div>
                        </div>
                    </div>
					<div class="span16" id="modulo_n1" style="display:none;">
                        <div class="box">
                            <div class="box-header">
                                <i class="icon-bar-chart"></i>
                                <h5>Module</h5>
                            </div>
                            <div class="box-content">
                                <div id="workma3"></div>
                            </div>
                        </div>
                    </div>
					<div class="span16" id="modulo_n2" style="display:none;">
                        <div class="box">
                            <div class="box-header">
                                <i class="icon-bar-chart"></i>
                                <h5>Module</h5>
                            </div>
                            <div class="box-content">
                                <div id="workmb3"></div>
                            </div>
                        </div>
                    </div>
					<div class="span16" id="modulo_n3" style="display:none;">
                        <div class="box">
                            <div class="box-header">
                                <i class="icon-bar-chart"></i>
                                <h5>Module</h5>
                            </div>
                            <div class="box-content">
                                <div id="workmc3"></div>
                            </div>
                        </div>
                    </div>
					
                </div>
                
            </div>
        </div>

        
    </section>

    

            </div>
        </div>

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
        });
    </script>
	
    </body>
</html>
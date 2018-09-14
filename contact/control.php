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
		
			<?php
			$sqlemp = "SELECT * FROM crmpa_empresa where id in (".$_SESSION["id_empresa"].")";
			//$array = array();
			$nemp=0;
			foreach($pdo->query($sqlemp) as $row_emp){
			?>
			<div class="span4">
                <div class="box pattern pattern-sandstone">
                    <div class="box-header">
                        <i class="icon-th"></i>
                        <h5><?php echo $row_emp['nombre'];?></h5>
                        <button class="btn btn-box-right" data-toggle="collapse" data-target="#<?php echo "cmpy".$nemp;?>">
                            <i class="icon-reorder"></i>
                        </button>
                    </div>
                    <div class="box-content box-list collapse out" id="<?php echo "cmpy".$nemp;?>">
                        <ul>
							<?php
							$sqlser = "SELECT id_serv,servicio,modo FROM crmpa_servicio where emp_id=".$row_emp['id'];
							foreach($pdo->query($sqlser) as $row_ser){
                            ?>
							<li>
								<?php 
								if (intval($row_ser['modo'])==2){
									echo $row_ser['servicio'].'<ul>
										<li>
											<a href="searchin.php?idserv='.$row_ser['id_serv'].'" class="news-item-title">
												<i class="icon-pencil"> IN</i>
											</a>
											<a href="connect.php?idserv='.$row_ser['id_serv'].'&pdate='.$pdate.'" class="news-item-title">
												<i class="icon-repeat"> OUT</i>
											</a>
										</li>
									</ul>';
								}
								?>
                            </li>
                            <?php
							}
							?>
						</ul>
                    </div>
				</div> 
            </div>
			<?php
			$nemp++;
			}
			?>
			
        
		
        
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
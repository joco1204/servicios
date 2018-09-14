<!DOCTYPE html>
<html lang="es">
<head>
    <!-- meta -->
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="layout" content="main"/>
    <!-- tittle -->
    <title>Simple Dashboard</title>
    <!-- js -->
    <script type="text/javascript" src="http://www.google.com/jsapi"></script>
    <script src="js/jquery/jquery-1.8.2.min.js" type="text/javascript" ></script>
    <script src="js/bootstrap/bootstrap-transition.js" type="text/javascript"></script>
    <script src="js/bootstrap/bootstrap-alert.js" type="text/javascript"></script>
    <script src="js/bootstrap/bootstrap-modal.js" type="text/javascript"></script>
    <script src="js/bootstrap/bootstrap-dropdown.js" type="text/javascript"></script>
    <script src="js/bootstrap/bootstrap-scrollspy.js" type="text/javascript"></script>
    <script src="js/bootstrap/bootstrap-tab.js" type="text/javascript"></script>
    <script src="js/bootstrap/bootstrap-tooltip.js" type="text/javascript"></script>
    <script src="js/bootstrap/bootstrap-popover.js" type="text/javascript"></script>
    <script src="js/bootstrap/bootstrap-button.js" type="text/javascript"></script>
    <script src="js/bootstrap/bootstrap-collapse.js" type="text/javascript"></script>
    <script src="js/bootstrap/bootstrap-carousel.js" type="text/javascript"></script>
    <script src="js/bootstrap/bootstrap-typeahead.js" type="text/javascript"></script>
    <script src="js/bootstrap/bootstrap-affix.js" type="text/javascript"></script>
    <script src="js/bootstrap/bootstrap-datepicker.js" type="text/javascript"></script>
    <script src="js/jquery/jquery-tablesorter.js" type="text/javascript"></script>
    <script src="js/jquery/jquery-chosen.js" type="text/javascript"></script>
    <script src="js/jquery/virtual-tour.js" type="text/javascript"></script>
    <!-- css -->
    <link href="css/customize-template.css" type="text/css" media="screen, projection" rel="stylesheet"/>
    <!-- scripts -->
    <script type="text/javascript">
        $(function(){
            document.forms['loginForm'].elements['j_username'].focus();
            $('body').addClass('pattern pattern-sandstone');
            $("[rel=tooltip]").tooltip();
        });
    </script>
</head>
    <body>
        <div id="body-container">
            <div id="body-content">
                <div class='container'>
                    <div class="signin-row row">
                        <div class="span4"></div>
                        <div class="span8">
                            <div class="container-signin">
                                <legend align="center">
                                    <img src="images/AMERICANBPO.jpg" alt="">
                                </legend>
                                <?php if(isset($_GET['error_login'])){
                                    switch($_GET['error_login']){
                                        case '1':
                                            $error_login = "Usuario y/o contraseña vacio";
                                        break;
                                        case '2':
                                            $error_login = "Usuario incorrecto";
                                        break;
                                        case '3':
                                            $error_login = "Contraseña incorrecta";
                                        break;
                                        default:
                                            $error_login = "Respuesta no asignada";
                                        break;
                                    } ?>
                                    <legend align="center">
                                        <div class="alert alert-danger text-center" id="warning-login" style="height: 40px;"><?= $error_login; ?></div>
                                    </legend>
                                <?php } ?>
                                <form action='src/login.php' method='post' id='login' class='form-signin' autocomplete='off'>
                                    <div class="form-inner">
                                        <div class="input-prepend">
                                            <span class="add-on" rel="tooltip" title="Username" data-placement="top">
                                                <i class="icon-user"></i>
                                            </span>
                                            <input type='text' class='span6' id='user' name="user" placeholder="Usuario"/>
                                        </div>
                                        <div class="input-prepend">
                                            <span class="add-on" rel="tooltip" title="Password" data-placement="top">
                                                <i class="icon-key"></i>
                                            </span>
                                            <input type='password' class='span6' id='pass' name="pass" placeholder="Contraseña"/>
                                        </div>
                                    </div>
                                    <footer class="signin-actions" align="center">
                                        <input class="btn btn-primary" type='submit' id="submit" value='Login'/>
                                    </footer>
                                </form>
                            </div>
                        </div>
                        <div class="span3"></div>
                    </div>
                    <div class="signin-row row">
                        <div class="span4"></div>
                        <div class="span8">
                            <div class="well well-small well-shadow">
                                <legend class="lead">Noticias Generales</legend>
                                American Center BPO 
                            </div>
                        </div>
                        <div class="span8"></div>
                    </div>
                </div>
            </div>
        </div>
        <div id="spinner" class="spinner" style="display:none;">
            Loading&hellip;
        </div>
	</body>
    <footer class="application-footer">
        <div class="container">
            <p>AMERICAN BPO</p>
            <div class="disclaimer">
                <p>Copyright © Acosin</p>
            </div>
        </div>
    </footer>
</html>
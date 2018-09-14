<script>

$(document).ready(function(){
 
    $(".messages").hide();
    //queremos que esta variable sea global
    var fileExtension = "";
    //función que observa los cambios del campo file y obtiene información
    $(':file').change(function()
    {
        //obtenemos un array con los datos del archivo
        var file = $("#imagen")[0].files[0];
        //obtenemos el nombre del archivo
        var fileName = file.name;
        //obtenemos la extensión del archivo
        fileExtension = fileName.substring(fileName.lastIndexOf('.') + 1);
        //obtenemos el tamaño del archivo
        var fileSize = file.size;
        //obtenemos el tipo de archivo image/png ejemplo
        var fileType = file.type;
        //mensaje con la información del archivo
        showMessage("<span class='info'>Archivo para subir: "+fileName+", peso total: "+fileSize+" bytes.</span>");
    });
 
    //al enviar el formulario
    $(':button').click(function(){
        //información del formulario
        var formData = new FormData($(".formulario")[0]);
        var message = ""; 
        //hacemos la petición ajax  
        $.ajax({
            url: 'upload.php',  
            type: 'POST',
            // Form data
            //datos del formulario
            data: formData,
            //necesario para subir archivos via ajax
            cache: false,
            contentType: false,
            processData: false,
            //mientras enviamos el archivo
            beforeSend: function(){
                message = $("<span class='before'>Subiendo la base, por favor espere...</span>");
                showMessage(message)        
            },
            //una vez finalizado correctamente
            success: function(data){
				if (data=="OK"){
					message = $("<span class='success'>La base ha subido correctamente.</span>");	
				}else{
					message = $("<span class='error'>La base no ha podido subir.</span>");
				}
                
                showMessage(message);
                if(isImage(fileExtension))
                {
                    //$(".showImage").html("<img src='files/"+data+"' />");
                }
            },
            //si ha ocurrido un error
            error: function(){
                message = $("<span class='error'>Ha ocurrido un error.</span>");
                showMessage(message);
            }
        });
    });
})
 
//como la utilizamos demasiadas veces, creamos una función para 
//evitar repetición de código
function showMessage(message){
    $(".messages").html("").show();
    $(".messages").html(message);
}
 
//comprobamos si el archivo a subir es una imagen
//para visualizarla una vez haya subido
function isImage(extension)
{
    switch(extension.toLowerCase()) 
    {
        case 'jpg': case 'gif': case 'png': case 'jpeg':
            return true;
        break;
        default:
            return false;
        break;
    }
}
$( "#EmpLista" ).click(function() {
  //$( "#EmpContenidos" ).load('servlista.php');
});
$( "#EmpAdd" ).click(function() {
  //$( "#EmpContenidos" ).load('servadd.php');
});
function changeCiud(){
	var idemp=$( "#emp" ).val(); 
	$( "#emp_file" ).val(idemp); 
	$.ajax({
		type: "POST",
		url: 'cargueListCiud.php',
		dataType: 'json',
		data: "id_emp=" + idemp, // appears as $_GET['id'] @ your backend side
		beforeSend: function() {
				//$('#summary111').html('checking');
		},
		complete: function() {},
		success: function(html) {
				var cadena="<option value='0' selected></option>";
				$.each(html, function(index,valor) {
						//alert("element at " + index + ": " + valor); // will alert each value
						cadena  = cadena +"<option value='"+index +"'>"+valor +"</option>";
				});
				$('#ser').val('').change();
				$('#ser').find('option').remove().end();
				$('#ser').append(cadena);
				$( "#datos" ).hide();
		}
   });
   
	
}
function changeServ(){
	var idserv=$( "#ser" ).val(); 
	$( "#ser_file" ).val(idserv); 
	if(idserv != null){
		$( "#datos" ).show();	
	}
	
}
</script>
<style>
.messages{
        float: left;
        font-family: sans-serif;
        display: none;
    }
    .info{
        padding: 10px;
        border-radius: 10px;
        background: orange;
        color: #fff;
        font-size: 18px;
        text-align: center;
    }
    .before{
        padding: 10px;
        border-radius: 10px;
        background: blue;
        color: #fff;
        font-size: 18px;
        text-align: center;
    }
    .success{
        padding: 10px;
        border-radius: 10px;
        background: green;
        color: #fff;
        font-size: 18px;
        text-align: center;
    }
    .error{
        padding: 10px;
        border-radius: 10px;
        background: red;
        color: #fff;
        font-size: 18px;
        text-align: center;
    }

</style>
<?php require_once('../src/connect.php'); ?>
<div class="row">
	<div class="span16">
		<div class="box">
			<div class="box-header">
				<i class="icon-bookmark"></i>
				<h5>Base</h5>
			</div>
			<div class="box-content">
				<div class="row">
					<div class="span4">
						<div class="btn-group-box" align="center">
							<i class="icon-th icon-large">EMPRESA</i><br>
							<select class="btn" onchange="changeCiud();" id="emp">
								<option value="">--</option>
							<?php
								$sql = "SELECT * FROM crmpa_empresa";
							
								foreach($pdo->query($sql) as $row){
									echo "<option value='".$row['id']."'>".$row['nombre']."</option>";
								}
							?>
							</select>
						</div>
					</div>
					<div class="span4">
						<div class="btn-group-box" align="center">
							<i class="icon-list icon-large">SERVICIO</i></br><select class="btn" id="ser" onchange="changeServ();"></select>
						</div>
					</div>
					<div class="span4">
						<div class="btn-group-box" align="center">
							<button class="btn" type="button"><i class="icon-user icon-large" onclick="location.reload();"></i><br/>Atras</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="row" id="datos" style="display:none;">
	<div class="span16">
		<div class="box">
			<div class="box-header">
			<i class="icon-bookmark"></i>
				<h5>Archivo a cargar:</h5>
			</div>
			<div class="box-content">
			<a href="files/prueba.txt" target="_blank">Archivo de prueba.</a>
			<form enctype="multipart/form-data" class="formulario">
				<input name="emp" type="hidden" id="emp_file"/>
				<input name="ser" type="hidden" id="ser_file"/>
				<input name="archivo" type="file" id="imagen" />
				<input type="button" value="Subir Base" />
			</form>
			<div class="messages"></div><br /><br />
			<div class="showImage"></div>		
			</div>
		</div>
	</div>
</div>

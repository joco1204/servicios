<?php 

$idcl=$_GET['id_cl'];
$idserv=$_GET['idserv'];
$pdate_ini=$_GET['pdate'];
$pdate= date("Y/m/d H:i:s");
$fechamas5 = strtotime('+5 minute',strtotime($pdate));
$fechamas5 = date("Y/m/d H:i:s",$fechamas5);
$fechamenos5 = strtotime('-5 minute',strtotime($pdate));
$fechamenos5 = date("Y/m/d H:i:s",$fechamenos5);

require_once('../src/connect.php'); 
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
    <link href="../css/customize-templateContact.css" type="text/css" media="screen, projection" rel="stylesheet" />

    <style>
        #body-content { 
			padding-top: 40px;
			font-size:12px;
		}
    </style>
	<script>
		function soloNumeros(e){
			var key = window.Event ? e.which : e.keyCode
			return (key >= 48 && key <= 57)
		}
		$( document ).ready(function() {
			var clsel = $('#cl_sel').val();
			var servsel = $('#ser_sel').val();
			$('#workm3').load('modulo.php?cl='+clsel+'&serv='+servsel);
		});
		
		function ncallback1(tipif,again){
			var date = $('#date1').val();
			var time = $('#time1').val();
			nvalid(tipif,again,date,time);
			
		}
		function ncallback2(tipif,again){
			var date = $('#date2').val();
			var time = $('#time2').val();
			nvalid(tipif,again,date,time);
			
		}		
		function nvalid(tipif,again,dt,tm){
			var clsel = $('#cl_sel').val();
			var servsel = $('#ser_sel').val();
			var date_ini = $('#pdate_ini').val();
		
			$.ajax({
				type: "POST",
				url: 'savetipifsimple.php',
				dataType: 'json',
				//data: "id_dpt="+depto, // appears as $_GET['id'] @ your backend side
				data: {
					idcl: clsel,
					sercl: servsel,
					tipifcl: tipif,
					date_inicl: date_ini,
					againcl:again,
					datecl:dt,
					timecl:tm,
				},
				beforeSend: function() {
						//$('#summary111').html('checking');
				},
				complete: function() {},
				success: function(html) {
					window.location="connect.php?idserv="+servsel+"&pdate="+html;
				}
		   });
			
		}
		function nvalid_venta(tipif,again,dt,tm){
			
			var enc_1 = $('#fec_ent_enc').val();
			var enc_2 = $('#dri1_enc').val();
			var enc_3 = $('#dri2_enc').val();
			var enc_4 = $('#dri3_enc').val();
			var enc_5 = $('#dri4_enc').val();
			var enc_6 = $('#dri5_enc').val();
			var enc_7 = $('#dri6_enc').val();
			var enc_8 = $('#dri7_enc').val();
			var enc_9 = $('#dri8_enc').val();
			var enc_10 = $('#dept_enc').val();
			var enc_11 = $('#ciud_enc').val();
			var enc_12 = $('#barrio_enc').val();
			var enc_13 = $('#ubicacion_enc').val();
			var enc_14 = $('#sitio_enc').val();
			var enc_15 = $('#especif_enc').val();
			var enc_16 = $('#horario_enc').val();
			
			var nulos_enc="";
			
			if(enc_1==''){nulos_enc=nulos_enc+'Fecha Entrega \n'; }
			if(enc_2==''){nulos_enc=nulos_enc+'Dirección 1 \n'; }
			if(enc_3==''){nulos_enc=nulos_enc+'Dirección 2 \n'; }
			if(enc_4==''){nulos_enc=nulos_enc+'Dirección 3 \n'; }
			if(enc_5==''){nulos_enc=nulos_enc+'Dirección 4 \n'; }
			if(enc_6==''){nulos_enc=nulos_enc+'Dirección 5 \n'; }
			if(enc_7==''){nulos_enc=nulos_enc+'Dirección 6 \n'; }
			if(enc_8==''){nulos_enc=nulos_enc+'Dirección 7 \n'; }
			if(enc_9==''){nulos_enc=nulos_enc+'Dirección 8 \n'; }
			if(enc_10==''){nulos_enc=nulos_enc+'Departamento \n'; }
			if(enc_11==''){nulos_enc=nulos_enc+'Ciudad \n'; }
			if(enc_12==''){nulos_enc=nulos_enc+'Barrio \n'; }
			if(enc_13==''){nulos_enc=nulos_enc+'Ubicación \n'; }
			if(enc_14==''){nulos_enc=nulos_enc+'Sitio \n'; }
			if(enc_15==''){nulos_enc=nulos_enc+'Especifico \n'; }
			if(enc_16==''){nulos_enc=nulos_enc+'Horario \n'; }
			
			
			if (nulos_enc == ""){
				var clsel = $('#cl_sel').val();
				var servsel = $('#ser_sel').val();
				var date_ini = $('#pdate_ini').val();
				var jav_scoreG = $('#scoreG').val();
				var jav_nline = $('#nline').val();
				var jav_doc_sus = $('#doc_sus').val();
				var jav_name_sus = $('#name_sus').val();
				var jav_apel_sus = $('#apel_sus').val();
				var jav_fec_nac_sus = $('#fec_nac_sus').val();
				var jav_fec_exp_sus = $('#fec_exp_sus').val();
				var jav_barrio_sus = $('#barrio_sus').val();
				var jav_email_sus = $('#email_sus').val();
				var jav_dir1_sus = $('#dir1_sus').val();
				var jav_dir2_sus = $('#dir2_sus').val();
				var jav_dir3_sus = $('#dir3_sus').val();
				var jav_dir4_sus = $('#dir4_sus').val();
				var jav_dir5_sus = $('#dir5_sus').val();
				var jav_dir6_sus = $('#dir6_sus').val();
				var jav_dir7_sus = $('#dir7_sus').val();
				var jav_dir8_sus = $('#dir8_sus').val();
				var jav_dept_sus = $('#dept_sus').val();
				var jav_ciud_sus = $('#ciud_sus').val();
				
				var jav_doc_sus1 = $('#doc_susLinea1').val();
			var jav_name_sus1 = $('#name_susLinea1').val();
			var jav_apel_sus1 = $('#apel_susLinea1').val();
			var jav_tipo_1 = $('#tipo_Linea1').val();
			var jav_linea_1 = $('#linea_Linea1').val();
			var jav_otro_1 = $('#otro_Linea1').val();
			var jav_nip_1 = $('#nip_Linea1').val();
			var jav_operador_1 = $('#operador_Linea1').val();
			var jav_tipservice1 = $('#tipservice1').val();
			var jav_planservice1 = $('#planservice1').val();
			var jav_infoservice1 = $('#infoservice1').val();
			var jav_service1 = $('#service1').val();
			var jav_fecha_venta_1 = $('#fecha_venta_1').val();
			var jav_obs_1 = $('#obs_1').val();

			var jav_doc_sus2 = $('#doc_susLinea2').val();
			var jav_name_sus2 = $('#name_susLinea2').val();
			var jav_apel_sus2 = $('#apel_susLinea2').val();
			var jav_tipo_2 = $('#tipo_Linea2').val();
			var jav_linea_2 = $('#linea_Linea2').val();
			var jav_otro_2 = $('#otro_Linea2').val();
			var jav_nip_2 = $('#nip_Linea2').val();
			var jav_operador_2 = $('#operador_Linea2').val();
			var jav_tipservice2 = $('#tipservice2').val();
			var jav_planservice2 = $('#planservice2').val();
			var jav_infoservice2 = $('#infoservice2').val();
			var jav_service2 = $('#service2').val();
			var jav_fecha_venta_2 = $('#fecha_venta_2').val();
			var jav_obs_2 = $('#obs_2').val();

			var jav_doc_sus3 = $('#doc_susLinea3').val();
			var jav_name_sus3 = $('#name_susLinea3').val();
			var jav_apel_sus3 = $('#apel_susLinea3').val();
			var jav_tipo_3 = $('#tipo_Linea3').val();
			var jav_linea_3 = $('#linea_Linea3').val();
			var jav_otro_3 = $('#otro_Linea3').val();
			var jav_nip_3 = $('#nip_Linea3').val();
			var jav_operador_3 = $('#operador_Linea3').val();
			var jav_tipservice3 = $('#tipservice3').val();
			var jav_planservice3 = $('#planservice3').val();
			var jav_infoservice3 = $('#infoservice3').val();
			var jav_service3 = $('#service3').val();
			var jav_fecha_venta_3 = $('#fecha_venta_3').val();
			var jav_obs_3 = $('#obs_3').val();

			var jav_doc_sus4 = $('#doc_susLinea4').val();
			var jav_name_sus4 = $('#name_susLinea4').val();
			var jav_apel_sus4 = $('#apel_susLinea4').val();
			var jav_tipo_4 = $('#tipo_Linea4').val();
			var jav_linea_4 = $('#linea_Linea4').val();
			var jav_otro_4 = $('#otro_Linea4').val();
			var jav_nip_4 = $('#nip_Linea4').val();
			var jav_operador_4 = $('#operador_Linea4').val();
			var jav_tipservice4 = $('#tipservice4').val();
			var jav_planservice4 = $('#planservice4').val();
			var jav_infoservice4 = $('#infoservice4').val();
			var jav_service4 = $('#service4').val();
			var jav_fecha_venta_4 = $('#fecha_venta_4').val();
			var jav_obs_4 = $('#obs_4').val();

			var jav_doc_sus5 = $('#doc_susLinea5').val();
			var jav_name_sus5 = $('#name_susLinea5').val();
			var jav_apel_sus5 = $('#apel_susLinea5').val();
			var jav_tipo_5 = $('#tipo_Linea5').val();
			var jav_linea_5 = $('#linea_Linea5').val();
			var jav_otro_5 = $('#otro_Linea5').val();
			var jav_nip_5 = $('#nip_Linea5').val();
			var jav_operador_5 = $('#operador_Linea5').val();
			var jav_tipservice5 = $('#tipservice5').val();
			var jav_planservice5 = $('#planservice5').val();
			var jav_infoservice5 = $('#infoservice5').val();
			var jav_service5 = $('#service5').val();
			var jav_fecha_venta_5 = $('#fecha_venta_5').val();
			var jav_obs_5 = $('#obs_5').val();

			var jav_doc_sus6 = $('#doc_susLinea6').val();
			var jav_name_sus6 = $('#name_susLinea6').val();
			var jav_apel_sus6 = $('#apel_susLinea6').val();
			var jav_tipo_6 = $('#tipo_Linea6').val();
			var jav_linea_6 = $('#linea_Linea6').val();
			var jav_otro_6 = $('#otro_Linea6').val();
			var jav_nip_6 = $('#nip_Linea6').val();
			var jav_operador_6 = $('#operador_Linea6').val();
			var jav_tipservice6 = $('#tipservice6').val();
			var jav_planservice6 = $('#planservice6').val();
			var jav_infoservice6 = $('#infoservice6').val();
			var jav_service6 = $('#service6').val();
			var jav_fecha_venta_6 = $('#fecha_venta_6').val();
			var jav_obs_6 = $('#obs_6').val();

			var jav_doc_sus7 = $('#doc_susLinea7').val();
			var jav_name_sus7 = $('#name_susLinea7').val();
			var jav_apel_sus7 = $('#apel_susLinea7').val();
			var jav_tipo_7 = $('#tipo_Linea7').val();
			var jav_linea_7 = $('#linea_Linea7').val();
			var jav_otro_7 = $('#otro_Linea7').val();
			var jav_nip_7 = $('#nip_Linea7').val();
			var jav_operador_7 = $('#operador_Linea7').val();
			var jav_tipservice7 = $('#tipservice7').val();
			var jav_planservice7 = $('#planservice7').val();
			var jav_infoservice7 = $('#infoservice7').val();
			var jav_service7 = $('#service7').val();
			var jav_fecha_venta_7 = $('#fecha_venta_7').val();
			var jav_obs_7 = $('#obs_7').val();

			var jav_doc_sus8 = $('#doc_susLinea8').val();
			var jav_name_sus8 = $('#name_susLinea8').val();
			var jav_apel_sus8 = $('#apel_susLinea8').val();
			var jav_tipo_8 = $('#tipo_Linea8').val();
			var jav_linea_8 = $('#linea_Linea8').val();
			var jav_otro_8 = $('#otro_Linea8').val();
			var jav_nip_8 = $('#nip_Linea8').val();
			var jav_operador_8 = $('#operador_Linea8').val();
			var jav_tipservice8 = $('#tipservice8').val();
			var jav_planservice8 = $('#planservice8').val();
			var jav_infoservice8 = $('#infoservice8').val();
			var jav_service8 = $('#service8').val();
			var jav_fecha_venta_8 = $('#fecha_venta_8').val();
			var jav_obs_8 = $('#obs_8').val();

			var jav_doc_sus9 = $('#doc_susLinea9').val();
			var jav_name_sus9 = $('#name_susLinea9').val();
			var jav_apel_sus9 = $('#apel_susLinea9').val();
			var jav_tipo_9 = $('#tipo_Linea9').val();
			var jav_linea_9 = $('#linea_Linea9').val();
			var jav_otro_9 = $('#otro_Linea9').val();
			var jav_nip_9 = $('#nip_Linea9').val();
			var jav_operador_9 = $('#operador_Linea9').val();
			var jav_tipservice9 = $('#tipservice9').val();
			var jav_planservice9 = $('#planservice9').val();
			var jav_infoservice9 = $('#infoservice9').val();
			var jav_service9 = $('#service9').val();
			var jav_fecha_venta_9 = $('#fecha_venta_9').val();
			var jav_obs_9 = $('#obs_9').val();

			var jav_doc_sus10 = $('#doc_susLinea10').val();
			var jav_name_sus10 = $('#name_susLinea10').val();
			var jav_apel_sus10 = $('#apel_susLinea10').val();
			var jav_tipo_10 = $('#tipo_Linea10').val();
			var jav_linea_10 = $('#linea_Linea10').val();
			var jav_otro_10 = $('#otro_Linea10').val();
			var jav_nip_10 = $('#nip_Linea10').val();
			var jav_operador_10 = $('#operador_Linea10').val();
			var jav_tipservice10 = $('#tipservice10').val();
			var jav_planservice10 = $('#planservice10').val();
			var jav_infoservice10 = $('#infoservice10').val();
			var jav_service10 = $('#service10').val();
			var jav_fecha_venta_10 = $('#fecha_venta_10').val();
			var jav_obs_10 = $('#obs_10').val();
				
				
				$.ajax({
					type: "POST",
					url: 'savetipifventa.php',
					dataType: 'json',
					//data: "id_dpt="+depto, // appears as $_GET['id'] @ your backend side
					data: {
						idcl: clsel,
						sercl: servsel,
						tipifcl: tipif,
						date_inicl: date_ini,
						againcl:again,
						datecl:dt,
						timecl:tm,
						scoreG:jav_scoreG,
						nline:jav_nline,
						doc_sus: jav_doc_sus,
						name_sus: jav_name_sus,
						apel_sus: jav_apel_sus,
						fec_nac_sus: jav_fec_nac_sus,
						fec_exp_sus: jav_fec_exp_sus,
						barrio_sus: jav_barrio_sus,
						email_sus: jav_email_sus,
						dir1_sus: jav_dir1_sus,
						dir2_sus: jav_dir2_sus,
						dir3_sus: jav_dir3_sus,
						dir4_sus: jav_dir4_sus,
						dir5_sus: jav_dir5_sus,
						dir6_sus: jav_dir6_sus,
						dir7_sus: jav_dir7_sus,
						dir8_sus: jav_dir8_sus,
						dept_sus: jav_dept_sus,
						ciud_sus: jav_ciud_sus,
						doc_sus1: jav_doc_sus1,
						name_sus1: jav_name_sus1,
						apel_sus1: jav_apel_sus1,
						tipo_1: jav_tipo_1,
						linea_1: jav_linea_1,
						otro_1: jav_otro_1,
						nip_1: jav_nip_1,
						operador_1: jav_operador_1,
						tipservice1: jav_tipservice1,
						planservice1: jav_planservice1,
						infoservice1: jav_infoservice1,
						service1: jav_service1,
						fecha_venta_1: jav_fecha_venta_1,
						obs_1: jav_obs_1,
						doc_sus2: jav_doc_sus2,
						name_sus2: jav_name_sus2,
						apel_sus2: jav_apel_sus2,
						tipo_2: jav_tipo_2,
						linea_2: jav_linea_2,
						otro_2: jav_otro_2,
						nip_2: jav_nip_2,
						operador_2: jav_operador_2,
						tipservice2: jav_tipservice2,
						planservice2: jav_planservice2,
						infoservice2: jav_infoservice2,
						service2: jav_service2,
						fecha_venta_2: jav_fecha_venta_2,
						obs_2: jav_obs_2,
						doc_sus3: jav_doc_sus3,
						name_sus3: jav_name_sus3,
						apel_sus3: jav_apel_sus3,
						tipo_3: jav_tipo_3,
						linea_3: jav_linea_3,
						otro_3: jav_otro_3,
						nip_3: jav_nip_3,
						operador_3: jav_operador_3,
						tipservice3: jav_tipservice3,
						planservice3: jav_planservice3,
						infoservice3: jav_infoservice3,
						service3: jav_service3,
						fecha_venta_3: jav_fecha_venta_3,
						obs_3: jav_obs_3,
						doc_sus4: jav_doc_sus4,
						name_sus4: jav_name_sus4,
						apel_sus4: jav_apel_sus4,
						tipo_4: jav_tipo_4,
						linea_4: jav_linea_4,
						otro_4: jav_otro_4,
						nip_4: jav_nip_4,
						operador_4: jav_operador_4,
						tipservice4: jav_tipservice4,
						planservice4: jav_planservice4,
						infoservice4: jav_infoservice4,
						service4: jav_service4,
						fecha_venta_4: jav_fecha_venta_4,
						obs_4: jav_obs_4,
						doc_sus5: jav_doc_sus5,
						name_sus5: jav_name_sus5,
						apel_sus5: jav_apel_sus5,
						tipo_5: jav_tipo_5,
						linea_5: jav_linea_5,
						otro_5: jav_otro_5,
						nip_5: jav_nip_5,
						operador_5: jav_operador_5,
						tipservice5: jav_tipservice5,
						planservice5: jav_planservice5,
						infoservice5: jav_infoservice5,
						service5: jav_service5,
						fecha_venta_5: jav_fecha_venta_5,
						obs_5: jav_obs_5,
						doc_sus6: jav_doc_sus6,
						name_sus6: jav_name_sus6,
						apel_sus6: jav_apel_sus6,
						tipo_6: jav_tipo_6,
						linea_6: jav_linea_6,
						otro_6: jav_otro_6,
						nip_6: jav_nip_6,
						operador_6: jav_operador_6,
						tipservice6: jav_tipservice6,
						planservice6: jav_planservice6,
						infoservice6: jav_infoservice6,
						service6: jav_service6,
						fecha_venta_6: jav_fecha_venta_6,
						obs_6: jav_obs_6,
						doc_sus7: jav_doc_sus7,
						name_sus7: jav_name_sus7,
						apel_sus7: jav_apel_sus7,
						tipo_7: jav_tipo_7,
						linea_7: jav_linea_7,
						otro_7: jav_otro_7,
						nip_7: jav_nip_7,
						operador_7: jav_operador_7,
						tipservice7: jav_tipservice7,
						planservice7: jav_planservice7,
						infoservice7: jav_infoservice7,
						service7: jav_service7,
						fecha_venta_7: jav_fecha_venta_7,
						obs_7: jav_obs_7,
						doc_sus8: jav_doc_sus8,
						name_sus8: jav_name_sus8,
						apel_sus8: jav_apel_sus8,
						tipo_8: jav_tipo_8,
						linea_8: jav_linea_8,
						otro_8: jav_otro_8,
						nip_8: jav_nip_8,
						operador_8: jav_operador_8,
						tipservice8: jav_tipservice8,
						planservice8: jav_planservice8,
						infoservice8: jav_infoservice8,
						service8: jav_service8,
						fecha_venta_8: jav_fecha_venta_8,
						obs_8: jav_obs_8,
						doc_sus9: jav_doc_sus9,
						name_sus9: jav_name_sus9,
						apel_sus9: jav_apel_sus9,
						tipo_9: jav_tipo_9,
						linea_9: jav_linea_9,
						otro_9: jav_otro_9,
						nip_9: jav_nip_9,
						operador_9: jav_operador_9,
						tipservice9: jav_tipservice9,
						planservice9: jav_planservice9,
						infoservice9: jav_infoservice9,
						service9: jav_service9,
						fecha_venta_9: jav_fecha_venta_9,
						obs_9: jav_obs_9,
						doc_sus10: jav_doc_sus10,
						name_sus10: jav_name_sus10,
						apel_sus10: jav_apel_sus10,
						tipo_10: jav_tipo_10,
						linea_10: jav_linea_10,
						otro_10: jav_otro_10,
						nip_10: jav_nip_10,
						operador_10: jav_operador_10,
						tipservice10: jav_tipservice10,
						planservice10: jav_planservice10,
						infoservice10: jav_infoservice10,
						service10: jav_service10,
						fecha_venta_10: jav_fecha_venta_10,
						obs_10: jav_obs_10,
						encuesta_1:enc_1,
						encuesta_2:enc_2,
						encuesta_3:enc_3,
						encuesta_4:enc_4,
						encuesta_5:enc_5,
						encuesta_6:enc_6,
						encuesta_7:enc_7,
						encuesta_8:enc_8,
						encuesta_9:enc_9,
						encuesta_10:enc_10,
						encuesta_11:enc_11,
						encuesta_12:enc_12,
						encuesta_13:enc_13,
						encuesta_14:enc_14,
						encuesta_15:enc_15,
						encuesta_16:enc_16,
					},
					beforeSend: function() {
							//$('#summary111').html('checking');
					},
					complete: function() {},
					success: function(html) {
						window.location="connect.php?idserv="+servsel+"&pdate="+html;
					}
			   });
			}else{
				alert('Campos vacios en la encuesta: \n'+nulos_enc);
			}
			
		}
		function nventa(area){
			var asesor = $('#asesor').val();
			var clsel = $('#cl_sel').val();
			var servsel = $('#ser_sel').val();
			/*var asesor = $('#asesor').val();
			alert(linea_Linea1.length);
			if (doc_tit == ''){ error =error+doc_tit +'/n'; }
			*/
			var nulos="";
			var nulos1="";
			var nulos2="";
			var nulos3="";
			var nulos4="";
			var nulos5="";
			var nulos6="";
			var nulos7="";
			var nulos8="";
			var nulos9="";
			var nulos10="";
			//validar campos modulo
			var jav_scoreG = $('#scoreG').val();
			var jav_nline = $('#nline').val();
			var jav_doc_sus = $('#doc_sus').val();
			var jav_name_sus = $('#name_sus').val();
			var jav_apel_sus = $('#apel_sus').val();
			var jav_fec_nac_sus = $('#fec_nac_sus').val();
			var jav_fec_exp_sus = $('#fec_exp_sus').val();
			var jav_barrio_sus = $('#barrio_sus').val();
			var jav_email_sus = $('#email_sus').val();
			var jav_dir1_sus = $('#dir1_sus').val();
			var jav_dir2_sus = $('#dir2_sus').val();
			var jav_dir3_sus = $('#dir3_sus').val();
			var jav_dir4_sus = $('#dir4_sus').val();
			var jav_dir5_sus = $('#dir5_sus').val();
			var jav_dir6_sus = $('#dir6_sus').val();
			var jav_dir7_sus = $('#dir7_sus').val();
			var jav_dir8_sus = $('#dir8_sus').val();
			var jav_dept_sus = $('#dept_sus').val();
			var jav_ciud_sus = $('#ciud_sus').val();
			
			var jav_doc_sus1 = $('#doc_susLinea1').val();
			var jav_name_sus1 = $('#name_susLinea1').val();
			var jav_apel_sus1 = $('#apel_susLinea1').val();
			var jav_tipo_1 = $('#tipo_Linea1').val();
			var jav_linea_1 = $('#linea_Linea1').val();
			var jav_otro_1 = $('#otro_Linea1').val();
			var jav_nip_1 = $('#nip_Linea1').val();
			var jav_operador_1 = $('#operador_Linea1').val();
			var jav_tipservice1 = $('#tipservice1').val();
			var jav_planservice1 = $('#planservice1').val();
			var jav_infoservice1 = $('#infoservice1').val();
			var jav_service1 = $('#service1').val();
			var jav_fecha_venta_1 = $('#fecha_venta_1').val();
			var jav_obs_1 = $('#obs_1').val();

			var jav_doc_sus2 = $('#doc_susLinea2').val();
			var jav_name_sus2 = $('#name_susLinea2').val();
			var jav_apel_sus2 = $('#apel_susLinea2').val();
			var jav_tipo_2 = $('#tipo_Linea2').val();
			var jav_linea_2 = $('#linea_Linea2').val();
			var jav_otro_2 = $('#otro_Linea2').val();
			var jav_nip_2 = $('#nip_Linea2').val();
			var jav_operador_2 = $('#operador_Linea2').val();
			var jav_tipservice2 = $('#tipservice2').val();
			var jav_planservice2 = $('#planservice2').val();
			var jav_infoservice2 = $('#infoservice2').val();
			var jav_service2 = $('#service2').val();
			var jav_fecha_venta_2 = $('#fecha_venta_2').val();
			var jav_obs_2 = $('#obs_2').val();

			var jav_doc_sus3 = $('#doc_susLinea3').val();
			var jav_name_sus3 = $('#name_susLinea3').val();
			var jav_apel_sus3 = $('#apel_susLinea3').val();
			var jav_tipo_3 = $('#tipo_Linea3').val();
			var jav_linea_3 = $('#linea_Linea3').val();
			var jav_otro_3 = $('#otro_Linea3').val();
			var jav_nip_3 = $('#nip_Linea3').val();
			var jav_operador_3 = $('#operador_Linea3').val();
			var jav_tipservice3 = $('#tipservice3').val();
			var jav_planservice3 = $('#planservice3').val();
			var jav_infoservice3 = $('#infoservice3').val();
			var jav_service3 = $('#service3').val();
			var jav_fecha_venta_3 = $('#fecha_venta_3').val();
			var jav_obs_3 = $('#obs_3').val();

			var jav_doc_sus4 = $('#doc_susLinea4').val();
			var jav_name_sus4 = $('#name_susLinea4').val();
			var jav_apel_sus4 = $('#apel_susLinea4').val();
			var jav_tipo_4 = $('#tipo_Linea4').val();
			var jav_linea_4 = $('#linea_Linea4').val();
			var jav_otro_4 = $('#otro_Linea4').val();
			var jav_nip_4 = $('#nip_Linea4').val();
			var jav_operador_4 = $('#operador_Linea4').val();
			var jav_tipservice4 = $('#tipservice4').val();
			var jav_planservice4 = $('#planservice4').val();
			var jav_infoservice4 = $('#infoservice4').val();
			var jav_service4 = $('#service4').val();
			var jav_fecha_venta_4 = $('#fecha_venta_4').val();
			var jav_obs_4 = $('#obs_4').val();

			var jav_doc_sus5 = $('#doc_susLinea5').val();
			var jav_name_sus5 = $('#name_susLinea5').val();
			var jav_apel_sus5 = $('#apel_susLinea5').val();
			var jav_tipo_5 = $('#tipo_Linea5').val();
			var jav_linea_5 = $('#linea_Linea5').val();
			var jav_otro_5 = $('#otro_Linea5').val();
			var jav_nip_5 = $('#nip_Linea5').val();
			var jav_operador_5 = $('#operador_Linea5').val();
			var jav_tipservice5 = $('#tipservice5').val();
			var jav_planservice5 = $('#planservice5').val();
			var jav_infoservice5 = $('#infoservice5').val();
			var jav_service5 = $('#service5').val();
			var jav_fecha_venta_5 = $('#fecha_venta_5').val();
			var jav_obs_5 = $('#obs_5').val();

			var jav_doc_sus6 = $('#doc_susLinea6').val();
			var jav_name_sus6 = $('#name_susLinea6').val();
			var jav_apel_sus6 = $('#apel_susLinea6').val();
			var jav_tipo_6 = $('#tipo_Linea6').val();
			var jav_linea_6 = $('#linea_Linea6').val();
			var jav_otro_6 = $('#otro_Linea6').val();
			var jav_nip_6 = $('#nip_Linea6').val();
			var jav_operador_6 = $('#operador_Linea6').val();
			var jav_tipservice6 = $('#tipservice6').val();
			var jav_planservice6 = $('#planservice6').val();
			var jav_infoservice6 = $('#infoservice6').val();
			var jav_service6 = $('#service6').val();
			var jav_fecha_venta_6 = $('#fecha_venta_6').val();
			var jav_obs_6 = $('#obs_6').val();

			var jav_doc_sus7 = $('#doc_susLinea7').val();
			var jav_name_sus7 = $('#name_susLinea7').val();
			var jav_apel_sus7 = $('#apel_susLinea7').val();
			var jav_tipo_7 = $('#tipo_Linea7').val();
			var jav_linea_7 = $('#linea_Linea7').val();
			var jav_otro_7 = $('#otro_Linea7').val();
			var jav_nip_7 = $('#nip_Linea7').val();
			var jav_operador_7 = $('#operador_Linea7').val();
			var jav_tipservice7 = $('#tipservice7').val();
			var jav_planservice7 = $('#planservice7').val();
			var jav_infoservice7 = $('#infoservice7').val();
			var jav_service7 = $('#service7').val();
			var jav_fecha_venta_7 = $('#fecha_venta_7').val();
			var jav_obs_7 = $('#obs_7').val();

			var jav_doc_sus8 = $('#doc_susLinea8').val();
			var jav_name_sus8 = $('#name_susLinea8').val();
			var jav_apel_sus8 = $('#apel_susLinea8').val();
			var jav_tipo_8 = $('#tipo_Linea8').val();
			var jav_linea_8 = $('#linea_Linea8').val();
			var jav_otro_8 = $('#otro_Linea8').val();
			var jav_nip_8 = $('#nip_Linea8').val();
			var jav_operador_8 = $('#operador_Linea8').val();
			var jav_tipservice8 = $('#tipservice8').val();
			var jav_planservice8 = $('#planservice8').val();
			var jav_infoservice8 = $('#infoservice8').val();
			var jav_service8 = $('#service8').val();
			var jav_fecha_venta_8 = $('#fecha_venta_8').val();
			var jav_obs_8 = $('#obs_8').val();

			var jav_doc_sus9 = $('#doc_susLinea9').val();
			var jav_name_sus9 = $('#name_susLinea9').val();
			var jav_apel_sus9 = $('#apel_susLinea9').val();
			var jav_tipo_9 = $('#tipo_Linea9').val();
			var jav_linea_9 = $('#linea_Linea9').val();
			var jav_otro_9 = $('#otro_Linea9').val();
			var jav_nip_9 = $('#nip_Linea9').val();
			var jav_operador_9 = $('#operador_Linea9').val();
			var jav_tipservice9 = $('#tipservice9').val();
			var jav_planservice9 = $('#planservice9').val();
			var jav_infoservice9 = $('#infoservice9').val();
			var jav_service9 = $('#service9').val();
			var jav_fecha_venta_9 = $('#fecha_venta_9').val();
			var jav_obs_9 = $('#obs_9').val();

			var jav_doc_sus10 = $('#doc_susLinea10').val();
			var jav_name_sus10 = $('#name_susLinea10').val();
			var jav_apel_sus10 = $('#apel_susLinea10').val();
			var jav_tipo_10 = $('#tipo_Linea10').val();
			var jav_linea_10 = $('#linea_Linea10').val();
			var jav_otro_10 = $('#otro_Linea10').val();
			var jav_nip_10 = $('#nip_Linea10').val();
			var jav_operador_10 = $('#operador_Linea10').val();
			var jav_tipservice10 = $('#tipservice10').val();
			var jav_planservice10 = $('#planservice10').val();
			var jav_infoservice10 = $('#infoservice10').val();
			var jav_service10 = $('#service10').val();
			var jav_fecha_venta_10 = $('#fecha_venta_10').val();
			var jav_obs_10 = $('#obs_10').val();

			
			
			if(jav_scoreG==""){ nulos=nulos+"scoreG \n"; }
			if(jav_doc_sus==""){	nulos=nulos+"Documento Suscriptor \n"; }
			if(jav_name_sus==""){	nulos=nulos+"Nombre Suscriptor \n"; }
			if(jav_apel_sus==""){	nulos=nulos+"Apellidos Suscriptor \n"; }
			if(jav_fec_nac_sus==""){	nulos=nulos+"Fecha nacimiento Suscriptor \n"; }
			if(jav_fec_exp_sus==""){	nulos=nulos+"Fecha Expedición Suscriptor \n"; }
			if(jav_barrio_sus==""){	nulos=nulos+"Barrio \n"; }
			if(jav_email_sus==""){	nulos=nulos+"Email \n"; }
			if(jav_dir1_sus==""){	nulos=nulos+"Direccion 1 \n"; }
			if(jav_dir2_sus==""){	nulos=nulos+"Dirección 2 \n"; }
			if(jav_dir3_sus==""){	nulos=nulos+"Dirección 3 \n"; }
			if(jav_dir4_sus==""){	nulos=nulos+"Dirección 4 \n"; }
			if(jav_dir5_sus==""){	nulos=nulos+"Dirección 5 \n"; }
			if(jav_dir6_sus==""){	nulos=nulos+"Dirección 6 \n"; }
			if(jav_dir7_sus==""){	nulos=nulos+"Dirección 7 \n"; }
			if(jav_dir8_sus==""){	nulos=nulos+"Dirección 8 \n"; }
			if(jav_dept_sus==""){	nulos=nulos+"Departamento 1 \n"; }
			if(jav_ciud_sus==""){	nulos=nulos+"Ciudad \n"; }
			
			if(jav_nline >=1){
				if(jav_doc_sus1==''){nulos1=nulos1+'Documento  \n'; }
				if(jav_name_sus1==''){nulos1=nulos1+'Nombre  \n'; }
				if(jav_apel_sus1==''){nulos1=nulos1+'Apellido  \n'; }
				if(jav_tipo_1==''){nulos1=nulos1+'Tipo  \n'; }
				if(jav_linea_1==''){nulos1=nulos1+'Linea  \n'; }
				if(jav_otro_1==''){nulos1=nulos1+'Otro  \n'; }
				if(jav_nip_1==''){nulos1=nulos1+'Nip  \n'; }
				if(jav_operador_1==''){nulos1=nulos1+'Operador  \n'; }
				if(jav_tipservice1==''){nulos1=nulos1+'Tipo servicio  \n'; }
				if(jav_planservice1==''){nulos1=nulos1+'Plan  \n'; }
				if(jav_infoservice1==''){nulos1=nulos1+'Informacion  \n'; }
				if(jav_service1==''){nulos1=nulos1+'Servicio  \n'; }
				if(jav_fecha_venta_1==''){nulos1=nulos1+'Fecha venta linea:fecha_venta_1 \n'; }
				if(jav_obs_1==''){nulos1=nulos1+'Observacion linea:obs_1 \n'; }
			}
			if(jav_nline >=2){
				if(jav_doc_sus2==''){nulos2=nulos2+'Documento  \n'; }
				if(jav_name_sus2==''){nulos2=nulos2+'Nombre  \n'; }
				if(jav_apel_sus2==''){nulos2=nulos2+'Apellido  \n'; }
				if(jav_tipo_2==''){nulos2=nulos2+'Tipo  \n'; }
				if(jav_linea_2==''){nulos2=nulos2+'Linea  \n'; }
				if(jav_otro_2==''){nulos2=nulos2+'Otro  \n'; }
				if(jav_nip_2==''){nulos2=nulos2+'Nip  \n'; }
				if(jav_operador_2==''){nulos2=nulos2+'Operador  \n'; }
				if(jav_tipservice2==''){nulos2=nulos2+'Tipo servicio  \n'; }
				if(jav_planservice2==''){nulos2=nulos2+'Plan  \n'; }
				if(jav_infoservice2==''){nulos2=nulos2+'Informacion  \n'; }
				if(jav_service2==''){nulos2=nulos2+'Servicio  \n'; }
				if(jav_fecha_venta_2==''){nulos2=nulos2+'Fecha venta linea:fecha_venta_2 \n'; }
				if(jav_obs_2==''){nulos2=nulos2+'Observacion linea:obs_2 \n'; }
			}
			if(jav_nline >=3){
				if(jav_doc_sus3==''){nulos3=nulos3+'Documento  \n'; }
				if(jav_name_sus3==''){nulos3=nulos3+'Nombre  \n'; }
				if(jav_apel_sus3==''){nulos3=nulos3+'Apellido  \n'; }
				if(jav_tipo_3==''){nulos3=nulos3+'Tipo  \n'; }
				if(jav_linea_3==''){nulos3=nulos3+'Linea  \n'; }
				if(jav_otro_3==''){nulos3=nulos3+'Otro  \n'; }
				if(jav_nip_3==''){nulos3=nulos3+'Nip  \n'; }
				if(jav_operador_3==''){nulos3=nulos3+'Operador  \n'; }
				if(jav_tipservice3==''){nulos3=nulos3+'Tipo servicio  \n'; }
				if(jav_planservice3==''){nulos3=nulos3+'Plan  \n'; }
				if(jav_infoservice3==''){nulos3=nulos3+'Informacion  \n'; }
				if(jav_service3==''){nulos3=nulos3+'Servicio  \n'; }
				if(jav_fecha_venta_3==''){nulos3=nulos3+'Fecha venta linea:fecha_venta_3 \n'; }
				if(jav_obs_3==''){nulos3=nulos3+'Observacion linea:obs_3 \n'; }
			}
			if(jav_nline >=4){
				if(jav_doc_sus4==''){nulos4=nulos4+'Documento  \n'; }
				if(jav_name_sus4==''){nulos4=nulos4+'Nombre  \n'; }
				if(jav_apel_sus4==''){nulos4=nulos4+'Apellido  \n'; }
				if(jav_tipo_4==''){nulos4=nulos4+'Tipo  \n'; }
				if(jav_linea_4==''){nulos4=nulos4+'Linea  \n'; }
				if(jav_otro_4==''){nulos4=nulos4+'Otro  \n'; }
				if(jav_nip_4==''){nulos4=nulos4+'Nip  \n'; }
				if(jav_operador_4==''){nulos4=nulos4+'Operador  \n'; }
				if(jav_tipservice4==''){nulos4=nulos4+'Tipo servicio  \n'; }
				if(jav_planservice4==''){nulos4=nulos4+'Plan  \n'; }
				if(jav_infoservice4==''){nulos4=nulos4+'Informacion  \n'; }
				if(jav_service4==''){nulos4=nulos4+'Servicio  \n'; }
				if(jav_fecha_venta_4==''){nulos4=nulos4+'Fecha venta linea:fecha_venta_4 \n'; }
				if(jav_obs_4==''){nulos4=nulos4+'Observacion linea:obs_4 \n'; }
			}
			if(jav_nline >=5){
				if(jav_doc_sus5==''){nulos5=nulos5+'Documento  \n'; }
				if(jav_name_sus5==''){nulos5=nulos5+'Nombre  \n'; }
				if(jav_apel_sus5==''){nulos5=nulos5+'Apellido  \n'; }
				if(jav_tipo_5==''){nulos5=nulos5+'Tipo  \n'; }
				if(jav_linea_5==''){nulos5=nulos5+'Linea  \n'; }
				if(jav_otro_5==''){nulos5=nulos5+'Otro  \n'; }
				if(jav_nip_5==''){nulos5=nulos5+'Nip  \n'; }
				if(jav_operador_5==''){nulos5=nulos5+'Operador  \n'; }
				if(jav_tipservice5==''){nulos5=nulos5+'Tipo servicio  \n'; }
				if(jav_planservice5==''){nulos5=nulos5+'Plan  \n'; }
				if(jav_infoservice5==''){nulos5=nulos5+'Informacion  \n'; }
				if(jav_service5==''){nulos5=nulos5+'Servicio  \n'; }
				if(jav_fecha_venta_5==''){nulos5=nulos5+'Fecha venta linea:fecha_venta_5 \n'; }
				if(jav_obs_5==''){nulos5=nulos5+'Observacion linea:obs_5 \n'; }
			}
			if(jav_nline >=6){
				if(jav_doc_sus6==''){nulos6=nulos6+'Documento  \n'; }
				if(jav_name_sus6==''){nulos6=nulos6+'Nombre  \n'; }
				if(jav_apel_sus6==''){nulos6=nulos6+'Apellido  \n'; }
				if(jav_tipo_6==''){nulos6=nulos6+'Tipo  \n'; }
				if(jav_linea_6==''){nulos6=nulos6+'Linea  \n'; }
				if(jav_otro_6==''){nulos6=nulos6+'Otro  \n'; }
				if(jav_nip_6==''){nulos6=nulos6+'Nip  \n'; }
				if(jav_operador_6==''){nulos6=nulos6+'Operador  \n'; }
				if(jav_tipservice6==''){nulos6=nulos6+'Tipo servicio  \n'; }
				if(jav_planservice6==''){nulos6=nulos6+'Plan  \n'; }
				if(jav_infoservice6==''){nulos6=nulos6+'Informacion  \n'; }
				if(jav_service6==''){nulos6=nulos6+'Servicio  \n'; }
				if(jav_fecha_venta_6==''){nulos6=nulos6+'Fecha venta linea:fecha_venta_6 \n'; }
				if(jav_obs_6==''){nulos6=nulos6+'Observacion linea:obs_6 \n'; }
			}
			if(jav_nline >=7){
				if(jav_doc_sus7==''){nulos7=nulos7+'Documento  \n'; }
				if(jav_name_sus7==''){nulos7=nulos7+'Nombre  \n'; }
				if(jav_apel_sus7==''){nulos7=nulos7+'Apellido  \n'; }
				if(jav_tipo_7==''){nulos7=nulos7+'Tipo  \n'; }
				if(jav_linea_7==''){nulos7=nulos7+'Linea  \n'; }
				if(jav_otro_7==''){nulos7=nulos7+'Otro  \n'; }
				if(jav_nip_7==''){nulos7=nulos7+'Nip  \n'; }
				if(jav_operador_7==''){nulos7=nulos7+'Operador  \n'; }
				if(jav_tipservice7==''){nulos7=nulos7+'Tipo servicio  \n'; }
				if(jav_planservice7==''){nulos7=nulos7+'Plan  \n'; }
				if(jav_infoservice7==''){nulos7=nulos7+'Informacion  \n'; }
				if(jav_service7==''){nulos7=nulos7+'Servicio  \n'; }
				if(jav_fecha_venta_7==''){nulos7=nulos7+'Fecha venta linea:fecha_venta_7 \n'; }
				if(jav_obs_7==''){nulos7=nulos7+'Observacion linea:obs_7 \n'; }
			}
			if(jav_nline >=8){
				if(jav_doc_sus8==''){nulos8=nulos8+'Documento  \n'; }
				if(jav_name_sus8==''){nulos8=nulos8+'Nombre  \n'; }
				if(jav_apel_sus8==''){nulos8=nulos8+'Apellido  \n'; }
				if(jav_tipo_8==''){nulos8=nulos8+'Tipo  \n'; }
				if(jav_linea_8==''){nulos8=nulos8+'Linea  \n'; }
				if(jav_otro_8==''){nulos8=nulos8+'Otro  \n'; }
				if(jav_nip_8==''){nulos8=nulos8+'Nip  \n'; }
				if(jav_operador_8==''){nulos8=nulos8+'Operador  \n'; }
				if(jav_tipservice8==''){nulos8=nulos8+'Tipo servicio  \n'; }
				if(jav_planservice8==''){nulos8=nulos8+'Plan  \n'; }
				if(jav_infoservice8==''){nulos8=nulos8+'Informacion  \n'; }
				if(jav_service8==''){nulos8=nulos8+'Servicio  \n'; }
				if(jav_fecha_venta_8==''){nulos8=nulos8+'Fecha venta linea:fecha_venta_8 \n'; }
				if(jav_obs_8==''){nulos8=nulos8+'Observacion linea:obs_8 \n'; }
			}
			if(jav_nline >=9){
				if(jav_doc_sus9==''){nulos9=nulos9+'Documento  \n'; }
				if(jav_name_sus9==''){nulos9=nulos9+'Nombre  \n'; }
				if(jav_apel_sus9==''){nulos9=nulos9+'Apellido  \n'; }
				if(jav_tipo_9==''){nulos9=nulos9+'Tipo  \n'; }
				if(jav_linea_9==''){nulos9=nulos9+'Linea  \n'; }
				if(jav_otro_9==''){nulos9=nulos9+'Otro  \n'; }
				if(jav_nip_9==''){nulos9=nulos9+'Nip  \n'; }
				if(jav_operador_9==''){nulos9=nulos9+'Operador  \n'; }
				if(jav_tipservice9==''){nulos9=nulos9+'Tipo servicio  \n'; }
				if(jav_planservice9==''){nulos9=nulos9+'Plan \n'; }
				if(jav_infoservice9==''){nulos9=nulos9+'Informacion  \n'; }
				if(jav_service9==''){nulos9=nulos9+'Servicio \n'; }
				if(jav_fecha_venta_9==''){nulos9=nulos9+'Fecha venta \n'; }
				if(jav_obs_9==''){nulos9=nulos9+'Observacion \n'; }
			}
			if(jav_nline >=10){
				if(jav_doc_sus10==''){nulos10=nulos10+'Documento \n'; }
				if(jav_name_sus10==''){nulos10=nulos10+'Nombre \n'; }
				if(jav_apel_sus10==''){nulos10=nulos10+'Apellido \n'; }
				if(jav_tipo_10==''){nulos10=nulos10+'Tipo \n'; }
				if(jav_linea_10==''){nulos10=nulos10+'Linea \n'; }
				if(jav_otro_10==''){nulos10=nulos10+'Otro \n'; }
				if(jav_nip_10==''){nulos10=nulos10+'Nip \n'; }
				if(jav_operador_10==''){nulos10=nulos10+'Operador \n'; }
				if(jav_tipservice10==''){nulos10=nulos10+'Tipo servicio \n'; }
				if(jav_planservice10==''){nulos10=nulos10+'Plan \n'; }
				if(jav_infoservice10==''){nulos10=nulos10+'Informacion \n'; }
				if(jav_service10==''){nulos10=nulos10+'Servicio \n'; }
				if(jav_fecha_venta_10==''){nulos10=nulos10+'Fecha venta \n'; }
				if(jav_obs_10==''){nulos10=nulos10+'Observacion \n'; }

			}
			
			if (nulos == ""){
				$('#worka'+area).load('encuesta.php?cl='+clsel+'&serv='+servsel);
			}else{
					alert('Campos vacios en el modulo: \n'+nulos);
					if(nulos1 != ""){
						alert('campos vacios en la linea 1: \n'+nulos1);
					}
					if(nulos2 != ""){
						alert('campos vacios en la linea 2: \n'+nulos1);
					}
					if(nulos3 != ""){
						alert('campos vacios en la linea 3: \n'+nulos1);
					}
					if(nulos4 != ""){
						alert('campos vacios en la linea 4: \n'+nulos1);
					}
					if(nulos5 != ""){
						alert('campos vacios en la linea 5: \n'+nulos1);
					}
					if(nulos6 != ""){
						alert('campos vacios en la linea 6: \n'+nulos1);
					}
					if(nulos7 != ""){
						alert('campos vacios en la linea 7: \n'+nulos1);
					}
					if(nulos8 != ""){
						alert('campos vacios en la linea 8: \n'+nulos1);
					}
					if(nulos9 != ""){
						alert('campos vacios en la linea 9: \n'+nulos1);
					}
					if(nulos10 != ""){
						alert('campos vacios en la linea 10: \n'+nulos1);
					}
			}
			
		}	
		function workarea(area,page){
			var asesor = $('#asesor').val();
			var clsel = $('#cl_sel').val();
			var servsel = $('#ser_sel').val();
			
			
			if (page=='tipif'){
				var error='';
				if(error == ''){
					$('#worka'+area).load(page+'.php?cl='+clsel+'&serv='+servsel+'&areaW='+area);
				}else{
					alert('Para abrir la agenda debe diligenciar todos los campos del modulo.');
				}
			}else{
				$('#worka'+area).load(page+'.php?cl='+clsel+'&serv='+servsel);
			}
			$('#modulo_n').hide('');
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
		
		function modDiv(area,page){
			if( $('#modulo_n').is(":visible") ){
				$('#modulo_n').hide('');
			}else{
				$('#modulo_n').show('');
			}
		}
		function aMayusculas(obj,id){
			obj = obj.toUpperCase();
			document.getElementById(id).value = obj;
		}
		
		
		$(function() {
			$(document).keydown(function(e){
				var code = (e.keyCode ? e.keyCode : e.which);
				
				if(code == 116) {
					e.preventDefault();
				}
				if(code == 8) {
					
				}
			});
		});
	</script>
</head>
    <body>
	
        <?php
		$rowcl_id=0;
		$rowcl_name="";
		$basenull=0;
		$callback=0;
		
			$sqlser = "SELECT * FROM crmpa_clientes where id_cl=".$_GET['id_cl']." limit 1";
			foreach($pdo->query($sqlser) as $row_cl){
				$rowcl_id=$row_cl['id_cl'];
				$rowcl_name=$row_cl['nombre'];
				$basenull++;
			}
			
		?>	
			
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
							
						<?php
							echo "<li>
										<a href='#' style='background-color:#36a1d9;border: 1px solid #db7038; display: inline-block;'>".$pdate."</a>
									</li>";
							if ($callback==1){
								echo "<li>
										<a href='#' style='background-color:#36a1d9;border: 1px solid #db7038; display: inline-block;'>Volver a llamar</a>
									</li>";
							}

							echo "<li>
								<a href='#' style='background-color:#36a1d9;border: 1px solid #db7038; display: inline-block;'>
									<input type='text' id='ser_sel' value='".$idserv."'>
									<input type='text' id='pdate_ini' value='".$pdate_ini."'>
									<input type='text' id='cl_sel' value='".$rowcl_id."'>CLIENTE: ".$rowcl_name."
								</a></li>"; ?>  
							<li>
                                <a href="../index.php" style='background-color:#36a1d9;border: 1px solid #db7038; display: inline-block;'>Logout</a>
                            </li>
                            
                        </ul>
                    </div>
                </div>
            </div>
        </div>
		<?php
		if($basenull==0){
		?>
			<div class="row" style="padding-left:30px;padding-top:100px;" align="center">
				<div class="span16">
					<div class="box">
						<div class="box-content">
							No hay más registros para mostrar.
							<script>setInterval(function() {location.reload();}, 5000);</script>
						</div>
					</div>
				</div>
			</div>
		<?php
		}else{
		?>
		
		<div id="body-container">
            <div id="body-content">
                
					<div class="body-nav body-nav-verticalR body-nav-fixed">
                        <div class="container">
                            <ul>
                                <li>
                                    <a href="#" onclick="workarea('1','basic');">
                                        <i class="icon-dashboard icon-large"></i> Info. Básica
                                    </a>
                                </li>
                                <li>
                                    <a href="#" onclick="workarea('1','guion');">
                                        <i class="icon-list-alt icon-large"></i> Guión
                                    </a>
                                </li>
                                <li>
                                    <a href="#" onclick="workarea('1','hist');">
                                        <i class="icon-upload icon-large"></i> Hist. Cliente
                                    </a> 
                                </li> 
                                <li>
                                    <a href="#" onclick="modDiv('3','modulo');">
                                        <i class="icon-th icon-large"></i> Módulo
                                    </a>
                                </li>
                                <!--<li>
                                    <a href="#" onclick="workarea('1','encuesta');">
                                        <i class="icon-list icon-large"></i> Encuesta
                                    </a>
                                </li>-->
                                <li>
                                    <a href="#" onclick="workarea('1','tipif');">
                                        <i class="icon-tasks icon-large"></i> Tipif
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="body-nav body-nav-vertical body-nav-fixed">
                        <div class="container">
                            <ul>
                                <li>
                                    <a href="#" onclick="workarea('2','basic');">
                                        <i class="icon-dashboard icon-large"></i> Info. Básica
                                    </a>
                                </li>
                                <li>
                                    <a href="#" onclick="workarea('2','guion');">
                                        <i class="icon-list-alt icon-large"></i> Guión
                                    </a>
                                </li>
                                <li>
                                    <a href="#" onclick="workarea('2','hist');">
                                        <i class="icon-upload icon-large"></i> Hist. Cliente
                                    </a>
                                </li>
                                <li>
                                    <a href="#" onclick="modDiv('3','modulo');">
                                        <i class="icon-th icon-large"></i> Módulo
                                    </a>
                                </li>
                                <!--<li>
                                    <a href="#" onclick="workarea('2','encuesta');">
                                        <i class="icon-list icon-large"></i> Encuesta
                                    </a>
                                </li>-->
								<li>
                                    <a href="#" onclick="workarea('2','tipif');">
                                        <i class="icon-tasks icon-large"></i> Tipif
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                
                
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
                    <div class="span16" id="modulo_n" style="display:none;">
                        <div class="box">
                            <div class="box-header">
                                <i class="icon-bar-chart"></i>
                                <h5>Module</h5>
                            </div>
                            <div class="box-content">
                                <div id="workm3"></div>
                            </div>
                        </div>
                    </div>
					<div class="span8">
                        <div class="box">
                            <div class="box-header">
                                <i class="icon-bar-chart"></i>
                                <h5>Work Area 1</h5>
                            </div>
                            <div class="box-content">
                                <div id="worka1"></div>
                            </div>
                        </div>
                    </div>
                    <div class="span8">
                        <div class="box">
                            <div class="box-header">
                                <i class="icon-bar-chart"></i>
                                <h5>Work Area 2</h5>
                            </div>
                            <div class="box-content" id="worka2" class="form-group">
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
		<?php
		}
		?>
        <footer class="application-footer">
            <div class="container">
                <p>AMERICAN BPO</p>
                <div class="disclaimer">
                    <p>Copyright © Acosin</p>
                </div>
				<div class="opciones" align="right">
					<?php if($basenull!=0){ ?>
					<div class="dropup" align="right">
					<?php }else{ ?>
					<div class="dropdown" align="right">
					<?php } ?>
						<button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Opciones Agente
							<span class="caret"></span>
						</button>
						<ul class="dropdown-menu dropdown-menu-left" style="margin-left:80%;text-align:left;">
							<li class="dropdown-header icon-retweet icon-large"> Estados</li>
							<li class="divider"></li>
							<li><a href="#" onclick="window.location='control_estado.php?new_est=bre';">Break</a></li>
							<li><a href="#" onclick="window.location='control_estado.php?new_est=alm';">Almuerzo</a></li>
							<li><a href="#" onclick="window.location='control_estado.php?new_est=ban';">Baño</a></li>
							<li><a href="#" onclick="window.location='control_estado.php?new_est=cap';">Capacitación</a></li>
							<li class="divider"></li> 
							<li class="dropdown-header icon-pushpin icon-large"> Opciones</li>
							<li><a href="#" onclick="window.location='searchin.php?idserv=<?php echo $idserv;?>';">Atrás</a></li>
							<?php if($basenull!=0){ ?>
							<li><a href="#">Calificar y atrás</a></li>
							<?php } ?>
							<li class="divider"></li>
						</ul>
					</div>
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
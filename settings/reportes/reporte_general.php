<?php
require_once('../../src/connect.php'); 

$fecini=$_GET['fecini'];
$fecfin=$_GET['fecfin'];
$servicio=$_GET['servicio'];

$consulta = "
select A.id_calif,A.id_cl,B.nombre as cliente, id_agente ,concat(C.nombre ,C.apellido) as agente, fec_ini , fec_fin , calif , D.perfil, B.telefono, B.celular, B.email, B.ciudad, B.tipo_documento, B.documento
from  crmpa_calificaciones A 
inner join crmpa_clientes B on A.id_cl = B.id_cl
inner join crmpa_usuarios C on A.id_agente = C.id
inner join crmpa_perfiles D on A.perfil = D.id
where A.fec_ini >='".$fecini." 00:00:00'
AND A.fec_fin <='".$fecfin." 23:59:59'
AND A.id_serv=".$servicio."
ORDER BY A.id_calif desc";

$vacio=0;
	
		date_default_timezone_set('America/Mexico_City');

		if (PHP_SAPI == 'cli')
			die('Este archivo solo se puede ver desde un navegador web');

		/** Se agrega la libreria PHPExcel */
		require_once 'lib/PHPExcel/PHPExcel.php';

		// Se crea el objeto PHPExcel
		$objPHPExcel = new PHPExcel();

		// Se asignan las propiedades del libro
		$objPHPExcel->getProperties()->setCreator("Codedrinks") //Autor
							 ->setLastModifiedBy("Codedrinks") //Ultimo usuario que lo modificó
							 ->setTitle("Reporte Excel ")
							 ->setSubject("Reporte Excel ")
							 ->setDescription("Reporte")
							 ->setKeywords("reporte")
							 ->setCategory("Reporte excel");

		$tituloReporte = "REPORTE GESTIÓN BPO";
		
		$titulosColumnas = array('ID CALIFICACION','ID CLIENTE','CLIENTE','TELEFONO','CELULAR','EMAIL','CIUDAD','TIPO DOCUMENTO','DOCUMENTO','ID AGENTE','AGENTE','FECHA INICIO','FECHA FIN','CALIF','PERFIL');
		
		$objPHPExcel->setActiveSheetIndex(0)
        		    ->mergeCells('A1:O1');
						
		// Se agregan los titulos del reporte
		$objPHPExcel->setActiveSheetIndex(0)
					->setCellValue('A1',$tituloReporte)
                    ->setCellValue('A3',  $titulosColumnas[0])
        		    ->setCellValue('B3',  $titulosColumnas[1])
		            ->setCellValue('C3',  $titulosColumnas[2])
					->setCellValue('D3',  $titulosColumnas[3])
					->setCellValue('E3',  $titulosColumnas[4])
					->setCellValue('F3',  $titulosColumnas[5])
					->setCellValue('G3',  $titulosColumnas[6])
					->setCellValue('H3',  $titulosColumnas[7])
					->setCellValue('I3',  $titulosColumnas[8])
					->setCellValue('J3',  $titulosColumnas[9])
            		->setCellValue('K3',  $titulosColumnas[10])
					->setCellValue('L3',  $titulosColumnas[11])
					->setCellValue('M3',  $titulosColumnas[12])
					->setCellValue('N3',  $titulosColumnas[13])
					->setCellValue('O3',  $titulosColumnas[14]);
					
		
		//Se agregan los datos de los alumnos
		$i = 4;
		foreach($pdo->query($consulta) as $row){
		$vacio++;				
		//while ($fila = $resultado->fetch_array()) {
			$objPHPExcel->setActiveSheetIndex(0)
        		    ->setCellValue('A'.$i, utf8_encode($row['id_calif']))
					->setCellValue('B'.$i, utf8_encode($row['id_cl']))
		            ->setCellValue('C'.$i, utf8_encode($row['cliente']))
					->setCellValue('D'.$i, utf8_encode($row['telefono']))
					->setCellValue('E'.$i, utf8_encode($row['celular']))
					->setCellValue('F'.$i, utf8_encode($row['email']))
					->setCellValue('G'.$i, utf8_encode($row['ciudad']))
					->setCellValue('H'.$i, utf8_encode($row['tipo_documento']))
					->setCellValue('I'.$i, utf8_encode($row['documento']))
					->setCellValue('J'.$i, utf8_encode($row['id_agente']))
					->setCellValue('K'.$i, utf8_encode($row['agente']))
					->setCellValue('L'.$i, utf8_encode($row['fec_ini']))
					->setCellValue('M'.$i, utf8_encode($row['fec_fin']))
					->setCellValue('N'.$i, utf8_encode($row['calif']))
					->setCellValue('O'.$i, utf8_encode($row['perfil']));
					$i++;
		}
		
		$estiloTituloReporte = array(
        	'font' => array(
	        	'name'      => 'Verdana',
    	        'bold'      => true,
        	    'italic'    => false,
                'strike'    => false,
               	'size' =>16,
	            	'color'     => array(
    	            	'rgb' => 'FFFFFF'
        	       	)
            ),
	        'fill' => array(
				'type'	=> PHPExcel_Style_Fill::FILL_SOLID,
				'color'	=> array('argb' => 'FF220835')
			),
            'borders' => array(
               	'allborders' => array(
                	'style' => PHPExcel_Style_Border::BORDER_NONE                    
               	)
            ), 
            'alignment' =>  array(
        			'horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER,
        			'vertical'   => PHPExcel_Style_Alignment::VERTICAL_CENTER,
        			'rotation'   => 0,
        			'wrap'          => TRUE
    		)
        );

		$estiloTituloColumnas = array(
            'font' => array(
                'name'      => 'Arial',
                'bold'      => true,                          
                'color'     => array(
                    'rgb' => 'FFFFFF'
                )
            ),
            'fill' 	=> array(
				'type'		=> PHPExcel_Style_Fill::FILL_GRADIENT_LINEAR,
				'rotation'   => 90,
        		'startcolor' => array(
            		'rgb' => '6495ED'
        		),
        		'endcolor'   => array(
            		'argb' => 'FF4169E1'
        		)
			),
            'borders' => array(
            	'top'     => array(
                    'style' => PHPExcel_Style_Border::BORDER_MEDIUM ,
                    'color' => array(
                        'rgb' => '143860'
                    )
                ),
                'bottom'     => array(
                    'style' => PHPExcel_Style_Border::BORDER_MEDIUM ,
                    'color' => array(
                        'rgb' => '143860'
                    )
                )
            ),
			'alignment' =>  array(
        			'horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER,
        			'vertical'   => PHPExcel_Style_Alignment::VERTICAL_CENTER,
        			'wrap'          => TRUE
    		));
			
		$estiloInformacion = new PHPExcel_Style();
		$estiloInformacion->applyFromArray(
			array(
           		'font' => array(
               	'name'      => 'Arial',               
               	'color'     => array(
                   	'rgb' => '000000'
               	)
           	),
           	'fill' 	=> array(
				'type'		=> PHPExcel_Style_Fill::FILL_SOLID,
				'color'		=> array('argb' => 'FFAFEEEE')
			),
           	'borders' => array(
               	'left'     => array(
                   	'style' => PHPExcel_Style_Border::BORDER_THIN ,
	                'color' => array(
    	            	'rgb' => 'FFCCC'
                   	)
               	)             
           	)
        ));
		 
		$objPHPExcel->getActiveSheet()->getStyle('A1:O1')->applyFromArray($estiloTituloReporte);
		$objPHPExcel->getActiveSheet()->getStyle('A3:O3')->applyFromArray($estiloTituloColumnas);		
		$objPHPExcel->getActiveSheet()->setSharedStyle($estiloInformacion, "A4:O".($i-1));
				
		for($i = 'A'; $i <= 'O'; $i++){
			$objPHPExcel->setActiveSheetIndex(0)			
				->getColumnDimension($i)->setAutoSize(TRUE);
		}
		
		// Se asigna el nombre a la hoja
		$objPHPExcel->getActiveSheet()->setTitle("Calificaciones");

		// Se activa la hoja para que sea la que se muestre cuando el archivo se abre
		$objPHPExcel->setActiveSheetIndex(0);
		// Inmovilizar paneles 
		//$objPHPExcel->getActiveSheet(0)->freezePane('A4');
		$objPHPExcel->getActiveSheet(0)->freezePaneByColumnAndRow(0,4);

		// Se manda el archivo al navegador web, con el nombre que se indica (Excel2007)
		header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
		header('Content-Disposition: attachment;filename="ReporteGestion.xlsx"');
		header('Cache-Control: max-age=0');

		$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
		$objWriter->save('php://output');
		exit;
	
	if ($vacio==0){
		print_r('No hay resultados para mostrar');
	}
?>

<?php
require_once('../../src/connect.php'); 

$fecini=$_GET['fecini'];
$fecfin=$_GET['fecfin'];

$consulta = "
select B.nombre,B.id_cl,B.celular,A.back1,A.back_fec1,A.back_obs1
from crmpa_modulo_1 A
inner join crmpa_clientes B on A.id_cl = B.id_cl
inner left crmgest_back1 C on A.id_modulo = C.id_modulo
inner join crmpa_calificaciones D on A.id_calif = D.id_calif
where A.paso_now = 3
";

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

		$tituloReporte = "REPORTE REGISTROS PASO 3";
		
		$titulosColumnas = array('ID CLIENTE','NOMBRE','CELULAR','BACKOFFICE','OBSERVACION','FECHA PASO 2');
		
		$objPHPExcel->setActiveSheetIndex(0)
        		    ->mergeCells('A1:F1');
						
		// Se agregan los titulos del reporte
		$objPHPExcel->setActiveSheetIndex(0)
					->setCellValue('A1',$tituloReporte)
                    ->setCellValue('A3',  $titulosColumnas[0])
        		    ->setCellValue('B3',  $titulosColumnas[1])
					->setCellValue('C3',  $titulosColumnas[1])
					->setCellValue('D3',  $titulosColumnas[1])
					->setCellValue('E3',  $titulosColumnas[1])
		            ->setCellValue('F3',  $titulosColumnas[2]);
					
		
		//Se agregan los datos de los alumnos
		$i = 4;
		foreach($pdo->query($consulta) as $row){
		$vacio++;				
		//while ($fila = $resultado->fetch_array()) {
			$objPHPExcel->setActiveSheetIndex(0)
        		    ->setCellValue('A'.$i, utf8_encode($row['id_cl']))
					->setCellValue('B'.$i, utf8_encode($row['nombre']))
					->setCellValue('B'.$i, utf8_encode($row['nombre']))
					->setCellValue('C'.$i, utf8_encode($row['nombre']))
					->setCellValue('D'.$i, utf8_encode($row['nombre']))
					->setCellValue('E'.$i, utf8_encode($row['nombre']))
		            ->setCellValue('F'.$i, utf8_encode($row['celular']));
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
		 
		$objPHPExcel->getActiveSheet()->getStyle('A1:F1')->applyFromArray($estiloTituloReporte);
		$objPHPExcel->getActiveSheet()->getStyle('A3:F3')->applyFromArray($estiloTituloColumnas);		
		$objPHPExcel->getActiveSheet()->setSharedStyle($estiloInformacion, "A4:F".($i-1));
				
		for($i = 'A'; $i <= 'F'; $i++){
			$objPHPExcel->setActiveSheetIndex(0)			
				->getColumnDimension($i)->setAutoSize(TRUE);
		}
		
		// Se asigna el nombre a la hoja
		$objPHPExcel->getActiveSheet()->setTitle("PASO 2");

		// Se activa la hoja para que sea la que se muestre cuando el archivo se abre
		$objPHPExcel->setActiveSheetIndex(0);
		// Inmovilizar paneles 
		//$objPHPExcel->getActiveSheet(0)->freezePane('A4');
		$objPHPExcel->getActiveSheet(0)->freezePaneByColumnAndRow(0,4);

		// Se manda el archivo al navegador web, con el nombre que se indica (Excel2007)
		header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
		header('Content-Disposition: attachment;filename="ReporteBack3.xlsx"');
		header('Cache-Control: max-age=0');

		$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
		$objWriter->save('php://output');
		exit;
	
	if ($vacio==0){
		print_r('No hay resultados para mostrar');
	}
?>

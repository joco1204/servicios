<div class="row">
            <div class="span16">
                <div class="box">
                    <div class="box-header">
                        <i class="icon-bookmark"></i>
                        <h5>Módulos</h5>
                    </div>
                    <div class="box-content">
                        <div class="btn-group-box" align="center">
                            <button class="btn"><i class="icon-dashboard icon-large"></i><br/>Monitoreo</button>
                            <button class="btn"><i class="icon-list-alt icon-large"></i><br/>Reportes</button>
                            <button class="btn"><i class="icon-upload icon-large"></i><br/>Subir base</button>
							<button class="btn"><i class="icon-tasks icon-large"></i><br/>Calificaciones</button>
                            <button class="btn"><i class="icon-th icon-large"></i><br/>Control Empresas</button>
                            <button class="btn"><i class="icon-list icon-large"></i><br/>Control Servicios</button>
                            <button class="btn"><i class="icon-book icon-large"></i><br/>Control Cargues</button>
							<button class="btn"><i class="icon-user icon-large"></i><br/>Usuarios</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
			
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
                        

<script type="text/javascript">
    google.load('visualization', '1', {'packages': ['corechart']});
    google.setOnLoadCallback(drawVisualization);
    
    function drawVisualization() {
        visualization_data = new google.visualization.DataTable();
        
        visualization_data.addColumn('string', 'Task');
        
        visualization_data.addColumn('number', 'Hours per Day');
        
        
        visualization_data.addRow(['Avantel 1', 11]);
        
        visualization_data.addRow(['Avantel 2', 2]);
        
        visualization_data.addRow(['Avantel 3', 2]);
        
        visualization_data.addRow(['Avantel 4', 2]);
        
        visualization_data.addRow(['Avantel 5', 7]);
        
      
        visualization = new google.visualization.PieChart(document.getElementById('piechart'));

        



        
        
        visualization.draw(visualization_data, {title: '', height: 260});

        
    }
</script>

                        <div class="box">
                            <div class="box-header">
                                <i class="icon-bar-chart"></i>
                                <h5>Calificaciones General</h5>
                            </div>
                            <div class="box-content">
                                <div id="piechart"></div>
                            </div>
                        </div>
                    </div>
                    <div class="span8">
                        <div class="box pattern pattern-sandstone">
                            <div class="box-header">
                                <i class="icon-table"></i>
                                <h5>
                                    Servicios
                                </h5>
                            </div>
                            <div class="box-content box-table">
                                <table id="sample-table" class="table table-hover table-bordered tablesorter">
                                    <thead>
                                        <tr>
                                            <th>Servicio</th>
                                            <th class="td-actions">Estado</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Avantel Outbound</td>
                                            <td class="td-actions">
                                                <a href="javascript:;" class="btn btn-small btn-info">
                                                    <i class="btn-icon-only icon-ok"></i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Avantel Inbound</td>
                                            <td class="td-actions">
                                                <a href="javascript:;" class="btn btn-small btn-danger">
                                                    <i class="btn-icon-only icon-remove"></i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Avantel</td>
                                            <td class="td-actions">
                                                <a href="javascript:;" class="btn btn-small btn-danger">
                                                    <i class="btn-icon-only icon-remove"></i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Avantel 2</td>
                                            <td class="td-actions">
                                                <a href="javascript:;" class="btn btn-small btn-info">
                                                    <i class="btn-icon-only icon-ok"></i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Avantel 3</td>
                                            <td class="td-actions">
                                                <a href="javascript:;" class="btn btn-small btn-info">
                                                    <i class="btn-icon-only icon-ok"></i>
                                                </a>
                                            </td>
                                        </tr>
										
									</tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
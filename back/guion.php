<?php 
	require_once('../src/connect.php'); 
?>
<form class="form-horizontal">
  <div class="table-responsive">
    <table class="table table-bordered table-striped table-highlight">
		<thead>
			<th>Guión</th>
		</thead>
		  <tbody>
			<tr>
				<td>
				
				Buenas tardes. me comunico con el señor tal. del servicio <?php echo $_GET['serv']?>
				
				<?php
				$sql = "SELECT * FROM crmpa_guiones where idserv=".$_GET['serv'];
				
				foreach($pdo->query($sql) as $row){
					echo $row['guion'];
				}
				?>
				
				</td>
			</tr>
		  </tbody>
    </table>
  </div>
</form>
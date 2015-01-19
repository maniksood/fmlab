<?php $title = "Result"; ?><?php $exp = $_GET['exp']; ?>

<?php include 'header.php' ?>

	<div class="collapse navbar-collapse navbar-ex1-collapse">
 			<ul class="nav navbar-nav">
 				<li><a href="aim.php?exp=<?php echo $exp ?>">Aim</a></li>
 				<li><a href="theory.php?exp=<?php echo $exp ?>">Theory</a></li>
 				<li><a href="procedure.php?exp=<?php echo $exp ?>">Procedure</a></li>
 				<li><a href="observations-<?php echo $exp ?>.php?exp=<?php echo $exp ?>">Observations</a></li>
 				<li class="active"><a href="result-<?php echo $exp ?>.php?exp=<?php echo $exp ?>">Result</a></li>
 			</ul>
 		</div><!-- /.navbar-collapse -->
 	</nav>


 <div class="container">
		<?php 
			$select = "select * from vnotch where userid = '$userid'";
			$result = mysql_query($select); ?>
			<table class="table table-bordered table-hover" border="1">
			 	<thead>
			 		<tr>
			 			<th><center>Angle, &theta;</center></th>
			 			<th><center>H</center></th>
			 			<th><center>g</center></th>
			 			<th><center>Area</center></th>
			 			<th><center>h<sub>i</sub></center></th>
			 			<th><center>h<sub>f</sub></center></th>
			 			<th><center>Time, t</center></th>
			 			<th><center>Q<sub>act</sub></center></th>
			 			<th><center>Q<sub>th</sub></center></th>
			 			<th><center>C<sub>d</sub></center></th>
			 			<th><center>Delete</center></th>
			 		</tr>
			 	</thead>
			 	<tbody>

			<?php
			while ($res = mysql_fetch_assoc($result)) { ?>
				<tr>
					<td><center><?php echo $res['angle']; ?></center></td>
					<td><center><?php echo $res['H']; ?></center></td>
					<td><center><?php echo $res['g']; ?></center></td>
					<td><center><?php echo $res['area']; ?></center></td>
					<td><center><?php echo $res['hi']; ?></center></td>
					<td><center><?php echo $res['hf']; ?></center></td>
					<td><center><?php echo $res['time']; ?></center></td>
		 			<td><center><?php echo $res['qa']; ?></center></td>
		 			<td><center><?php echo $res['qt']; ?></center></td>
		 			<td><center><?php echo $res['cd']; ?></center></td>
		 			<td><center><a href="delete2.php?id=<?php echo $res['id'] ?>">Delete</a></center></td>
		 		</tr>
		 	
			<?php 
			}
		 ?>
				 </tbody>
		 </table>

		<?php 
			$i = 0.0000000000000001;
			$result = 0;
			$select1 = "select * from vnotch";
			$result1 = mysql_query($select1);
			while ($res1 = mysql_fetch_assoc($result1)){
				$i++;
				$result = $result + $res1['cd'];
			}
			$result = $result/$i;
		 ?>
		 <div class="col-md-3"></div>
		 <div class="col-md-6">
		 <h2>Result</h2>
			 <table class="table table-bordered table-hover" border="3">
			 	<thead>
			 		<tr>
			 			<th>Average value of C<sub>d</sub></th>
			 			<td><?php echo $result ?></td>
			 		</tr>
			 	</thead>
			 </table>
		 </div>
		 <div class="col-md-3"></div>
		 <div class="clearfix"></div>

	     <div class="col-md-3"></div>
		 <div class="col-md-6">
		 	<?php if ($result < 0.60 || $result > 0.75) {
		 		echo "<div class='jumbotron'>";
			 	echo "<center><p>The value of C<sub>d</sub> should lie between 0.60 to 0.75.</p></center>";
			 	echo "<center><p>Please repeat the experiment for proper results";
			 	echo " or take more readings for more accurate results</p></center>";
			 	echo "<center><a href='delete.php?exp=vnotch'><button type='button' class='btn btn-danger'>Do Experiment Again</button></a></center>";
			 	echo "<center><span class='label blue'>(Delete all the taken observations)</span></center>";
			 	echo "</div>";
			} ?>
		 </div>
		 <div class="col-md-3"></div>
		 <div class="clearfix"></div>
		
		

	</div>    <!-- end container -->

<?php include 'footer.php' ?>

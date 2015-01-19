<?php $title = "Observations"; ?><?php $exp = $_GET['exp']; ?>

<?php include 'header.php' ?>



	<div class="collapse navbar-collapse navbar-ex1-collapse">
 			<ul class="nav navbar-nav">
 				<li><a href="aim.php?exp=<?php echo $exp ?>">Aim</a></li>
 				<li><a href="theory.php?exp=<?php echo $exp ?>">Theory</a></li>
 				<li><a href="procedure.php?exp=<?php echo $exp ?>">Procedure</a></li>
 				<li class="active"><a href="observations-<?php echo $exp ?>.php?exp=<?php echo $exp ?>">Observations</a></li>
 				<li><a href="result-<?php echo $exp ?>.php?exp=<?php echo $exp ?>">Result</a></li>
 			</ul>
 		</div><!-- /.navbar-collapse -->
 	</nav>

 <div class="container">
	<div class="row">
		<div class="col-md-4">
			<center><h2>Q<sub style="text-decoration: underline;">theoritical</sub></h2></center>
			
			<center><h3>8/15 x &radic;(2g) x tan&theta; x H<sup>5/2</sup></h3></center>

			<br><br><br><br>
			<form action="" id="form1" method="post">

			
			
			<span class="label blue">Angle of V-notch (in degrees)</span>
			<input type="text" name="angle" id="angle" class="form-control" required="required" placeholder="Angle of V-notch (in degrees)">
			<span class="label blue">Height H (in cm)</span>
			<input type="text" name="H" id="" class="form-control" required="required" placeholder="Height H (in cm)">
			<span class="label blue">Value of g (in cm/s<sup>2</sup>)</span>
			<input type="text" name="g" id="" class="form-control" required="required" placeholder="value of g (in cm/s^2">
			<br><br><br><br>
		</div>
		<div class="col-md-4">
			<center><h2>Q<sub style="text-decoration: underline;">actual</sub></h2></center>
			
			<center><h3>Area of Tank * Difference in Height<br>---------------------------------------------<br>Time for which Reading is taken</h3></center>
			<span class="label blue">Area of tank (in cm<sup>2</sup>)</span>
			<input type="text" name="area" id="" class="form-control" required="required" placeholder="Area of Tank (in cm^2)">
			<span class="label blue">Initial Height (in cm)</span>
			<input type="text" name="hi" id="" class="form-control" required="required" placeholder="Initial Height (in cm)">
			<span class="label blue">Final Height (in cm)</span>
			<input type="text" name="hf" id="" class="form-control" required="required" placeholder="Final Height (in cm)">
			<span class="label blue">Time (in seconds)</span>
			<input type="text" name="time" id="" class="form-control" required="required" placeholder="Time (in secondss)">
			<br>
			
			<br><br>
		
		</div>
		<div class="col-md-4">
			<center><h2><u>Observations</u></h2></center><br>
			<div class="row">
				<div class="col-md-6">
					<span class="label blue">Click to Calculate</span>
			<input type="submit" name="calculate" onclick="myFunction()" value="Calculate" class="form-control btn-success">
				</div>
				<div class="col-md-6">
					<center><span class="label blue">(Delete all the observations)</span></center>
					<center><a href="delete.php?userid=<?php echo $userid ?>"><button type="button" class="btn btn-danger">Start Experiment Again</button></a></center>
				</div>
			</div>
			<br><br><br>
			
			<?php 
			$select = "select * from vnotch where userid = '$userid'";
			$result = mysql_query($select); ?>
			<table class="table table-bordered table-hover">
			 	<thead>
			 		<tr>
			 			<th>Q<sub>act</sub><span class="label blue">(cm<sup>3</sup>/s)</span></th>
			 			<th>Q<sub>th</sub><span class="label blue">(cm<sup>3</sup>/s)</span></th>
			 			<th>C<sub>d</sub></th>
			 			<th>Delete</th>
			 		</tr>
			 	</thead>
			 	<tbody>

			<?php
			while ($res = mysql_fetch_assoc($result)) { ?>
				<tr>
		 			<td><?php echo $res['qa']; ?></td>
		 			<td><?php echo $res['qt']; ?></td>
		 			<td><?php echo $res['cd']; ?></td>
		 			<td><center><a href="delete1.php?id=<?php echo $res['id'] ?>">Delete</a></center></td>
		 		</tr>
		 	
			<?php 
			}
		 ?>
		</div>
	</div>

	<div class="row">
	<div class="col-md-4">
		
			
			

		
	</div>

	<div class="col-md-4">
		

			
			
	</div>
	<div class="col-md-4">
		
				 </tbody>
		 </table>
	</div>
	</div>
	

	<div class="row">
		<div class="col-md-3">
			
		</div>
		<div class="col-md-3" style="display:none">
				<span class="label blue">Q<sub>Theoritical</sub> (cm<sup>3</sup>/s)</span>
				<input type="text" name="qt" id="" class="form-control" required="required" placeholder="Q-Theoritical (cm^3/s)">
		</div>
		<div class="col-md-3" style="display:none">
			<span class="label blue">Q<sub>Actual</sub> (cm<sup>3</sup>/s)</span>
			<input type="text" name="qa" id="" class="form-control" required="required" placeholder="Q-actual (cm^3/s)">
		</div>
		<div class="col-md-3" style="display:none"><span class="label blue"></span>
				<span class="label blue">C<sub>d</sub></span>
				<input type="text" name="cd" id="" class="form-control" required="required" placeholder="Cofficient of Discharge Cd"></div>
				</form>
	</div>
	</div>



</body>

<script>
	function myFunction() {
		var x = document.getElementById("form1");
		

		
		angle = x.elements[0].value;
		height = x.elements[1].value;
		g = x.elements[2].value;

		area = x.elements[3].value;
		initial_height = x.elements[4].value;
		final_height = x.elements[5].value;
		time = x.elements[6].value;
		

		x.elements[9].value = ((8/15) * Math.sqrt(2 * g) * Math.tan(angle/2*(Math.PI/180)) * Math.pow(height, 5/2));
		x.elements[10].value = ((area * (final_height-initial_height))/time);
		x.elements[11].value = (area * (final_height-initial_height)/time)/((8/15) * Math.sqrt(2 * g) * Math.tan(angle/2*(Math.PI/180)) * Math.pow(height, 5/2));


		return getData();
	}

function getData(e) {
    e.preventDefault();
}
</script>




</html>




 <?php 
	if(isset($_POST['calculate'])) 
 	{
 		$angle = $_POST['angle'];
		$H = $_POST['H'];
		$g = $_POST['g'];
		$area = $_POST['area'];
		$hi = $_POST['hi'];
		$hf = $_POST['hf'];
		$time = $_POST['time'];
		$qt = $_POST['qt'];
		$qa = $_POST['qa'];
		$cd = $_POST['cd'];

		mysql_query("INSERT INTO `vnotch`(`userid`,`id`, `angle`, `H`, `g`, `area`, `hi`, `hf`, `time`, `qt`, `qa`, `cd`) VALUES ($userid,'','$angle','$H','$g','$area','$hi','$hf','$time','$qt','$qa','$cd')");
		header("location:observations-vnotch.php?exp=vnotch");
	}

 ?>

<br><br><br><br>

<?php include 'footer.php' ?>
 

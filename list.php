<?php 
	ob_start();
	session_start();
	mysql_connect("localhost","root","");
	mysql_select_db("fmlab");
 ?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>FM Lab Experiments</title>
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="bootstrap-3.2.0-dist/css/bootstrap.css">
	<script src="js/jquery.js"></script>
	<script src="bootstrap-3.2.0-dist/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-default" role="navigation" style="background-color:rgb(35,45,116);color:white;">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			
			<a class="navbar-brand" href="#">FM Lab Experiments</a>
		</div>
	
		<!-- Collect the nav links, forms, and other content for toggling -->
<!-- 		<div class="collapse navbar-collapse navbar-ex1-collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Link</a></li>
				<li><a href="#">Link</a></li>
			</ul>
			<form class="navbar-form navbar-left" role="search">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search">
				</div>
				<button type="submit" class="btn btn-default">Submit</button>
			</form>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">Link</a></li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="#">Action</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something else here</a></li>
						<li><a href="#">Separated link</a></li>
					</ul>
				</li>
			</ul>
		</div><!-- /.navbar-collapse --> 
	</nav>

	<br><br>
	<div class="container">
		<div class="table-responsive">
			<table class="table table-hover" border="3" style="border-color:#428bca;">
				<thead>
					<tr>
						<th>List Of Experiments</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><a href="files/aim.php?exp=bernoulli">Verification of Bernoulli’s Theorem</a></td>
					</tr>
					<tr>
						<td><a href="files/aim.php?exp=friction-loss">Determination of Frictional Losses in Pipes</a></td>
					</tr>
					<tr>
						<td><a href="files/aim.php?exp=minor-loss">Determination of Minor Losses in Pipe</a></td>
					</tr>
					<tr>
						<td><a href="files/aim.php?exp=reynold">Reynolds Dye Experiment for Flow Characterization</a></td>
					</tr>
					<tr>
						<td><a href="files/aim.php?exp=venturimeter">Calibration of Venturimeter</a></td>
					</tr>
					<tr>
						<td><a href="files/aim.php?exp=vnotch">Calibration of V- Notch and Rectangular Notch</a></td>
					</tr>
					<tr>
						<td><a href="files/aim.php?exp=orifice">Calibration of Orificemeter</a></td>
					</tr>
					<tr>
						<td><a href="files/aim.php?exp=metacentric">Determination of Metacentric Height</a></td>
					</tr>
					<tr>
						<td><a href="files/aim.php?exp=cc-cv-cd">Determination of Cc, Cv and Cd of an Orifice</a></td>
					</tr>
					<tr>
						<td><a href="files/aim.php?exp=momentum">Verification of Momentum Theorem</a></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>

<br><br><br><br>
<?php include 'files/footer.php' ?>



 
















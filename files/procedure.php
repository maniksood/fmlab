<?php $title = "Procedure"; ?><?php $exp = $_GET['exp']; ?>

<?php include 'header.php' ?>

	<div class="collapse navbar-collapse navbar-ex1-collapse">
 			<ul class="nav navbar-nav">
 				<li><a href="aim.php?exp=<?php echo $exp ?>">Aim</a></li>
 				<li><a href="theory.php?exp=<?php echo $exp ?>">Theory</a></li>
 				<li class="active"><a href="procedure.php?exp=<?php echo $exp ?>">Procedure</a></li>
 				<li><a href="observations-<?php echo $exp ?>.php?exp=<?php echo $exp ?>">Observations</a></li>
 				<li><a href="result-<?php echo $exp ?>.php?exp=<?php echo $exp ?>">Result</a></li>
 			</ul>
 		</div><!-- /.navbar-collapse -->
 	</nav>

 	<div class="container">
 		<div class="jumbotron">
	 		<div class="row">
	 			<h2><u>PROCEDURE</u></h2><br>
	 			<?php 
	 				$select = "SELECT * FROM `procedure` WHERE name = '$exp'";
					$result = mysql_query($select); 
					$res = mysql_fetch_assoc($result);
					echo $res['procedure'];
				?>
	 		</div>
	 	</div>
 	</div>

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
 	<title><?php echo $title ?></title>
 	<link rel="stylesheet" href="../css/style.css">
	<link rel="stylesheet" href="../bootstrap-3.2.0-dist/css/bootstrap.min.css">
	<script src="../js/jquery.js"></script>
	<script src="../bootstrap-3.2.0-dist/js/bootstrap.min.js"></script>
 </head>
 <body>
 	<nav class="navbar navbar-default" role="navigation">
 		<!-- Brand and toggle get grouped for better mobile display -->
 		<div class="navbar-header">
 			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
 				<span class="sr-only">Toggle navigation</span>
 				<span class="icon-bar"></span>
 				<span class="icon-bar"></span>
 				<span class="icon-bar"></span>
 			</button>
 			<a class="navbar-brand" href="../list.php">FM Lab Experiments</a>
 		</div>
 	
 		<!-- Collect the nav links, forms, and other content for toggling -->
 		



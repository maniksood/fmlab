<?php 
	ob_start();
	session_start();
	mysql_connect("localhost","root","");
	mysql_select_db("fmlab");
 ?>

 <?php

	if (isset($_SESSION['user-login-id']) && isset($_SESSION['user-login-name'])) {
		$userid = $_SESSION['user-login-id'];
		$name = $_SESSION['user-login-name'];
	}
 ?>

 <!DOCTYPE html>
 <html lang="en">
 <head>
 	<meta charset="UTF-8">
 	<title><?php echo $title ?></title>
 	<link rel="stylesheet" href="../css/style.css">
	<link rel="stylesheet" href="../bootstrap-3.2.0-dist/css/bootstrap.css">
	<script src="../js/jquery.js"></script>
	<script src="../bootstrap-3.2.0-dist/js/bootstrap.min.js"></script>
	<style>
		.blue{
			color: blue;
		}
    </style>
 </head>
 <body>
 	<nav class="navbar navbar-default" role="navigation" style="background-color:rgb(35,45,116);color:white;">
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
 		<ul class="nav navbar-nav navbar-right">
	 		<li><p style="color:white;float:right;margin:14px 16px 0 0;">Welcome,  <b style="font-size:16px;"><?php echo $name ?></b></p></li>
			<li>
				<form action="logout.php" method="post">
					<button type="submit" name="logout" class="btn btn-primary" style="float:right;margin: 7px 8px 0 0;">Logout</button>
				</form>
			</li>
			
		</ul>


			
			
			
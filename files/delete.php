<?php 
	mysql_connect("localhost","root","");
	mysql_select_db("fmlab");
 ?>
 <?php include 'header.php' ?>
<?php
	
	$delete = "delete from vnotch where userid = '$userid'";
	mysql_query($delete);
	header('location:observations-vnotch.php?exp=vnotch');
	
 ?>
 
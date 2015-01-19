<?php 
	mysql_connect("localhost","root","");
	mysql_select_db("fmlab");
 ?>



<?php 
	
	$id = $_GET['id'];
	$delete = "delete from vnotch where id = '$id'";
	mysql_query($delete);
	header('location:result-vnotch.php?exp=vnotch');
 ?>
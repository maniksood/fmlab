<?php 
	ob_start();
	session_start();
	mysql_connect("localhost","root","");
	mysql_select_db("fmlab");
 ?>


 <?php 
 	session_unset($_SESSION['user-login-id']);
 	session_unset($_SESSION['user-login-name']);
 	header("location:../index.php");
 ?>
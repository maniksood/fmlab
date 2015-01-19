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

	
	<div class="col-md-2"></div>
	<div class="col-md-3">
	<h1>Sign Up</h1>
		<form action="" method="post">
		<label for="inputRegister_name">Name</label>
			<input type="text" name="register_name" id="inputRegister_name" class="form-control" placeholder="Name" required="required">
		<label for="inputRegister_email">Email</label>
			<input type="text" name="register_email" id="inputRegister_email" class="form-control" placeholder="Email" required="required">
		<label for="inputRegister_password">Password</label>
			<input type="password" name="register_password" id="inputRegister_password" class="form-control" placeholder="Password" required="required"><br />
			<button type="submit" name="register" class="btn btn-primary">Submit</button>
		</form>
	</div>
	<div class="col-md-2"></div>
	<div class="col-md-3">
	<h1>Login</h1>
		<form action="" method="post">
		<label for="inputLogin_email">Email</label>
			<input type="text" name="login_email" id="inputLogin_email" class="form-control" placeholder="Email" required="required">
		<label for="inputLogin_password">Password</label>
			<input type="password" name="login_password" id="inputLogin_password" class="form-control" placeholder="Password" required="required"><br />
			<button type="submit" name="login" class="btn btn-primary">Login</button>
		</form>
	</div>
	<div class="col-md-2"></div>
<div style="clear:both"></div>
<br><br><br><br><br><br><br><br><br><br><br>
<?php include 'files/footer.php' ?>


<?php 
	if (isset($_POST['register'])) {
		$register_name = $_POST['register_name'];
		$register_email = $_POST['register_email'];
		$register_password = $_POST['register_password'];

		$select_register = "select * from users where email = '$register_email'";
		$result_register = mysql_query($select_register) or die(mysql_error());
		$res_register = mysql_fetch_assoc($result_register);

		if ($res_register) { 
			echo "Email already exists <br /> Please try with a different one or login with an existing email";
		 }
		else{
			mysql_query("insert into users values('','$register_name','$register_email','$register_password')");

			echo "You are registered. Login Now";

			



		}
	}
 ?>

 <?php 
	if (isset($_POST['login'])) {
		$login_email = $_POST['login_email'];
		$login_password = $_POST['login_password'];

		$select_login = "select * from users where email = '$login_email' and password = '$login_password'";
		$result_login = mysql_query($select_login) or die(mysql_error());
		$res_login = mysql_fetch_assoc($result_login);

		if ($res_login) { 
			echo "Login Successful";
			$_SESSION['user-login-id'] = $res_login['id'];
			$_SESSION['user-login-name'] = $res_login['name'];
			header('location:list.php');
		 }
		else{
			echo "<script>alert('Incorrect email or password');</script>";
		}
	}
 ?>



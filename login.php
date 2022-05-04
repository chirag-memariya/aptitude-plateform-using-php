<?php
	require('database.php');
	session_start();

	if(isset($_POST['adminbtn'])){
		header('location: admin.php?');
	}
	if(isset($_SESSION["email"]))
	{
		session_destroy();
	}
	$PassErr="";
	$ref=@$_GET['q'];
	if(isset($_POST['submit']))
	{
		$email = $_POST['email'];
		$pass = $_POST['password'];
		$email = stripslashes($email);
		$email = addslashes($email);
		$pass = stripslashes($pass);
		$pass = addslashes($pass);
		$email = mysqli_real_escape_string($con,$email);
		$pass = mysqli_real_escape_string($con,$pass);
		$str = "SELECT * FROM user WHERE email='$email' and password='$pass'";
		$result = mysqli_query($con,$str);
		if((mysqli_num_rows($result))!=1)
		{
			// if($_POST[])
			$PassErr="Invalid login, please try again";
			header("locatin:login.php");
		}
		else
		{
			$_SESSION['logged']=$email;
			$row=mysqli_fetch_array($result);
			$_SESSION['id']=$row[0];
			$_SESSION['name']=$row[1];
			$_SESSION['email']=$row[2];
			$_SESSION['password']=$row[3];
			header('location: welcome.php?q=1');
		}
	}
?>



<!DOCTYPE html>
<html>
	<head>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="ie=edge">
		<title>Login | Online Quiz System</title>
		<link rel="stylesheet" href="scripts/bootstrap/bootstrap.min.css">
		<link rel="stylesheet" href="scripts/ionicons/css/ionicons.min.css">
		<link rel="stylesheet" href="css/form.css">
        <style type="text/css">
            body{
                  width: 100%;
                  background: url("https://cdn.woorise.com/template/wp-content/uploads/sites/62/2017/10/trivia-quiz-template-background.png") ;
                  background-position: center center;
                  background-repeat: no-repeat;
                  background-attachment: fixed;
                  background-size: cover;
                }
          </style>
	</head>

	<body>
		<section class="login first grey">
			<div class="container">
				<div class="box-wrapper">
					<div class="box box-border">
						<div class="box-body">
						<center> <h5 style="font-family: Noto Sans;">Login to </h5><h4 style="font-family: Noto Sans;">Online Quiz System</h4></center><br>
							<form method="post" action="login.php" enctype="multipart/form-data">
								<div class="error alert alert-danger"  >
								<span role="alert"><?php echo $PassErr;?></span>
								</div>
								<div class="form-group">
									<label>Enter Your Email Id:</label>
									<input type="email" name="email" class="form-control">
								</div>
								<div class="form-group">
									<label class="fw">Enter Your Password:</label>
									</label>
									<input type="password" name="password" class="form-control">
								</div>
								<div class="form-group text-right">
									<button class="btn btn-primary btn-block" name="submit">Login</button>
								</div>
								<div class="form-group text-center">
									<span class="text-muted">Don't have an account?</span> <a href="register.php">Register Here..</a>
								</div>
								<div class="form-group text-right">
									<button class="btn btn-primary btn-block" name="adminbtn">Login as Admin</button>
								</div>

							</form>
						</div>
					</div>
				</div>
			</div>
		</section>

		<script src="js/jquery.js"></script>
		<script src="scripts/bootstrap/bootstrap.min.js"></script>
	</body>
</html>

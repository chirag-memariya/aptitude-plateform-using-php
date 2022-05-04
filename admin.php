<?php
    include_once 'database.php';
    session_start();
    if(isset($_POST['userbtn'])){
        header("Location:login.php");
    }

    if(isset($_SESSION["email"]))
	{
		session_destroy();
    }

	// }
	$PassErrA="";

    $ref=@$_GET['q'];
    if(isset($_POST['submit']))
	{
        $email = $_POST['email'];
        $password = $_POST['password'];

        $email = stripslashes($email);
        $email = addslashes($email);
        $password = stripslashes($password);
        $password = addslashes($password);

        $email = mysqli_real_escape_string($con,$email);
        $password = mysqli_real_escape_string($con,$password);

        $result = mysqli_query($con,"SELECT email FROM admin WHERE email = '$email' and password = '$password'") or die('Error');
        $count=mysqli_num_rows($result);
        if($count==1)
        {
            session_start();
            if(isset($_SESSION['email']))
            {
                session_unset();
            }
            $_SESSION["name"] = 'Admin';
            $_SESSION["key"] ='admin';
            $_SESSION["email"] = $email;
            header("location:dashboard.php?q=0");
        }
        else
        {
            $PassErrA="Invalid login, please try again";
            header("url=admin.php");
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
						<center> <h5 style="font-family: Noto Sans;">Login as </h5><h4 style="font-family: Noto Sans;">ADMIN</h4></center><br>
							<form method="post" action="admin.php" enctype="multipart/form-data">
								<div class="error alert alert-danger"  >
								<span role="alert"><?php echo $PassErrA;?></span>
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
                <div class="form-group text-right">
                  <button class="btn btn-primary btn-block" name="userbtn">Login as User</button>
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

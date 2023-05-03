
<?php

	session_start();

	$error = "";
	$success = "";

	if(array_key_exists("logout", $_GET))
	{

		unset($_SESSION);
		session_destroy();
		setcookie("ID", "", time() - 60*60*24*356 );
		setcookie("ID", "", time() - 60*60*24*356 );
		$_COOKIE["ID"] = "";
		header("Location: index.php");

	}
	include("userlogincheck.php");

	if(array_key_exists('Username', $_POST) OR array_key_exists('Password', $_POST)){

		if($_POST['Username'] == ''){

			$error = "<p>Enter Your Username</p>";

		}else if($_POST['Password'] == ''){

			$error = "<p>Enter Your Password</p>";

		}else{

			if($_POST['sign'] == '1'){

				//######## php code for For sign up part  ###############

				if($_POST['password'] != $_POST['ConfirmPassword']){

					$error = "<p> Password does't match</p>";
				}else{

					$query = "SELECT `id` FROM `users` WHERE email = '".mysqli_real_escape_string($link, $_POST['email'])."'LIMIT 1";

					$result = mysqli_query($link, $query);


					if(mysqli_num_rows($result) > 0){
				
						$error = "<p>Email already registered..</p>";

					}else{


						$query = "INSERT INTO `users`(`email`, `password`) VALUES ('".mysqli_escape_string($link, $_POST['email'])."','".mysqli_escape_string($link, $_POST['password'])."')";

						if(mysqli_query($link, $query)){
					
							$query = "UPDATE `users` SET password = '". md5(md5(mysqli_insert_id($link)).$_POST['password'])."' WHERE id = '".mysqli_insert_id($link)."'LIMIT 1";

							if(mysqli_query($link, $query)){

								$success = "<p>Sign up successful please log in your account.</p>";
							}


							$_SESSION['ID'] = mysqli_insert_id($con);
							//header("Location: loggedinpage.php");


						}else{

							 $error = "<p> Could not sign you up- Please try again ";
						}
					}
				}		

			}
			else if($_POST['sign'] == '0')
            {

					//######## php code for For login part  ###############

				$query = "SELECT * FROM `user` WHERE Username = '".mysqli_real_escape_string($link, $_POST['Username'])."'LIMIT 1";

				$result = mysqli_query($link, $query); 
				$row = mysqli_fetch_array($result);

				if(isset($row))
				{

					$codedPassword = md5(md5($row['ID']).$_POST['Password']);

					if($codedPassword == $row['Password'])
					{

						$_SESSION['ID'] = $row['ID'];

							if(isset($_POST['stayloggedin']) AND $_POST['stayloggedin'] == '1')
							{

								setcookie('ID', mysqli_insert_id($link), time() + 60*60*24*365 );

							}

							header("Location: diary1.php");
					}
					else
					{

						 $error = "<p> Invalid Password or Username..</p> ";
					}
				}
				else
				{

						 $error = "<p> Invalid Password or Username..</p> ";
				}

			}
			
			
                {
					$query = "SELECT `ID` FROM `user` WHERE Username = '".mysqli_real_escape_string($link, $_POST['Username'])."'LIMIT 1";

							$result = mysqli_query($link, $query);

							if(mysqli_num_rows($result) > 0)
							{

								$row = mysqli_fetch_array($result);
								$id = $row['ID'];
						
								$query = "UPDATE `user` SET Password = '". md5(md5($id).$_POST['Password'])."' WHERE ID = '".$id."' LIMIT 1";

								if(mysqli_query($link, $query))
								{

									$success = "<p>password change successful please log in your account.</p>";
								}

							}
							else
							{

								$error = "<p>User does't exist..please sign up</p>";
							}

				}
		    } 
		
			
					
        

	}


?>



<!DOCTYPE html>
<html>
<head>
	<title></title>

		<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="style.css">
		<script type="text/javascript" src="jquery.min.js"></script>	

</head>
<body>

	<div class="container col-md-6" id="header">
		<div id="heading">
			<h1 class="display-4">My Secret Diary</h1>
			<small id="emailHelp" class="form-text text-muted"><b>Store your best life moments and secret in your online diary.</b></small>
		</div>

		<div id="error" >
	
			<?php 
				if($error != ""){
					echo "<div id='error' class='alert alert-danger' role='alert'><strong>".$error."</strong></div>" ;
				}else if($success !=""){
					echo "<div id='error' class='alert alert-success' role='alert'><strong>".$success."</strong></div>" ;	
				}
			?>		

		</div>
	

	<script src="bootstrap/js/bootstrap.js"></script>
	<script type="text/javascript">

		$("#clickLogIn").click(function(){

			$("#signUp").toggle();
			$("#logIn").toggle();

		})

		$("#changePassword").click(function(){

			$("#logIn").toggle();
			$("#forgetpassword").toggle();

		})

	</script>

</body>
</html>

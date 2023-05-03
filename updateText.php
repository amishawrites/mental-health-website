<?php


	session_start();

if(array_key_exists('content', $_POST)){

	include("userlogincheck.php");

	$query = "UPDATE `user` SET `messages` = '".mysqli_real_escape_string($link,$_POST['content'])."' WHERE ID = '".mysqli_real_escape_string($link,$_SESSION['ID'])."'LIMIT 1" ;

		if(mysqli_query($con,$query)){

			echo "success";
		}else{

			echo "fail";
		}


}


?>
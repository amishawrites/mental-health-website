<?php
session_start();
$con=mysqli_connect("localhost","root","","mentalhealthsystem");
if(isset($_POST['login']))
{
	$name=mysqli_real_escape_string($con,$_POST['unamev']);
	$pwd=mysqli_real_escape_string($con,$_POST['passv']);
	$query=mysqli_query($con,"SELECT * FROM user WHERE Username ='$name'");
    $row=mysqli_num_rows($query);
	if($row>0)
	{
		$fetchdata=mysqli_fetch_assoc($query);
        if(password_verify($pwd, $fetchdata['Password'])) {
            $_SESSION['ID']=$fetchdata['ID'];
            $_SESSION['login_user']=$fetchdata['Username'];
            // $_SESSION['login_pass']=$fetchdata['Password'];
            header('Location:viewcity.php');
        } else {
            echo "<script>alert('Invalid Login Details.Please Try Again!');window.location.href='userlogin.html';</script>";
        }
	}

	else
	{
		echo "<script>alert('Invalid Login Details.Please Try Again!');window.location.href='userlogin.html';</script>";
	}
}
?>
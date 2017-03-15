<?php
include 'db.php';
session_start();
$username = $_POST['username'];
$pass = $_POST['password'];

if(strcmp($username,"abc") == 0 && strcmp($pass,"1") == 0)
{
  $_SESSION['username'] = $username;
  header("location: studymarvel.php");
}

if(strcmp($username,"xyz") == 0 && strcmp($pass,"1") == 0)
{
  $_SESSION['username'] = $username;
  header("location: studymarvel.php");
}

$a = $conn->prepare("SELECT * from users where username = ? and password = ?");
$a->bindParam(1,$username);
$a->bindParam(2,$pass);

 $a->execute();

 $r = $a->fetch();


$_SESSION['username'] = $username;
header("location: studymarvel.php");


 ?>

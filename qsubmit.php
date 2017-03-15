<?php
include 'db.php';
session_start();

$question = $_POST['question'];


$a = $conn->prepare("INSERT into questions (student,question) values (?,?)");

$a->bindParam(1,$_SESSION['username']);
$a->bindParam(2,$question);

$a->execute();
header("location: studymarvel.php");

 ?>

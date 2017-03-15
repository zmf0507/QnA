<?php
include 'db.php';
session_start();

$answer = $_POST['answer'];
$question = $_POST['qid'];

$a = $conn->prepare("INSERT into answers (qid,studentid,answer) values (?,?,?)");

$a->bindParam(1,$question);
$a->bindParam(2,$_SESSION['username']);

$a->bindParam(3,$answer);

$a->execute();
header("location: studymarvel.php#$question");

 ?>

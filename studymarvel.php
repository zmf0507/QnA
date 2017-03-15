<?php
include 'db.php';
session_start();


 ?>

 <!DOCTYPE html>
 <html>
 <head>

 </head>

 <body>

   <div>
<h2>Hello <?php echo $_SESSION['username']; ?></h2>
<h3><a href="logout.php">log out</a></h2></div>
     <h3>POST YOUR QUESTION</h2></div>
 <form method="post" action="qsubmit.php">
 <input type="text" name="question">
 <input type="submit">
 </form>

<div><h2>RECENT QUESTIONS</h2></div>
<?php
$a = $conn->prepare("SELECT * from questions order by qid DESC");


 $a->execute();

 while( $r = $a->fetch()) :

 ?>

 <div id="<?php echo $r['qid']; ?>"><h2>------------------------------------------------</h2>
   <h3>Q - <?php echo $r['question']; ?> - <?php echo $r['student']; ?></h3></div>
<h4>POST YOUR ANSWER</h4>

 <form method="post" action="anssubmit.php">
 <input type="text" name="answer" placeholder="your answer">
  <input type="hidden" name="qid" value="<?php echo $r['qid']; ?>">
 <input type="submit">
 </form>
<h4>PREVIOUS ANSWERS</h4>

 <?php
 $b = $conn->prepare("SELECT * from answers order by ansid DESC");


  $b->execute();

  while( $s = $b->fetch()) {
    if($r['qid'] == $s['qid'])
    {
      echo '<div><h4>A - '.$s['answer'].' - '.$s['studentid'].'</h3></div>';
    }
  }

  ?>




 <?php
endwhile;
  ?>


 <?php

  ?>
 </body>

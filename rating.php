<?php include 'database.php' ?>

<?php

// create a variable
$user_id=$_POST['user_id'];
$movie_name=$_POST['movie_name'];
$comment=$_POST['comment'];
$rating=$_POST['rating'];


//Execute the query

mysqli_query($connect,"INSERT INTO rating (user_id,movie_name,comment,rating) VALUES('$user_id','$movie_name','$comment','$rating')");

$img='thank_you.jpg';
echo "<body background='".$img."'>";
?>

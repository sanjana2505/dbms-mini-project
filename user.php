<?php include 'database.php' ?>

<?php

// create a variable
$user_name=$_POST['user_name'];
$user_id=$_POST['user_id'];
$phone_no=$_POST['phone_no'];
$add_date=$_POST['add_date'];


//Execute the query

mysqli_query($connect,"INSERT INTO user(user_name,user_id,phone_no,add_date) VALUES('$user_name','$user_id','$phone_no','$add_date')");

$link_address1 = 'language.html';
$img='user_2.jpg';
$clickimg='click_here.png';
echo "<body background='".$img."'>";
echo "<center>";
echo "<font color=darkblue size='15pt'>LOGIN SUCCESSFUL!</font>";
echo "<br><br><br>";
echo "<br><br><br>";
echo "<br><br><br>";
echo "<br><br><br>";
echo "<br><br>";
echo "<a href='".$link_address1."'><img src='".$clickimg."' alt='centered image'></a>";
echo "</body>";

?>
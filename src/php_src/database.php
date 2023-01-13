
<?php
// define database, create connection
$servername='localhost';
$username='erasmus';
$password='erasmus2021';
$dbname = 'erasmus_test';
$conn=mysqli_connect($servername,$username,$password,"$dbname");
if(!$conn){
    echo('Error in connect to database');
   die('Could not Connect My Sql:' .mysql_error());
}
?>


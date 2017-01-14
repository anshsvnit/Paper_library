<?php

$host = "localhost";
$user = "root";
$password = "";
$db_name = "";


$db = mysqli_connect($host,$user,$password,$db_name);
if (mysqli_connect_errno($db)) 
  { 
  echo "Failed to connect to MySQL: " . mysqli_connect_error(); 
    }
?> 
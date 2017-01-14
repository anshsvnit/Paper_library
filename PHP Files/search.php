<?php

//SELECT Year,Count(*) from 'table' GROUP BY Year;
require 'database.php';
$db_name = "Papers_library";
$db = mysqli_connect($host,$user,$password,$db_name);
if (mysqli_connect_errno($db)) 
  { 
  	$response = 0;
  	$errorstr = "error connecting database";
  $arrayjson = array('status'=> $response,
            'message' => $errorstr);


     echo json_encode($arrayjson);
    }


$year =  ($_POST['year']);
 $dept = ($_POST['dept']);
 $course = ($_POST['course']);
 $sem = ($_POST['sem']);

//echo $year;
 //echo $dept;
//echo $course;
//echo $sem;

$sql_table = "SELECT `Sem_table_name` FROM `$course` WHERE `Year` = '$year' AND `Semester` = '$sem' AND `Department` = '$dept'";
$result_year = mysqli_query($db,$sql_table);
$table = mysqli_fetch_array($result_year, MYSQLI_NUM);
$table_name = $table[0];
//echo $table[0];


$sql_table_details = "SELECT `yearofExam`, COUNT(*) FROM `$table_name` GROUP BY `yearofExam`";
$result_table = mysqli_query($db,$sql_table_details);

$result = array();
while($row = mysqli_fetch_array($result_table,MYSQLI_NUM)){
  
    array_push($result,
    array('year'=>$row[0],
    'count'=>$row[1]
  ));
}

$table_details = array();

array_push($table_details, $table_name);

$data = array();
array_push($data,array('table_details'=>$table_details,'result'=>$result));

 echo json_encode(array("data"=>$data));
 
  mysqli_close($db);
?>
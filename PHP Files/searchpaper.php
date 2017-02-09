<?php

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


$year =  $_POST['year'];
$table = $_POST['table'];

//echo $year;
//echo $table;

$sql_papers = "SELECT `subject`,`exam`,`file_location`,`Remarks` FROM `$table` WHERE `yearofExam` = '$year' ORDER BY `exam`";
$result_papers = mysqli_query($db,$sql_papers);

$papers = array();
$data = array();

while($row = mysqli_fetch_array($result_papers,MYSQLI_NUM)){
  
  //echo $row[0];
  //echo $row[1];
  //  echo $row[2];
  //echo $row[3];


    array_push($papers,
    array('subject'=>$row[0],
    'exam'=>$row[1],
    'file_location'=>$row[2],
    'Remarks'=>$row[3],
  ));
}

//

echo json_encode(array("data"=>$papers));



?>
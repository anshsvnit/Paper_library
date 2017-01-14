<?php

$response = 0;
$targetPath = "uploads/"; 
$targetPath = $targetPath . basename($_FILES['pdffile']['name']);

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

$newFilePath = $targetPath;
    //echo $targetPath;

 echo ($_POST['yearofexam']);
 echo ($_POST['subject']);
echo ($_POST['exam']);
 echo ($_POST['course']);
 echo ($_POST['year']);
 echo $_POST['semester'];
  echo $_POST['department'];

$course = $_POST['course'];
  $year = $_POST['year'];
  $sem = $_POST['semester'];
  $dept = $_POST['department'];
  $yearofExam = $_POST['yearofexam'];
  $subject = $_POST['subject'];
  $exam = $_POST['exam'];

$sql_get_table = "SELECT `Sem_table_name` FROM `$course` WHERE `Year` = '$year' AND `Semester` = '$sem' AND `Department` = '$dept'";
//$sql_table = "SELECT `Sem_table_name` FROM `$course` WHERE `Year` = '$year' AND `Semester` = '$sem' AND `Department` = '$dept'";
$result_table = mysqli_query($db,$sql_get_table);
$table = mysqli_fetch_array($result_table, MYSQLI_NUM);
$table_name = $table[0];
echo $table_name;
echo "Insertion details\n";
echo $subject;
echo $yearofExam;
echo $exam;
echo $targetPath;
echo "\n";

$sql_insert_table = "INSERT INTO `$table_name`(`subject`,`yearofExam`,`exam`,`file_location`) VALUES ('$subject', '$yearofExam', '$exam', 'B.Tech3rd YearComputer Engineering0dhdh2010exam.pdf')";
$sql_insert_table_query = mysqli_query($db,$sql_insert_table);



if($sql_insert_table_query)
{
echo "Success";

}
else
{
echo "error";
echo mysqli_error($db). "\n";

}


$fh = fopen($targetPath, 'w');    

if (move_uploaded_file($_FILES['pdffile']['tmp_name'], $targetPath)) {
    $response = 1;
} else {
    $response = 0;
}

fclose($fh);


//echo "size".sizeof($_FILES['avatar']);

$arrayjson = array('status'=> $response,
            'message' => "Insertion done");


     echo json_encode($arrayjson);
?>
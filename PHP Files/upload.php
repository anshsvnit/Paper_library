<?php

$response = 0;
$targetPath = "uploads/"; 
$targetPath = $targetPath . basename($_FILES['pdffile']['name']);

$newFilePath = $targetPath;

echo ($_POST['yearofexam']);
echo ($_POST['subject']);
echo ($_POST['exam']);
echo ($_POST['course']);
echo ($_POST['year']);


$fh = fopen($targetPath, 'w');    

if (move_uploaded_file($_FILES['pdffile']['tmp_name'], $targetPath)) {
    $response = 1;
} else {
    $response = 0;
}

fclose($fh);


//echo "size".sizeof($_FILES['avatar']);

$arrayjson = array('status'=> $response,
            'message' => $errorstr);


     echo json_encode($arrayjson);
?>
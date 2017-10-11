<?php 
include("index_layout.php");
include("database.php");
include("authentication.php");  
$student_id=$_GET['id'];
$status=$_GET['status'];
  if($status=='Unhold'){
	  mysql_query("Update `student` SET `hold`='0' where `id`='$student_id'");
  }else if($status=='Hold'){
	  mysql_query("Update `student` SET `hold`='1' where `id`='$student_id'");
  }
 ?>
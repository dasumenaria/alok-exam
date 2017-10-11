<?php 
include("database.php");
  
$id=$_GET['id'];
$sub_column=$_GET['sub_column'];
$number=$_GET['number'];
$sql = "UPDATE `student_health` set `value`='".$number."' where `id`='".$id."'";
mysql_query($sql);
?>
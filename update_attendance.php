<?php 
include("database.php");
  
$id=$_GET['id'];
$sub_column=$_GET['sub_column'];
$number=$_GET['number'];
$sql = "UPDATE `attendance` set `".$sub_column."`='".$number."' where `id`='".$id."'";
mysql_query($sql);
?>
<?php 
include("database.php");
 
$id=$_GET['id'];
$sub_column=$_GET['sub_column'];
$number=$_GET['number'];
$sql ="UPDATE `student_marks` set `marks`='".$number."' where `id`='".$id."' && `master_exam_type_id`='$sub_column'";
mysql_query($sql);
?>
<?php 
include("database.php");
 
$class_id=$_GET['class_id'];
$section_id=$_GET['section_id'];
$term=$_GET['term'];
$scholarno=$_GET['scholarno'];
$marks=$_GET['marks'];
$type=$_GET['examcategorytype'];
 
 $set=mysql_query("select * from `attendance` where `scholar_no`='$scholarno' && `term`='$term'");
$fet=mysql_fetch_array($set);
$count=mysql_num_rows($set);
$id=$fet['id'];
 
 if($count>0){
	 if($type=='max_attendance'){
		mysql_query("UPDATE `attendance` SET `scholar_no`='$scholarno',`max_attendance`='$marks' where `id`='$id'");
	 }else if($type=='attendance'){
		mysql_query("UPDATE `attendance` SET `scholar_no`='$scholarno',`attendance`='$marks' where `id`='$id'");
	 }
}
else{
	if($type=='max_attendance'){
		mysql_query("insert into `attendance` SET `scholar_no`='$scholarno',`term`='$term',`max_attendance`='$marks'");
	}else if($type=='attendance'){
		mysql_query("insert into `attendance` SET `scholar_no`='$scholarno',`term`='$term',`attendance`='$marks'");
	}
}

?>
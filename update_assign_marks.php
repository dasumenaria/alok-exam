<?php 
include("database.php");
 
$class_id=$_GET['class_id'];
$section_id=$_GET['section_id'];
$subject_id=$_GET['subject_id'];
$sub_subject_id=$_GET['sub_subject_id'];
$term=$_GET['term'];
$category=$_GET['category'];
$examcategorytype=$_GET['examcategorytype'];
$scholarno=$_GET['scholarno'];
$marks=$_GET['marks'];
 
 $set=mysql_query("select * from `student_marks` where `scholar_no`='$scholarno' && `subject_id`='$subject_id' && `sub_subject_id`='$sub_subject_id' && `term_id`='$term' && `exam_category_id`='$category' && `master_exam_type_id`='$examcategorytype'");
$fet=mysql_fetch_array($set);
$count=mysql_num_rows($set);
$id=$fet['id'];
 
 if($count>0){
	mysql_query("UPDATE `student_marks` SET `scholar_no`='$scholarno',`subject_id`='$subject_id',`sub_subject_id`='$sub_subject_id',`term_id`='$term',`exam_category_id`='$category',`master_exam_type_id`='$examcategorytype',`marks`='$marks' where `id`='$id'");
} 
else{
mysql_query("insert into `student_marks` SET `scholar_no`='$scholarno',`subject_id`='$subject_id',`sub_subject_id`='$sub_subject_id',`term_id`='$term',`exam_category_id`='$category',`master_exam_type_id`='$examcategorytype',`marks`='$marks'");

}

?>
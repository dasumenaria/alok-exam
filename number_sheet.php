<?php
include("database.php");
  $class=$_GET['cls'];
  $section=$_GET['sec'];
  $subject_fetch=$_GET['sub'];
  $exam_name=$_GET['trm'];
  $cat=$_GET['cat'];
 
 $fets=explode(',', $subject_fetch);
  
	 $subject=$fets[0];
	 $sub_subject_id=$fets[1];
 
	  $sect_id=$section;
  
 $ster=mysql_query("select `roman` from `class` where `id`='$class'");
$fter=mysql_fetch_array($ster); 

$cl_name=$fter['roman'];

$ster1=mysql_query("select `section` from `section` where `id`='$section'");
$fter1=mysql_fetch_array($ster1); 

$se_name=$fter1['section'];
 
$ster2=mysql_query("select `subject` from `subject` where `id`='$subject'");
$fter2=mysql_fetch_array($ster2); 

$su_name=$fter2['subject'];
 
$name_exp=explode(' ', $su_name);
$su_name=implode('-',$name_exp);
 

// file name for download
$filename="Class-$cl_name-$se_name-$su_name";
header ("Expires: 0");
header ("Last-Modified: " . gmdate("D,d M YH:i:s") . "GMT");
header ("Cache-Control: no-cache, must-revalidate");
header ("Pragma: no-cache");
header ("Content-type: application/vnd.ms-excel");
header ("Content-Disposition: attachment; filename=".$filename.".csv");
header ("Content-Description: Generated Report" );
 
	$set=mysql_query("select * from `exam_mapping` where `class_id`='$class' && `section_id`='$sect_id' && `subject_id`='$subject' && `sub_subject_id`='$sub_subject_id' && `term_id`='$exam_name' && `exam_category_id`='$cat'");
	while($fet=mysql_fetch_array($set))
	{
	$exam_category_type=$fet['exam_category_type_id'];
	
	$set1=mysql_query("select `Exam` from `exam_category_type` where `id`='$exam_category_type'");
	$fet1=mysql_fetch_array($set1);
	
	$exam=$fet1['Exam'];
	
	$q=htmlspecialchars($exam);
	
	$final[]=$q;
	
	}
	$last=implode(',', $final);
	
	$fct="S.No.,Roll No,Student Name,Scholar no,Subject,$last";
	
	$qwq=$fct;
	
	
	$qwq.="\n";
	
	
	$query=mysql_query("select * from `student` where `class_id`='$class' && `section_id`='$section' order By `name` ASC");
	while($fets=mysql_fetch_array($query))
	{
	$roll_no=$fets['roll_no'];
	$scholar_no=$fets['scholar_no'];
	$student_name=$fets['name'];
	$query7=mysql_query("select `subject` from `subject` where `id`='$subject'");
	$fet7=mysql_fetch_array($query7);
	
	$subject_name=$fet7['subject'];
	
	$slt=mysql_query("select * from `subject_allocation` where `class_id`='$class' && `section_id`='$section' && `elective`='$subject'");
			$elective_count=mysql_num_rows($slt);
			if($elective_count>0){
				
				$sts=mysql_query("select * from `elective` where `scholar_id`='$scholar_no' && `subject_id`='$subject'");
				$elec_count=mysql_num_rows($sts);
				if($elec_count>0){
					
				}
				else{
					continue;
				}
				
			}
			
		$f++;	
	$qwq.="$f,$roll_no,$student_name,$scholar_no,$subject_name";
	
	
	
	$set=mysql_query("select `exam_category_type_id` from `exam_mapping` where `class_id`='$class' && `section_id`='$sect_id' && `subject_id`='$subject' && `sub_subject_id`='$sub_subject_id' && `term_id`='$exam_name' && `exam_category_id`='$cat'");
	while($fet=mysql_fetch_array($set))
	{
		$exam_category_type=$fet['exam_category_type_id'];
		$set1=mysql_query("select `Exam` from `exam_category_type` where `id`='$exam_category_type'");
		$fet1=mysql_fetch_array($set1);
		 
		$fundmarks=mysql_query("select `marks` from `student_marks` where `scholar_no`='$scholar_no' && `term_id`='$exam_name' && `exam_category_id`='$cat' && `subject_id`='$subject' && `sub_subject_id`='$sub_subject_id' && `master_exam_type_id` = '$exam_category_type'");
		$ftxMarks=mysql_fetch_array($fundmarks);
		$subject_marks=$ftxMarks['marks'];
		
		$exam=$fet1['Exam'];
		$qwq.=",$subject_marks";
	}
	$qwq.="\n";
	
	
	}
  						
echo $qwq;
?> 
 
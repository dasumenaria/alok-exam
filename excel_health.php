<?php
include("database.php");
  $class=$_GET['cls'];
  $section=$_GET['sec'];
  $health=$_GET['hlt_typ'];
   
	  $sect_id=$section;
  
 $ster=mysql_query("select `roman` from `master_class` where `id`='$class'");
$fter=mysql_fetch_array($ster); 

$cl_name=$fter['roman'];

$ster1=mysql_query("select `section` from `master_section` where `id`='$section'");
$fter1=mysql_fetch_array($ster1); 

$se_name=$fter1['section'];
 
$ster2=mysql_query("select `health_type` from `master_health` where `id`='$health'");
$fter2=mysql_fetch_array($ster2); 

$su_name=$fter2['health_type'];
 
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
 
		$set=mysql_query("select * from `master_health`");
		while($fet=mysql_fetch_array($set))
		{
		$health_name=$fet['health_type'];
		$parameter=$fet['parameter'];
		$hlth[]=$health_name;
		}
		$hlth_nm=implode(',', $hlth);
		$fct="S.No.,Roll No,Student Name,Scholar no,$hlth_nm";

		$qwq=$fct;
 
 
		$qwq.="\n";
 
		 $query=mysql_query("select * from `student` where `class_id`='$class' && `section_id`='$section' order By `name`");
		 while($fets=mysql_fetch_array($query))
		 {$f++;
			$roll_no=$fets['roll_no'];
			$scholar_no=$fets['scholar_no'];
			$student_name=$fets['name'];
			$sets=mysql_query("select * from `master_health`");
			while($fets=mysql_fetch_array($sets))
			{
				$hlths_id=$fets['id'];
				$slt=mysql_query("select * from `student_health` where `master_health_id`='$hlths_id' && `scholar_no`='$scholar_no'");
				$flt=mysql_fetch_array($slt);
				$health_datas[]=$flt['value'];
			}
			$hlth_data=implode(',', $health_datas);
			$qwq.="$f,$roll_no,$student_name,$scholar_no,$hlth_data";
		$qwq.="\n";	
unset($health_datas);				
		 }
  						
echo $qwq;
?> 
 
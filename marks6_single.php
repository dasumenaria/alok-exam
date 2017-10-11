<?php
include_once('database.php');
require_once("marksheet_function.php");

  $scholar_no=$_GET['sch'];
  $class_id=$_GET['cls'];
  $section_id=$_GET['sec'];
  $exam_name=$_GET['exm'];
  $term_id=$exam_name;
 
$set=mysql_query("select `name` from `master_term` where `id`='$exam_name'");
$fet=mysql_fetch_array($set);
$term=$fet['exam_name'];

$prmt_id=$class_id+1;
$sset=mysql_query("select `roman` from `master_class` where `id`='$prmt_id'");
$sfet=mysql_fetch_array($sset);
$promt_class=$sfet['roman'];
  
  
?>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<title>Marksheet</title>
	<style>
    .a1
    {width: 1000px; height: auto; border: 1px solid; font-family: Arial, Helvetica, sans-serif; page-break-after:always;
    }
    .center_align {	text-align:center; }
    table
    {
    border-collapse:collapse;
    }
    div
    {
    border-collapse:collapse;
    }
    </style>
        <script type="text/javascript" src="jquery.min.js"></script>
</head>
<!-- BEGIN BODY -->
<body>
	<?php 
	$v=0;
    $g_total=0;
    $g_total_marks=0;
	$result=0;
    $stdunt=mysql_query("select * from `student` where `class_id`='$class_id' && `section_id` = '$section_id' && `scholar_no`='$scholar_no'");
    $ftc_stdunt=mysql_fetch_array($stdunt);
		$v++;
     	  $id=$ftc_stdunt['id'];
		  $Roll=$ftc_stdunt['roll_no'];
		$name=$ftc_stdunt['name'];
$stdunt_elev=mysql_query("select `subject_id` from `elective` where `scholar_id`='$scholar_no'");
while($fte_elev=mysql_fetch_array($stdunt_elev))
{
	 $sub_id_1[]=$fte_elev['subject_id'];
 
}
		 ?>
        <div class="a1">
        <?php header_info($id,$exam_name);?><br>
        <table width="100%"  cellspacing="0px" height="300" cellpadding="0px" border="1">
		<tr bgcolor="CCFFCC">
            <th style="height:34px" >Scholastic Area</th>
			
		<?php 
		$st=mysql_query("select DISTINCT(term_id) from `master_architecture` where `marksheet_term_id`='$term_id'");
		while($ft=mysql_fetch_array($st))
		{
			$heading_term=$ft['term_id'];
			
			$st1=mysql_query("select `name` from `master_term` where `id`='$heading_term'");
			$ft1=mysql_fetch_array($st1);
			
			$heading_name=$ft1['name'];
 			$st2=mysql_query("select DISTINCT(exam_category_id) from `exam_mapping` where `class_id`='$class_id' && `section_id`='$section_id' && `term_id`='$heading_term' ORDER BY `exam_category_id`");
			$display_count=mysql_num_rows($st2);
			
			$heading_name=$ft1['name'];
			?>
			 <th colspan="<?php echo $display_count; ?>"><?php echo $heading_name; ?></th>
			<?php
		}
		?>	<th rowspan="2">Total</th>
			<th rowspan="2">Final</th>
             
			
        </tr>
        <tr bgcolor="#E0A366">
            <th height="33"  width="22%" style="margin-left:5px">Subject ?Exam</th>
			<?php 
		$st=mysql_query("select DISTINCT(term_id) from `master_architecture` where `marksheet_term_id`='$term_id'");
		while($ft=mysql_fetch_array($st))
		{
			$heading_term=$ft['term_id'];
			
			$st3=mysql_query("select `name` from `master_term` where `id`='$heading_term'");
			$ft3=mysql_fetch_array($st3);
			
			$heading_name=$ft3['name'];
			 
 			$st4=mysql_query("select DISTINCT(exam_category_id) from `exam_mapping` where `class_id`='$class_id' && `section_id`='$section_id' && `term_id`='$heading_term' ORDER BY `exam_category_id`");
			while($ft4=mysql_fetch_array($st4))
			{
			  $find_id=$ft4['exam_category_id'];
			
			$st7=mysql_query("select `name` from `exam_category` where `id`='$find_id'");
			$ft7=mysql_fetch_array($st7);
			$category_name=$ft7['name'];
			 
			 ?>
			 <th><?php echo $category_name; ?></th>
			<?php
		} 	}
		
		
		?>	
 
        </tr>
		<tr bgcolor="#E0A366">
            <th height="31"  width="24%" style="margin-left:5px">Subject</th>
            <?php 
			
		$st=mysql_query("select DISTINCT(term_id) from `master_architecture` where `marksheet_term_id`='$term_id'");
		while($ft=mysql_fetch_array($st))
		{
			$heading_term=$ft['term_id']; 
			$st3=mysql_query("select `name` from `master_term` where `id`='$heading_term'");
			$ft3=mysql_fetch_array($st3);
			
			$heading_name=$ft3['name'];
			 $all_over_total=0;
 			$st4=mysql_query("select DISTINCT(exam_category_id) from `exam_mapping` where `class_id`='$class_id' && `section_id`='$section_id' && `term_id`='$heading_term' ORDER BY `exam_category_id`");
			while($ft4=mysql_fetch_array($st4))
			{
			    $find_id=$ft4['exam_category_id'];
				
				$total_oneMax=0;
 				$max=mysql_query("select `max_marks`,`subject_id` from `exam_mapping` where `class_id`='$class_id' && `section_id`='$section_id' && `exam_category_id`='$find_id' && `term_id`='$heading_term' ORDER BY `exam_category_id`");
				while($ft_max=mysql_fetch_array($max))
				{
				  $test_subject_id=$ft_max['subject_id'];
				  
				  $slts=mysql_query("select * from `subject` where `id`='$test_subject_id' && `grade`='G'");
				  $flts=mysql_fetch_array($slts);
				  $grade_count=mysql_num_rows($slts);
				  if(!empty($grade_count)){				  
					continue;				  
				  }
				  $Max_marks=$ft_max['max_marks'];
				  $total_oneMax+= $Max_marks;
				}
				 
				 ?>
				 <th><?php echo $total_oneMax; ?></th>
			<?php
			$all_over_total+=$total_oneMax;
			}
				
		}
		?>	
		<th><?php echo $all_over_total; ?></th>	 <td></td>
        </tr>
        <?php 
 
			$subjct=mysql_query("select * from `subject_allocation` where `class_id`='$class_id' ");
			while($ftc_subject=mysql_fetch_array($subjct))
			{
				 $subject_id=$ftc_subject['subject_id'];
				 $elective=$ftc_subject['elective'];
				 $sub_subject_id=$ftc_subject['sub_subject_id'];
				 
			
				 $qry=mysql_query("select `subject`,`elective`,`grade` from `subject` where `id`='$subject_id'");
				 $fet=mysql_fetch_array($qry);
				 $subject=$fet['subject'];
				 $grade=$fet['grade'];
				 	
				if($grade=='G'){
					
					continue;
				}
				
				$qtr=mysql_query("select `name` from `master_sub_subject` where `id`='$sub_subject_id'");
				$ftr=mysql_fetch_array($qtr);
				
				$sub_subject_name=$ftr['name'];
				
				$ele_sub_seccess=0;
				$ele_sub_error=0;
					if($elective!=0 && in_array($elective, $sub_id_1))
					{   
						$set=mysql_query("select `subject` from `subject` where `id`='$elective'");
						$fet=mysql_fetch_array($set);
						
					$subject_1=$fet['subject'];
					$subject_id=$elective;
						$ele_sub_seccess=1;
					}
					if($elective!=0 && $elective != $sub_id_1)
					{ //echo $subject;
						$ele_sub_error=1;
					}
					
					$qry=mysql_query("select `subject`,`elective` from `subject` where `id`='$subject_id'");
				 $fet=mysql_fetch_array($qry);
				 $subject=$fet['subject'];
				 
					 
					//if(empty($subject_id)){
					//	continue;
					//}
					?>
			 <th height="33" width="8%" style="margin-left:5px"><?php echo $subject; ?>-<?php echo $sub_subject_name; ?></th> 
			 
			 <?php 
			 $subject_total=0;
			 $subject_max_marks=0;
		$st=mysql_query("select DISTINCT(term_id) from `master_architecture` where `marksheet_term_id`='$term_id'");
		while($ft=mysql_fetch_array($st))
		{
			
			$heading_term=$ft['term_id'];
			
			$st3=mysql_query("select `name` from `master_term` where `id`='$heading_term'");
			$ft3=mysql_fetch_array($st3);
			
			$heading_name=$ft3['name'];
			 
 			$st4=mysql_query("select DISTINCT(exam_category_id) from `exam_mapping` where `class_id`='$class_id' && `section_id`='$section_id' && `term_id`='$heading_term' && `subject_id`='$subject_id' && `sub_subject_id`='$sub_subject_id' ORDER BY `exam_category_id`");
			while($ft4=mysql_fetch_array($st4))
			{
				$find_id=$ft4['exam_category_id'];
				$tot_subject_marks=0;
				$tot_sub_max_marks=0;
				 
				 $ss=mysql_query("select * from `master_scalling` where `class_id`='$class_id' && `section_id`='$section_id' && `term_id`='$term_id'");
				 $ff=mysql_fetch_array($ss);
				 
				 $maximum_of_category=$ff['maximum_of_category'];
				 
				$st9=mysql_query("select * from `student_marks` where `scholar_no`='$scholar_no' && `term_id`='$heading_term' && `exam_category_id`='$find_id' && `subject_id`='$subject_id' && `sub_subject_id`='$sub_subject_id'");
				while($ft9=mysql_fetch_array($st9))
				{
					$subject_marks=$ft9['marks'];
					$tot_subject_marks+=$subject_marks;
					$grand_total+=$subject_marks;
					$master_exam_type_id=$ft9['master_exam_type_id'];
					
					$st10=mysql_query("select `max_marks` from `exam_mapping` where `class_id`='$class_id' && `section_id`='$section_id' && `subject_id`='$subject_id' && `sub_subject_id`='$sub_subject_id' && `exam_category_id`='$find_id' && `exam_category_type_id`='$master_exam_type_id' && `term_id`='$heading_term'");
					$ft10=mysql_fetch_array($st10);
					 $marks=$ft10['max_marks'];
					  $tot_sub_max_marks+=$marks;
					$total_marks+=$marks;
				}
				$subject_total+=$tot_subject_marks;
				$subject_max_marks+=$tot_sub_max_marks;
			 
			 
			   
				?>
				 <th><?php echo $tot_subject_marks; ?></th>
				<?php
			}

		}
	   $subject_max_marks;
	  
			  $calculation=(($subject_total/$subject_max_marks)*100);
				 
			$st11=mysql_query("select `grade` from `master_grade` where `class_id`='$class_id' && `section_id`='$section_id' && `range_from`<='$calculation' && `range_to`>='$calculation'");
			$ft11=mysql_fetch_array($st11);
			
			  $grade=$ft11['grade'];
			  
			  $minumum=(($subject_max_marks/100)*33);
			 if($subject_total<$minumum){
				 
				 $result+=1;
				 $fail_sub_sub[]='';
				 $faild_subject[]=$subject;
			 }
		?>
			 <th><?php echo $subject_total; ?></th>
			 <th><?php echo $grade; ?></th>
			 </tr>
<!-------------------------------------------------------------------------------------------------------->
		  
		 	 <?php
		  ///////////////////////////////////////////////////////////
		  
		     
		//print_r($sub_id_1);	
		//unset($sub_id_1);
		
		$g_total+=$subject_total;
		$g_total_marks+=$subject_max_marks;
	}
    $all=$g_total;
    $tot_max_marks=$g_total_marks;
	
	 
	?>
	
        </table>
        <table width="100%"  cellspacing="0px" cellpadding="0px" bgcolor="#E0A366" border="1">
		<tr>
            <th style="height:35px" >MAXIMUM MARKS</th>
			<th width="14%"><?php echo $tot_max_marks; ?></th>
			<th style="height:35px" >OBTAIN MARKS</th>
			<th width="15.1%"><?php echo $all; ?></th>
        </tr>
        </table>
        
        <table width="100%"  cellspacing="0px" cellpadding="0px"  border="1">
            <tr bgcolor="CCFFCC">
                <th colspan="2" style="height:35px" >Attendance</th>
                <th colspan="2" style="height:35px" >Healgth Status</th>
            </tr>
            <tr bgcolor="#E0A366">
            	<th style="height:35px" align="center">Total Meeting</th>
                <th>Meeting Attend</th>
                <th style="height:35px" align="center">Height</th>
                <th>Weight</th>
            </tr>
         
        </table>
		
		</table>
        <table width="100%"  cellspacing="0px" cellpadding="0px" border="1">
		<tr>
            <th style="height:35px"  width="20%"  bgcolor="CCFFCC" >Co-Scholastic Area</th>
        </tr>
        </table>


<!------------------------------------------------------------------------------------>

		<table width="100%" border="0" >
            <tr>
            <td width="50%" valign="top">
                    <table height="307"  width="100%" border="1" cellspacing="0" cellpadding="0" style="text-align:center">
                    <tr bgcolor="CCFFCC" >
                    	<th colspan="7" style="height:35px !important;"> Grading Marks </th>
                    </tr>
					
					
				<tr style="font-size:16px" bgcolor="#E0A366" height="15px">
					<td width="100" style="height:28px !important;" ><strong>Subject</strong></td>
					<?php 
					$st=mysql_query("select DISTINCT(term_id) from `master_architecture` where `marksheet_term_id`='$term_id'");
					while($ft=mysql_fetch_array($st))
					{
					$heading_term=$ft['term_id'];

					$st1=mysql_query("select `name` from `master_term` where `id`='$heading_term'");
					$ft1=mysql_fetch_array($st1);

					$heading_name=$ft1['name'];
					$st2=mysql_query("select DISTINCT(exam_category_id) from `exam_mapping` where `class_id`='$class_id' && `section_id`='$section_id' && `term_id`='$heading_term' ORDER BY `exam_category_id`");
					$display_count=mysql_num_rows($st2);

					$heading_name=$ft1['name'];
					?>
					<td colspan="<?php echo $display_count; ?>"><b><?php echo $heading_name; ?></b></td>
					<?php
					}
					?>
					<td colspan="2"><b>OverAll Result</b></td>
				</tr>
					
					
					
					
			<tr bgcolor="#E0A366">
				<th height="33"  width="22%" style="margin-left:5px;height:28px !important;">Exam</th>
				<?php 
				$st=mysql_query("select DISTINCT(term_id) from `master_architecture` where `marksheet_term_id`='$term_id'");
				while($ft=mysql_fetch_array($st))
				{
				$heading_term=$ft['term_id'];

				$st3=mysql_query("select `name` from `master_term` where `id`='$heading_term'");
				$ft3=mysql_fetch_array($st3);

				$heading_name=$ft3['name'];

				$st4=mysql_query("select DISTINCT(exam_category_id) from `exam_mapping` where `class_id`='$class_id' && `section_id`='$section_id' && `term_id`='$heading_term' ORDER BY `exam_category_id`");
				while($ft4=mysql_fetch_array($st4))
				{
				$find_id=$ft4['exam_category_id'];

				$st7=mysql_query("select `name` from `exam_category` where `id`='$find_id'");
				$ft7=mysql_fetch_array($st7);
				$category_name=$ft7['name'];

				?>
				<th><?php echo $category_name; ?></th>
				<?php } } ?>	
				<th>Total</th>
				<th>Grade</th>
			</tr>	
					
					
					  <?php 
 
 $sot=mysql_query("select * from `subject` where `grade`='G'");
 while($fot=mysql_fetch_array($sot))
 {
 $sub_id=$fot['id'];
			$subjct=mysql_query("select * from `subject_allocation` where `class_id`='$class_id' && `subject_id`='$sub_id'");
			while($ftc_subject=mysql_fetch_array($subjct))
			{
				 $subject_id=$ftc_subject['subject_id'];
				 $elective=$ftc_subject['elective'];
				 $sub_subject_id=$ftc_subject['sub_subject_id'];
				
				 $qry=mysql_query("select `subject`,`elective` from `subject` where `id`='$subject_id'");
				 $fet=mysql_fetch_array($qry);
				 $subject=$fet['subject'];
						
				$qtr=mysql_query("select `name` from `master_sub_subject` where `id`='$sub_subject_id'");
				$ftr=mysql_fetch_array($qtr);
				
				$sub_subject_name=$ftr['name'];
				
				$ele_sub_seccess=0;
				$ele_sub_error=0;
					if($elective!=0 && in_array($elective, $sub_id_1))
					{   
						$set=mysql_query("select `subject` from `subject` where `id`='$elective' && `grade`='G'");
						$fet=mysql_fetch_array($set);
						
					$subject_1=$fet['subject'];
					$subject_id=$elective;
						$ele_sub_seccess=1;
					}
					if($elective!=0 && $elective != $sub_id_1)
					{ //echo $subject;
						$ele_sub_error=1;
					}
					
					$qry=mysql_query("select `subject`,`elective` from `subject` where `id`='$subject_id' && `grade`='G'");
				 $fet=mysql_fetch_array($qry);
				 $subject=$fet['subject'];
				 
					 
					//if(empty($subject_id)){
					//	continue;
					//}
					?>
			 <th height="auto" width="8%" style="margin-left:5px" ><?php echo $subject; ?>-<?php echo $sub_subject_name; ?></th> 
			 
			 <?php 
			 $subject_total=0;
			 $subject_max_marks=0;
			 
		$st=mysql_query("select DISTINCT(term_id) from `master_architecture` where `marksheet_term_id`='$term_id'");
		while($ft=mysql_fetch_array($st))
		{
			
			$heading_term=$ft['term_id'];
			
			$st3=mysql_query("select `name` from `master_term` where `id`='$heading_term'");
			$ft3=mysql_fetch_array($st3);
			
			$heading_name=$ft3['name'];
			 
 			$st4=mysql_query("select DISTINCT(exam_category_id) from `exam_mapping` where `class_id`='$class_id' && `section_id`='$section_id' && `term_id`='$heading_term' && `subject_id`='$subject_id' && `sub_subject_id`='$sub_subject_id' ORDER BY `exam_category_id`");
			while($ft4=mysql_fetch_array($st4))
			{
				$find_id=$ft4['exam_category_id'];
				$tot_subject_marks=0;
				$tot_sub_max_marks=0;
				 
				 $ss=mysql_query("select * from `master_scalling` where `class_id`='$class_id' && `section_id`='$section_id' && `term_id`='$term_id'");
				 $ff=mysql_fetch_array($ss);
				 
				 $maximum_of_category=$ff['maximum_of_category'];
				 
				$st9=mysql_query("select * from `student_marks` where `scholar_no`='$scholar_no' && `term_id`='$heading_term' && `exam_category_id`='$find_id' && `subject_id`='$subject_id' && `sub_subject_id`='$sub_subject_id'");
				while($ft9=mysql_fetch_array($st9))
				{
					$subject_marks=$ft9['marks'];
					$tot_subject_marks+=$subject_marks;
					$grand_total+=$subject_marks;
					$master_exam_type_id=$ft9['master_exam_type_id'];
					
					$st10=mysql_query("select `max_marks` from `exam_mapping` where `class_id`='$class_id' && `section_id`='$section_id' && `subject_id`='$subject_id' && `sub_subject_id`='$sub_subject_id' && `exam_category_id`='$find_id' && `exam_category_type_id`='$master_exam_type_id' && `term_id`='$heading_term'");
					$ft10=mysql_fetch_array($st10);
						$marks=$ft10['max_marks'];
						$tot_sub_max_marks+=$marks;
						$total_marks+=$marks;
					 
				}
				$subject_total+=$tot_subject_marks;
				$subject_max_marks+=$tot_sub_max_marks;
				
				$gd_tot_marks=$tot_subject_marks;
				$gd_tot_max_marks=$tot_sub_max_marks;
				
				$gd_calc=(($gd_tot_marks/$gd_tot_max_marks)*100);
				
					$sst11=mysql_query("select `grade` from `master_grade` where `class_id`='$class_id' && `section_id`='$section_id' && `range_from`<='$gd_calc' && `range_to`>='$gd_calc'");
					$fst11=mysql_fetch_array($sst11);

					 $gd_grade=$fst11['grade'];
					 
				?>
				 <th><?php echo $gd_grade; ?></th>
				 <!--th><?php //echo $tot_subject_marks; ?></th-->
				<?php
			}

		}
	   $subject_max_marks;
	 
			  $calculation=(($subject_total/$subject_max_marks)*100);
				 
			$st11=mysql_query("select `grade` from `master_grade` where `class_id`='$class_id' && `section_id`='$section_id' && `range_from`<='$calculation' && `range_to`>='$calculation'");
			$ft11=mysql_fetch_array($st11);
			
			  $grade=$ft11['grade'];
		?>
			 <th><?php echo $subject_total; ?></th>
			 <th><?php echo $grade; ?></th>
			 </tr>
<!-------------------------------------------------------------------------------------------------------->
		 
		 
		 
		 
		 
		 
		 
		 
		 	 <?php
		  ///////////////////////////////////////////////////////////
		  
		     
		//print_r($sub_id_1);	
		//unset($sub_id_1);
		
		$g_total+=$total_per_subject;
		$g_total_marks+=$total_per_subjectMax_marks;
	}		
}	
    $g_total;
    $g_total_marks;
	?>
	 
                    </table>
            </td>
            <td width="50%"> 
           		<table height="307" width="100%" border="1" cellspacing="0" cellpadding="0" style="text-align:center" >
                    <tr bgcolor="CCFFCC">
                    	<th colspan="3" scope="col"  height="35">Result</th>
                    </tr>
                    <tr style="font-size:16px" bgcolor="#E0A366"  height="32px">
                        <td width="135" style="text-align:left; padding-left:15px"><strong>Attributes</strong></td>
                        <td width="135"><strong>Status</strong></td>
                    </tr>
					<?php 
					$all;
					$g_total_mark;
					$percentage=(($all*100)/$tot_max_marks);
					$per=number_format($percentage,2);
					//$stst=calculate_grade($per);
		  
			
			if($result=='0'){
						
						$status="Promoted to Class ".$promt_class;
						$final_status="Pass";
					}
					else if($result=='1'){   
					$c=0;
						$final_status="Supplementary";
						foreach($faild_subject as $sub)
						{
							$fail_sub_sub[$c];
							if($fail_sub_sub[$c]!='')
							{
							  $stt=$sub.'('.$fail_sub_sub[$c].')';
							}
							else
							{
								  $stt=$sub;
							}
							  
							  
						}
						$status=$stt;
						 
					} 
					else if($result>1){
					$status="Detained in Class ".$detain_class; 
					$final_status="Fail";
					$c=0;
						foreach($faild_subject as $sub)
						{
							$fail_sub_sub[$c];
							if($fail_sub_sub[$c]!='')
							{
							  $sub.'('.$fail_sub_sub[$c].')';
							}
							else
							{
								  $sub;
							}
						   $sub;
						}
						
					} else {}
			
////////////////////Percentage///etc///Entry///in////table//////Start///////////
					 
				mysql_query("delete from `student_result` where `scholar_no`='$scholar_no' && `roll_no`='$Roll' && `class_id`='$class_id' && `section_id`='$section_id' && `term_id`='$term_id'");
				
				if($final_status=='Pass'){
					$next_class=$prmt_id;
				}else{
					$next_class=$class_id;
				}
				mysql_query("insert into `student_result` SET `class_id`='$class_id',`section_id`='$section_id',`roll_no`='$Roll',`scholar_no`='$scholar_no',`status`='$status',`final_status`='$final_status',`per`='$per',`total`='$all',`term_id`='$term_id',`total_marks`='$tot_max_marks',`next_class_id`='$next_class'");
			
////////////////////Percentage///etc///Entry///in////table/////////end//////////
		?>
					 <tr>
                        <td style="text-align:left; padding-left:15px">Percentage</td>
                        <td><b><?php echo $per; ?><b></td>
                    </tr>
                    <tr>
                        <td style="text-align:left; padding-left:15px">Rank</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="text-align:left; padding-left:15px">Division</td>
                        <td><b><?php echo $stst; ?></b></td>
                    </tr>
                    <tr>
                    	<td  style="text-align:left; padding-left:15px">Result</td>	
                        <td colspan="2"><b><?php echo $final_status; ?></b></td>	
                    </tr>
					 
                    <tr height="70px">
                        <td style="text-align:center; font-size:18px">Remarks</td>
                   		<td><b><?php echo $status; ?><b></td>
                    </tr>
           	 	</table>
           </td>
        </tr>
        </table>
		
		
<!----------------------------------------------------------------------------------->		
		
		
		
		
		
        <table width="100%" border="0" >
            <tr>
            <td width="50%"> 
                    <table height="307" width="100%" border="1" cellspacing="0" cellpadding="0" style="text-align:center">
                    <tr bgcolor="CCFFCC"  height="35">
                    	<th colspan="3" scope="col" height="35"><b>Nine Point Grading Scale</b></th>
                    </tr>
                    <tr style="font-size:16px" bgcolor="#E0A366">
                        <td width="202" height="35"><strong>Marks Range</strong></td>
                        <td width="124"><strong>Grade</strong></td>
                        <td width="184"><strong>Grade Point</strong></td>
                    </tr>
					<?php 
					$sst=mysql_query("select * from `master_grade` ORDER BY `range_to` DESC");
					while($fft=mysql_fetch_array($sst))
					{
						$range_from=$fft['range_from'];
						$range_to=$fft['range_to'];
						$range_grade=$fft['grade'];
						$grade_point=$fft['grade_point'];
						
						?>
					<tr>
                        <td >
							<?php echo $range_from; ?>-<?php echo $range_to; ?>
						</td>
                        <td style="text-align:center;">
							<?php echo $range_grade; ?>
						</td>
                        <td>
							<?php echo $grade_point; ?>
						</td>
                    </tr>
						
						<?php
					}
					?>
                   
                    <!--tr>
                        <td>81-90</td>
                        <td>A2</td>
                        <td>9.0</td>                    
                    </tr>
                    <tr>
                        <td>71-80</td>
                        <td>B1</td>
                        <td>8.0</td>
                    </tr>
                    <tr>
                        <td >61-70</td>
                        <td>B2</td>
                        <td>7.0</td>
                    </tr>
                    <tr>
                        <td >51-60</td>
                        <td>C1</td>
                        <td>6.0</td>
                    </tr>
                    <tr>
                        <td >41-50</td>
                        <td>C2</td>
                        <td>5.0</td>  
                    </tr>
                    <tr>
                        <td >33-40</td>
                        <td>D</td>
                        <td>4.0</td>
                    </tr>
                    <tr>
                        <td >21-32</td>
                        <td>E1</td>
                        <td>3.0</td>
                    </tr>
                    <tr>
                        <td>00-20</td>
                        <td>E2</td>
                        <td>2.0</td>
                    </tr--->
                    </table>
            </td>
			<?php 
			$per=(($g_total*100)/$g_total_marks);
 			$final_percentage=number_format($per,'2');
			
 		    $result=calculate_status($final_percentage);
			mysql_query("delete from `extra` where `class_id`='$class_id' && `section_id`='$section_id' && `name`='$name' && `roll_no`='$Roll' && `exam_name`='$exam_name'");
 			mysql_query("insert into `extra` SET `roll_no`='$Roll',`class_id`='$class_id',`section_id`='$section_id',`total`='$g_total',`per`='$final_percentage',`exam_name`='$exam_name',`name`='$name',`grade`='$result'");
			?>
            <td width="50%"> 
           		<table height="307" width="100%" border="1" cellspacing="0" cellpadding="0" style="text-align:center" >
                    <tr bgcolor="CCFFCC">
                    	<th colspan="3" scope="col"  height="35">Term Report (Signature)</th>
                    </tr>
                    <tr style="font-size:16px" bgcolor="#E0A366"  height="35">
                        <td width="135" style="text-align:left; padding-left:15px"><strong>Designation</strong></td>
                        <td width="135"><strong>Signature</strong></td>
                    </tr>
					
				<?php 
				 
				$st=mysql_query("select `attendance` from `attendance` where `scholar_no`='$scholar_no' && `term`='$term_id'");
				$ft=mysql_fetch_array($st);
				
				$attendance=$ft['attendance'];
				
				?>
					<tr>
                        <td style="text-align:left; padding-left:15px">Attendance</td>
                        <td><?php echo $attendance; ?></td>
                    </tr>
                    <tr>
                        <td style="text-align:left; padding-left:15px">Class Teacher</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="text-align:left; padding-left:15px">Parent</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                    	<td  style="text-align:left; padding-left:15px">Date of Issue</td>	
                        <td colspan="2"><?php //echo date('d-M-Y'); ?>15-Oct-2016</td>	
                    </tr>
                    <tr height="100px">
                        <td style="text-align:center; font-size:18px">Principal<br>( Seal & Signature )</td>
                   		<td>&nbsp;</td>
                    </tr>
           	 	</table>
           </td>
        </tr>
        </table>
	 <?php 
	     $marks_view=implode(',', $student_marks);
		 $subject_view_bar=implode(",",$student_subject);
//////////////
 
		// print_r($student_subject_graph_id);
		 foreach($student_subject_graph_id as $average_fetch_sub_id)
		 {
			  
			 $qwry=mysql_query("select * from `average` where `class_id`='$class_id' && `subject_id`='$average_fetch_sub_id' && `flag`='0' && `exam_name`='$exam_name'");
			 $fwry=mysql_fetch_array($qwry);
			 
			 $class_average[]=$fwry['average'];
		 }
		$average_class_murge=implode(',', $class_average);
		 
		 ////////////////////////////////////////////////////SECTION///////////////
		 foreach($student_subject_graph_id as $average_fetch_sub_id_section)
		 {
			  
			 $qwry1=mysql_query("select * from `average` where `class_id`='$class_id' && `section_id`='$section_id' && `subject_id`='$average_fetch_sub_id_section' && `flag`='1' && `exam_name`='$exam_name'");
			 $fwry1=mysql_fetch_array($qwry1);
			 
			 $section_average[]=$fwry1['average'];
		 }
		$average_section_murge=implode(',', $section_average);
		 
	 
		 ////////////
		?>
       <table width="100%" border="0" >
            <tr>
                <td width="49%" style="border-right:1px solid" id="bar_chart<?php echo $id; ?>">
                </td>
                <td width="49%" id="line<?php echo $id; ?>"></td>
            </tr>
        </table>
        <script>
		$(document).ready(function()
		{
		 var subject_view = '<?php echo $subject_view_bar; ?>';
		 var marks_view = '<?php echo $marks_view; ?>';
		 var name = '<?php echo $name; ?>';
		 $.ajax({
				type: "POST",
				url: "bar_graph.php?marks_view=" + marks_view + "&subject_view=" + subject_view + "&name=" + name,
				success: function(data)
				{
				$('#bar_chart<?php echo $id; ?>').html('<img src="'+data+'" style="width:100%">');
				}
			});	
		});
		$(document).ready(function()
		{
		 var subject_view = '<?php echo $subject_view_bar; ?>';
		 var marks_view = '<?php echo $marks_view; ?>';
		 var average_section = '<?php echo $average_section_murge; ?>';
		 var name = '<?php echo $name; ?>';
		 var average_class = '<?php echo $average_class_murge; ?>';
		 $.ajax({
		  type: "POST",
		  url: "line_graph.php?marks_view=" + marks_view + "&subject_view=" + subject_view + "&name=" + name + "&average_section=" + average_section+ "&average_class=" + average_class,
		  success: function(data)
		  { 
			  $('#line<?php echo $id; ?>').html('<img src="'+data+'" style="width:100%">');
		  }
		 });
		});
	</script>
 </div>
<?php 
	//unlink("graph/imagefile.png");
		unset($student_marks);
		unset($student_subject);
			unset($sub_id_1);
			unset($student_subject_graph_id);
			unset($section_average);
			unset($class_average);
		//if($v==5){break;}
		echo "<br>";
	
	
	?>
</body>
</html>

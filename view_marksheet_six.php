<?php
include_once('database.php');
include_once('phpqrcode/qrlib.php');
require_once("marksheet_function.php");

	$scholar_no=$_GET['sch'];
	$class_id=$_GET['cls'];
	$section_id=$_GET['sec'];
	$exam_name=$_GET['exm'];
	$term_id=$exam_name;
	
$set=mysql_query("select `name` from `master_term` where `id`='$exam_name'");
	$fet=mysql_fetch_array($set);
	$term=$fet['name'];

	$prmt_id=$class_id+1;
$sset=mysql_query("select `roman` from `master_class` where `id`='$prmt_id'");
	$sfet=mysql_fetch_array($sset);
	$promt_class=$sfet['roman'];
	
	 
$CuttentStatust=mysql_query("select `roman` from `master_class` where `id`='$class_id'");
	$FtcCuttentStatust=mysql_fetch_array($CuttentStatust);
	$CurrentClass=$FtcCuttentStatust['roman'];
  
  
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
	td {
		text-align:center;	
	}
	 
	.header_font
	{
		font-weight:bold;
		font-size:15px;
	}
	.header_sub
	{
		font-weight:bold;
		font-size:13px;
	}
    </style>
</head>
<!-- BEGIN BODY -->
<body>
	<?php 
    //** Find Elevtive Subject In array
	$stdunt=mysql_query("select `id`,`roll_no`,`name` from `student` where `class_id`='$class_id' && `section_id` = '$section_id' && `scholar_no`='$scholar_no'");
    $ftc_stdunt=mysql_fetch_array($stdunt);
	$id=$ftc_stdunt['id'];
	$StudentRollNo=$ftc_stdunt['roll_no'];
	$StudentName=$ftc_stdunt['name'];
 		$stdunt_elev=mysql_query("select `subject_id` from `elective` where `scholar_id`='$scholar_no'");
		while($fte_elev=mysql_fetch_array($stdunt_elev))
		{
			$sub_id_1[]=$fte_elev['subject_id'];
		}
	//**/ END of Elecative Subject 
	//* Header Started
		 ?>
<div class="a1">
   		<?php header_info_Primary($id,$exam_name);?><br>
  
	<!-- Header End ---> 
    <table width="100%"  cellspacing="0px" height="300" cellpadding="0px" border="1" id="sample_1">
		<tbody>
         <tr class="header_font">
             <th height="33" rowspan="2" colspan="2" style="margin-left:5px">Subject / Exam</th>
			 
				<?php 
                $st=mysql_query("select DISTINCT(term_id) from `master_architecture` where `marksheet_term_id`='$term_id' && `class_id`='$class_id' && `section_id`='$section_id'");
                while($ft=mysql_fetch_array($st))
                {
                    $heading_term=$ft['term_id'];
                    $st3=mysql_query("select `name` from `master_term` where `id`='$heading_term'");
                    $ft3=mysql_fetch_array($st3);
                    $heading_name=$ft3['name'];
					$colspan=0;
					$category_wisecolumn=mysql_query("select * from `master_architecture` where `marksheet_term_id`='$term_id' && `class_id`='$class_id' && `section_id`='$section_id'");
					while($ftc_categorywise=mysql_fetch_array($category_wisecolumn))
					{
						
						$categoryidd=$ftc_categorywise['category_id'];	
 						$st4=mysql_query("select DISTINCT(exam_category_id) from `exam_mapping` where `class_id`='$class_id' && `section_id`='$section_id' && `term_id`='$heading_term' && `exam_category_id` = '$categoryidd' ORDER BY `exam_category_id`");
						$countexam_mapping=mysql_num_rows($st4);
						if($countexam_mapping>0)
						{	
							while($ft4=mysql_fetch_array($st4))
							{	
								$find_id=$ft4['exam_category_id'];
								$st7=mysql_query("select `name` from `exam_category` where `id`='$find_id'");
								$ft7=mysql_fetch_array($st7);
								$category_name=$ft7['name'];
								$colspan++;
							} 	
						}
						else
						{ for($x=0; $x<$countArchitecure; $x++){echo"<td></td>";}}
						
					}
					if($colspan==1){$colspan=0;}
					?>
					<th height="30px" colspan="<?php echo $colspan;?>"><b><?php echo $heading_name; ?></b></th>
					<?php
                }
                ?>	
            <th>Over All Grade</th>
         </tr>
		 <tr>
            <?php 
				$totalMx=0;
                $st=mysql_query("select DISTINCT(term_id) from `master_architecture` where `marksheet_term_id`='$term_id' && `class_id`='$class_id' && `section_id`='$section_id'");
                while($ft=mysql_fetch_array($st))
                {
                    $heading_term=$ft['term_id'];
                    $st3=mysql_query("select `name` from `master_term` where `id`='$heading_term'");
                    $ft3=mysql_fetch_array($st3);
                    $heading_name=$ft3['name'];
					$category_wisecolumn=mysql_query("select * from `master_architecture` where `marksheet_term_id`='$term_id' && `class_id`='$class_id' && `section_id`='$section_id'");
					while($ftc_categorywise=mysql_fetch_array($category_wisecolumn))
					{
						$categoryidd=$ftc_categorywise['category_id'];
 						$st4=mysql_query("select DISTINCT(exam_category_id),`max_marks` from `exam_mapping` where `class_id`='$class_id' && `section_id`='$section_id' && `term_id`='$heading_term' && `exam_category_id` = '$categoryidd' ORDER BY `exam_category_id`");
						$countexam_mapping=mysql_num_rows($st4);
						if($countexam_mapping>0)
						{	
							while($ft4=mysql_fetch_array($st4))
							{
								$max_marks=$ft4['max_marks'];
								$totalMx+=$max_marks;
								
						} ?>
					<td align="center">
						<strong>
							(<?php echo $max_marks; ?>)
						</strong>
					</td>
					<?php
					}
					else
					{for($x=0; $x<$countArchitecure; $x++){echo"<td></td>";}}
					}
                }
                ?>
            <td align="center"><strong>(<?php echo $totalMx;?>)</strong></td>
        </tr>
         	<?php 
 			$OverAllTotalGetMarks=0;
			$OverAllTotalMaxMarks=0;
			$Result=0;
			$FailedInSubSubject=array();
			$FaildInSubject=array();
			///*- SUVJECT ALLOCSTYION LOOP
			$SNo=0;
			$SNotot=0;
			 
 			$FindSubject=mysql_query("select distinct `subject_id`,`elective` from `subject_allocation` where `class_id`='$class_id'  && `section_id`='$section_id'");
			while($ftc_subject=mysql_fetch_array($FindSubject))
			{
 				$subject_id=$ftc_subject['subject_id'];
				if(empty($subject_id))
				{
					$subject_id=$ftc_subject['elective'];
 					
					$ElectiveQuery=mysql_query("select * from `elective` where `scholar_id`='$scholar_no' && `subject_id`='$subject_id'");
					$ElectiveQueryCount=mysql_num_rows($ElectiveQuery);
					if($ElectiveQueryCount==0)
					{
						continue;
					}
				}
				$sub_subject_id=$ftc_subject['sub_subject_id'];
				
				$qry=mysql_query("select `subject`,`elective`,`grade` from `subject` where `id`='$subject_id'");
				$fet=mysql_fetch_array($qry);
				$subject=$fet['subject'];
				$grade=$fet['grade'];
				
				$qtr=mysql_query("select `name` from `master_sub_subject` where `id`='$sub_subject_id'");
				$ftr=mysql_fetch_array($qtr);
				$sub_subject_name=$ftr['name'];
				
				if($grade=='G')
				{
					continue;
				}
				$col_span_sub=0;
				$sub_count=0;
				$slt=mysql_query("select DISTINCT(`sub_subject_id`) from `exam_mapping` where `class_id`='$class_id' && `section_id`='$section_id' && `subject_id`='$subject_id'");
				$sub_sub_count=mysql_num_rows($slt);
				if($sub_sub_count>0){
					$sub_count=$sub_sub_count;
				}
				if($sub_count==1)
				{$col_span_sub=2;}
				 
				?>
                 <tr class="<?php if($sub_sub_count>1){ echo "subsubject";}?>">
                    <th height="33" width="15%" class="header_sub " colspan="<?php echo $col_span_sub;?>" style="margin-left:5px" rowspan="<?php echo $sub_count; ?>">
					<?php echo $subject; ?></th> 
					<?php 
			if($sub_count>0)
			{
			 while($flt=mysql_fetch_array($slt))
			 { 
						$sub_subject_id=$flt['sub_subject_id'];
						
						$slt1=mysql_query("select `name` from `master_sub_subject` where `id`='$sub_subject_id'");
						$flt1=mysql_fetch_array($slt1);
						$sub_sub_name=$flt1['name'];
						if($sub_subject_id)
						{?>
							<th class="header_sub"  height="25px" width="10%"><?php echo $sub_sub_name; ?></th>
					<?php } ?>
					
					
                <?php
					$TotalMaxMarks=0;
					$TotalGetMarks=0;
					$forCOl=0;
 				//* Architacher Loop
					$ArchitacherQuery=mysql_query("select DISTINCT(term_id) from `master_architecture` where `marksheet_term_id`='$term_id' && `class_id`='$class_id' && `section_id`='$section_id'");
					while($ftc_ArchitacherQuery=mysql_fetch_array($ArchitacherQuery))
					{  
						$ftc_ArchitacherQueryTerm_id=$ftc_ArchitacherQuery['term_id'];
						
						$total_one=0;
						$category_wisecolumn=mysql_query("select * from `master_architecture` where `marksheet_term_id`='$term_id' && `class_id`='$class_id' && `section_id`='$section_id'");
						while($ftc_categorywise=mysql_fetch_array($category_wisecolumn))
						{ 
							$categoryidd=$ftc_categorywise['category_id'];
							$exam_category_query=mysql_query("select DISTINCT(exam_category_id) from `exam_mapping` where `class_id`='$class_id' && `section_id`='$section_id' && `term_id`='$ftc_ArchitacherQueryTerm_id' && `subject_id`='$subject_id' && `sub_subject_id`='$sub_subject_id' && `exam_category_id` = '$categoryidd' ORDER BY `exam_category_id` ASC");
							$Countexam_category_query=mysql_num_rows($exam_category_query);
							while($exam_category_Fetch=mysql_fetch_array($exam_category_query))
							{ $SNo++;
							  $SNotot++;
								$FetchExamCategoryId=$exam_category_Fetch['exam_category_id'];
								$TotalOneSubject=0;
								$TotalOneSubjectMax=0;
								//** Exam Mapping Table ------- FInd Exam Category TYpe
								$exam_categoryTYpe_query=mysql_query("select `exam_category_type_id`,`max_marks` from `exam_mapping` where `class_id`='$class_id' && `section_id`='$section_id' && `term_id`='$ftc_ArchitacherQueryTerm_id' && `subject_id`='$subject_id' && `sub_subject_id`='$sub_subject_id' && `exam_category_id`='$FetchExamCategoryId' ORDER BY `exam_category_id` ASC");
								while($exam_categoryType_Fetch=mysql_fetch_array($exam_categoryTYpe_query))
								{
									$exam_category_type_id=$exam_categoryType_Fetch['exam_category_type_id'];
									$MainMaxMarks=$exam_categoryType_Fetch['max_marks'];
									// Count Total Max Marks One subject and Overall
									$TotalMaxMarks+=$MainMaxMarks;
									$TotalOneSubjectMax+=$MainMaxMarks;
									$OverAllTotalMaxMarks+=$MainMaxMarks;
					 
									$StudentMarksQuery=mysql_query("select * from `student_marks` where `scholar_no`='$scholar_no' && `term_id`='$ftc_ArchitacherQueryTerm_id' && `exam_category_id`='$FetchExamCategoryId' && `subject_id`='$subject_id' && `sub_subject_id`='$sub_subject_id' && `master_exam_type_id` = '$exam_category_type_id'");
									$FetchStudentMarks=mysql_fetch_array($StudentMarksQuery);
									$SubjectMarks=$FetchStudentMarks['marks'];
									// Count Total Get Marks One subject and Overall
									$TotalGetMarks+=$SubjectMarks;
									$TotalOneSubject+=$SubjectMarks;
									$OverAllTotalGetMarks+=$SubjectMarks;
								}
								$average_percentage=(($TotalOneSubject/$MainMaxMarks)*100);
								
								$srt=mysql_query("select `grade` from `master_grade` where `range_from`<='$average_percentage' && `range_to`>'$average_percentage'");
								$frt=mysql_fetch_array($srt);
								$grd=$frt['grade'];
								?>
								<td>
									<?php echo $TotalOneSubject; ?> (<?php echo $grd; ?>)
								</td>
							<?php
							$forCOl++;
							}
 						}
					}
					//** END Exam Mapping Table ------- FInd Exam Category 
 						$MinumumPassingPercentage=(($TotalMaxMarks/100)*33);
						if($TotalGetMarks<$MinumumPassingPercentage)
						{
							$Result+=1;
							$FailedInSubSubject[]=$sub_subject_id;
							$FaildInSubject[]=$subject;
						}
						$tot_avg=(($TotalGetMarks/$TotalMaxMarks)*100);
						
						$srt1=mysql_query("select `grade` from `master_grade` where `range_from`<='$tot_avg' && `range_to`>'$tot_avg'");
								$frt1=mysql_fetch_array($srt1);
								$grd_all=$frt1['grade'];
						?>
						<th>
							<?php echo $TotalGetMarks; ?> (<?php echo $grd_all; ?>)
						 </th>
                        <?php
						//** FInd Grade
						if($TotalGetMarks==0 || $TotalMaxMarks==0){$GetOneSubjectPercentage=0;}
						else
						{
							$GetOneSubjectPercentage=(($TotalGetMarks/$TotalMaxMarks)*100);
						}
						
						if($GetOneSubjectPercentage>=75)
						{
							$DistInSubject[]=$subject;
						}
							$GradeQuery=mysql_query("select `grade` from `master_grade` where `class_id`='$class_id' && `section_id`='$section_id' && `range_from`<='$GetOneSubjectPercentage' && `range_to`>='$GetOneSubjectPercentage'");
							$FtcGradeQuery=mysql_fetch_array($GradeQuery);
							$grade=$FtcGradeQuery['grade'];
						?>
 						</tr>
						<?php
						$SNo=0;
						$SNotot=0;
					 
				//* END  Architacher Loop
					} 
				}
			}
 			///*- END SUVJECT ALLOCSTYION LOOP
 			?>
             
  		</tbody>
	</table>
		 
        <!---- Maximum Rows---->
        
		
		
        <!----End Maximum Rows---->
		 
					<!--table width="100%"  cellspacing="0px" cellpadding="0px" border="1">
					
					
					
					
						<tr>
							 <th style="height:55px" >Attendance Term</th>
							 <?php 
							$st=mysql_query("select DISTINCT(term) from `attendance` where `scholar_no`='$scholar_no' ");
							while($ft=mysql_fetch_array($st))
							{
								$heading_term=$ft['term'];
								$st3=mysql_query("select `name` from `master_term` where `id`='$heading_term'");
								$ft3=mysql_fetch_array($st3);
								$heading_name=$ft3['name'];
								?>
								<th ><?php echo $heading_name; ?></th>
								<?php
							}
							?>
							<th>Over All</th>
						 </tr>
 						 <tr>
							<th style="height:55px" >Attendance</th>
							<?php 
							$totalAttendP=0;
							$totalAttendPGET=0;
							$st=mysql_query("select DISTINCT(term) from `attendance` where `scholar_no`='$scholar_no' ");
							while($ft=mysql_fetch_array($st))
							{
								$heading_term=$ft['term'];
								$st3=mysql_query("select `attendance`,`max_attendance` from `attendance` where `term`='$heading_term' && `scholar_no`='$scholar_no'	");
								$ft3=mysql_fetch_array($st3);
								$attendance=$ft3['attendance'];
								$max_attendance=$ft3['max_attendance'];
								$totalAttendP+=$attendance;
								$totalAttendPGET+=$max_attendance;
								$GetPercentageAttend=(($attendance/$max_attendance)*100);
								?>
								<th><?php echo $attendance.'/'.$max_attendance ?></th>
								<?php
							}
							$GetPercentageAttendOverAll=(($totalAttendP/$totalAttendPGET)*100);
							?>
							<th><?php echo $totalAttendP.'/'.$totalAttendPGET;?></th>
						 </tr>
					</table-->
				 
				   
                        <?php
						 //** Calculate Percentage
							$GetPercentage=(($OverAllTotalGetMarks*100)/$OverAllTotalMaxMarks);
							$OverAllPersentage=number_format($GetPercentage,2);
						//*** Check Fail Or Promote
						//FailedInSubSubject    FaildInSubject
						if($Result=='0')
						{
							$status="Promoted to Class ".$promt_class;
							$Promotion=$promt_class;
							$FinalStatusOfResult="Pass";
						}
						else if($Result=='1')
						{   
							$c=0;
							$FinalStatusOfResult="Supplementary";
							$StatusOfSubSubject='';
							$DistSubject='';
							foreach($FaildInSubject as $sub)
							{
								$FailedInSubSubject[$c];
								$DistInSubject[$c];
								$DistInSubSubject[$c];
								if($FailedInSubSubject[$c]!='')
								{
									$StatusOfSubSubject=$sub.'('.$FailedInSubSubject[$c].')';
								}
								else
								{
									$StatusOfSubSubject=$sub;
								}
								//-- DIST
							}
							$status=$StatusOfSubSubject;
							$Compartment=$StatusOfSubSubject;
						} 
						else if($Result>1)
						{
							$status="Detained in Class ".$CurrentClass;
							$Detained=$CurrentClass;					
							$FinalStatusOfResult="Fail";
							$c=0;
							foreach($FaildInSubject as $sub)
							{
								$FailedInSubSubject[$c];
								if($FailedInSubSubject[$c]!='')
								{
									$sub.'('.$FailedInSubSubject[$c].')';
								}
								else
								{
									$sub;
								}
 							}
						} 
						else {}
					//-//*** End Check Fail Or Promote
					
					//*** Student Result Table ENtry
						mysql_query("delete from `student_result` where `scholar_no`='$scholar_no' && `roll_no`='$StudentRollNo' && `class_id`='$class_id' && `section_id`='$section_id' && `term_id`='$term_id'");
						
						if($FinalStatusOfResult=='Pass')
						{
							$next_class=$prmt_id;
						}
						else
						{
							$next_class=$class_id;
						}
						mysql_query("insert into `student_result` SET `class_id`='$class_id',`section_id`='$section_id',`roll_no`='$StudentRollNo',`scholar_no`='$scholar_no',`status`='$status',`final_status`='$FinalStatusOfResult',`per`='$OverAllPersentage',`total`='$OverAllTotalGetMarks',`term_id`='$term_id',`total_marks`='$OverAllTotalMaxMarks',`next_class_id`='$next_class'");
						
						?>
		 
		<table width="100%" height="90" border="2"  cellspacing="0" cellpadding="0" >
		<tr>
			<th colspan="3" height="35px">Final Report</th>
		</tr>
		<tr>
			<td width="10%" height="35px">Sr.no</td>
			<td width="40%">Report</td>
			<td width="40%">Status</td>
		</tr>
		<tr>
			<td height="30px">1.</td>
			<td>Congratulations </td>
			<td></td>
		</tr>
		<tr>
			<td height="30px">2.</td>
			<td>Promotion Granted to</td>
			<td></td>
		</tr>
		</table>
		
		<table width="100%" height="100" border="2"  cellspacing="0" cellpadding="0" >
		<tr>
			<th width="11%" height="35px">Sr.no</th>
			<th width="30%">Name</th>
			<th width="30%">Signature</th>
			<th width="30%" rowspan="5">
			<?php
				qrcode_1_2_fnl();
			?>

			</th>
		</tr>
		<tr>
			<td height="30px">1.</td>
			<td>Class Teacher</td>
			<td></td>
		</tr>
		<tr>
			<td height="30px">2.</td>
			<td>Examination</td>
			<td></td>
		</tr>
		<tr>
			<td height="30px">3.</td>
			<td>Principal</td>
			<td></td>
		</tr>
		<tr>
			<td height="30px">4.</td>
			<td>Parents</td>
			<td></td>
		</tr>
		<tr>
			<td colspan="2" height="30px"></td>
			<td>Date of Issue</td>
			<td><?php echo date('d-M-Y')?></td>
		</tr>
		</table>
		
		
	<!-- Header End ---> 
    <table width="100%"  cellspacing="0px" height="200" cellpadding="0px" border="1" id="sample_1">
		<tbody>
         <tr class="header_font">
             <th height="28" rowspan="2" colspan="2" style="margin-left:5px">Subject / Exam</th>
			 <th height="30px" colspan="100"><?php echo $term; ?></th>
			 </tr>
			 <tr>
				<?php 
                $st=mysql_query("select DISTINCT(term_id) from `master_architecture` where `marksheet_term_id`='$term_id' && `class_id`='$class_id' && `section_id`='$section_id'");
                while($ft=mysql_fetch_array($st))
                {
                    $heading_term=$ft['term_id'];
                    $st3=mysql_query("select `name` from `master_term` where `id`='$heading_term'");
                    $ft3=mysql_fetch_array($st3);
                    $heading_name=$ft3['name'];
					$colspan=0;
					$category_wisecolumn=mysql_query("select * from `master_architecture` where `marksheet_term_id`='$term_id' && `class_id`='$class_id' && `section_id`='$section_id'");
					while($ftc_categorywise=mysql_fetch_array($category_wisecolumn))
					{
						
						$categoryidd=$ftc_categorywise['category_id'];	
 						$st4=mysql_query("select DISTINCT(exam_category_id) from `exam_mapping` where `class_id`='$class_id' && `section_id`='$section_id' && `term_id`='$heading_term' && `exam_category_id` = '$categoryidd' ORDER BY `exam_category_id`");
						$countexam_mapping=mysql_num_rows($st4);
						if($countexam_mapping>0)
						{	
							while($ft4=mysql_fetch_array($st4))
							{	
								$find_id=$ft4['exam_category_id'];
								$st7=mysql_query("select `name` from `exam_category` where `id`='$find_id'");
								$ft7=mysql_fetch_array($st7);
								$category_name=$ft7['name'];
								$colspan++;
							} 	
						}
						else
						{ for($x=0; $x<$countArchitecure; $x++){echo"<td></td>";}}
						
					}
					if($colspan==1){$colspan=0;}
					?>
					<th height="30px"><b><?php echo $heading_name; ?></b></th>
					<?php
                }
                ?>	
            <th>Over All Grade</th>
         </tr>
		   
        	<?php 
 			$OverAllTotalGetMarks=0;
			$OverAllTotalMaxMarks=0;
			$Result=0;
			$FailedInSubSubject=array();
			$FaildInSubject=array();
			///*- SUVJECT ALLOCSTYION LOOP
			$SNo=0;
			$SNotot=0;
			 
 			$FindSubject=mysql_query("select distinct `subject_id`,`elective` from `subject_allocation` where `class_id`='$class_id'  && `section_id`='$section_id'");
			while($ftc_subject=mysql_fetch_array($FindSubject))
			{
 				$subject_id=$ftc_subject['subject_id'];
				if(empty($subject_id))
				{
					$subject_id=$ftc_subject['elective'];
 					
					$ElectiveQuery=mysql_query("select * from `elective` where `scholar_id`='$scholar_no' && `subject_id`='$subject_id'");
					$ElectiveQueryCount=mysql_num_rows($ElectiveQuery);
					if($ElectiveQueryCount==0)
					{
						continue;
					}
				}
				$sub_subject_id=$ftc_subject['sub_subject_id'];
				
				$qry=mysql_query("select `subject`,`elective`,`grade` from `subject` where `id`='$subject_id'");
				$fet=mysql_fetch_array($qry);
				$subject=$fet['subject'];
				$grade=$fet['grade'];
				
				$qtr=mysql_query("select `name` from `master_sub_subject` where `id`='$sub_subject_id'");
				$ftr=mysql_fetch_array($qtr);
				$sub_subject_name=$ftr['name'];
				
				if($grade!='G')
				{
					continue;
				}
				$col_span_sub=0;
				$sub_count=0;
				$slt=mysql_query("select DISTINCT(`sub_subject_id`) from `exam_mapping` where `class_id`='$class_id' && `section_id`='$section_id' && `subject_id`='$subject_id'");
				$sub_sub_count=mysql_num_rows($slt);
				if($sub_sub_count>0){
					$sub_count=$sub_sub_count;
				}
				if($sub_count==1)
				{$col_span_sub=2;}
				 
				?>
                 <tr class="<?php if($sub_sub_count>1){ echo "subsubject";}?>">
                    <th height="28" width="15%" class="header_sub " colspan="<?php echo $col_span_sub;?>" style="margin-left:5px" rowspan="<?php echo $sub_count; ?>">
					<?php echo $subject; ?></th> 
					<?php 
			if($sub_count>0)
			{
			 while($flt=mysql_fetch_array($slt))
			 { 
						$sub_subject_id=$flt['sub_subject_id'];
						
						$slt1=mysql_query("select `name` from `master_sub_subject` where `id`='$sub_subject_id'");
						$flt1=mysql_fetch_array($slt1);
						$sub_sub_name=$flt1['name'];
						if($sub_subject_id)
						{?>
							<th class="header_sub"  height="25px" width="10%"><?php echo $sub_sub_name; ?></th>
					<?php } ?>
					
					
                <?php
					$TotalMaxMarks=0;
					$TotalGetMarks=0;
					$forCOl=0;
 				//* Architacher Loop
					$ArchitacherQuery=mysql_query("select DISTINCT(term_id) from `master_architecture` where `marksheet_term_id`='$term_id' && `class_id`='$class_id' && `section_id`='$section_id'");
					while($ftc_ArchitacherQuery=mysql_fetch_array($ArchitacherQuery))
					{  
						$ftc_ArchitacherQueryTerm_id=$ftc_ArchitacherQuery['term_id'];
						
						$total_one=0;
						$category_wisecolumn=mysql_query("select * from `master_architecture` where `marksheet_term_id`='$term_id' && `class_id`='$class_id' && `section_id`='$section_id'");
						while($ftc_categorywise=mysql_fetch_array($category_wisecolumn))
						{ 
							$categoryidd=$ftc_categorywise['category_id'];
							$exam_category_query=mysql_query("select DISTINCT(exam_category_id) from `exam_mapping` where `class_id`='$class_id' && `section_id`='$section_id' && `term_id`='$ftc_ArchitacherQueryTerm_id' && `subject_id`='$subject_id' && `sub_subject_id`='$sub_subject_id' && `exam_category_id` = '$categoryidd' ORDER BY `exam_category_id` ASC");
							$Countexam_category_query=mysql_num_rows($exam_category_query);
							while($exam_category_Fetch=mysql_fetch_array($exam_category_query))
							{ $SNo++;
							  $SNotot++;
								$FetchExamCategoryId=$exam_category_Fetch['exam_category_id'];
								$TotalOneSubject=0;
								$TotalOneSubjectMax=0;
								//** Exam Mapping Table ------- FInd Exam Category TYpe
								$exam_categoryTYpe_query=mysql_query("select `exam_category_type_id`,`max_marks` from `exam_mapping` where `class_id`='$class_id' && `section_id`='$section_id' && `term_id`='$ftc_ArchitacherQueryTerm_id' && `subject_id`='$subject_id' && `sub_subject_id`='$sub_subject_id' && `exam_category_id`='$FetchExamCategoryId' ORDER BY `exam_category_id` ASC");
								while($exam_categoryType_Fetch=mysql_fetch_array($exam_categoryTYpe_query))
								{
									$exam_category_type_id=$exam_categoryType_Fetch['exam_category_type_id'];
									$MainMaxMarks=$exam_categoryType_Fetch['max_marks'];
									// Count Total Max Marks One subject and Overall
									$TotalMaxMarks+=$MainMaxMarks;
									$TotalOneSubjectMax+=$MainMaxMarks;
									$OverAllTotalMaxMarks+=$MainMaxMarks;
					 
									$StudentMarksQuery=mysql_query("select * from `student_marks` where `scholar_no`='$scholar_no' && `term_id`='$ftc_ArchitacherQueryTerm_id' && `exam_category_id`='$FetchExamCategoryId' && `subject_id`='$subject_id' && `sub_subject_id`='$sub_subject_id' && `master_exam_type_id` = '$exam_category_type_id'");
									$FetchStudentMarks=mysql_fetch_array($StudentMarksQuery);
									$SubjectMarks=$FetchStudentMarks['marks'];
									// Count Total Get Marks One subject and Overall
									$TotalGetMarks+=$SubjectMarks;
									$TotalOneSubject+=$SubjectMarks;
									$OverAllTotalGetMarks+=$SubjectMarks;
								}
								$average_percentage=(($TotalOneSubject/$MainMaxMarks)*100);
								?>
								<td>
									<?php echo $show_grade=calculate_primary_grade_co_scholar_six($average_percentage); ?>
								</td>
							<?php
							$forCOl++;
							}
 						}
					}
					//** END Exam Mapping Table ------- FInd Exam Category 
 						$MinumumPassingPercentage=(($TotalMaxMarks/100)*33);
						if($TotalGetMarks<$MinumumPassingPercentage)
						{
							$Result+=1;
							$FailedInSubSubject[]=$sub_subject_id;
							$FaildInSubject[]=$subject;
						}
						$tot_avg=(($TotalGetMarks/$TotalMaxMarks)*100)
						?>
                         	<th>
								<?php echo $tot_show_grade=calculate_primary_grade_co_scholar_six($tot_avg); ?>
							 </th>
							   
                        <?php
						//** FInd Grade
						if($TotalGetMarks==0 || $TotalMaxMarks==0){$GetOneSubjectPercentage=0;}
						else
						{
							$GetOneSubjectPercentage=(($TotalGetMarks/$TotalMaxMarks)*100);
						}
						
						if($GetOneSubjectPercentage>=75)
						{  
							$DistInSubject[]=$subject;
						}
							$GradeQuery=mysql_query("select `grade` from `master_grade` where `class_id`='$class_id' && `section_id`='$section_id' && `range_from`<='$GetOneSubjectPercentage' && `range_to`>='$GetOneSubjectPercentage'");
							$FtcGradeQuery=mysql_fetch_array($GradeQuery);
							$grade=$FtcGradeQuery['grade'];
						?>
 						</tr>
						<?php
						$SNo=0;
						$SNotot=0;
					 
				//* END  Architacher Loop
					} 
				}
			}
 			///*- END SUVJECT ALLOCSTYION LOOP
 			?>
             
  		</tbody>
	</table>
	
	<table width="100%" >
			<tr>
				<td width="100%">
					<table width="100%"  cellspacing="0px" cellpadding="0px" border="1">
						<tr class="header_font">
							 <th style="height:45px" >Report B - Attendance</th>
							 <?php 
							$st=mysql_query("select DISTINCT(term) from `attendance` where `scholar_no`='$scholar_no' ");
							while($ft=mysql_fetch_array($st))
							{
								$heading_term=$ft['term'];
								$st3=mysql_query("select `name` from `master_term` where `id`='$heading_term'");
								$ft3=mysql_fetch_array($st3);
								$heading_name=$ft3['name'];
								?>
								<th ><?php echo $heading_name; ?></th>
								<?php
							}
							?>
							<th>Over All</th>
						 </tr>
						 <tr>
							<th style="height:45px" class="header_sub">Number of Meetings</th>
							<?php 
							$totalAttend=0;
							$st=mysql_query("select DISTINCT(term) from `attendance` where `scholar_no`='$scholar_no' ");
							while($ft=mysql_fetch_array($st))
							{
								$heading_term=$ft['term'];
								$st3=mysql_query("select `max_attendance` from `attendance` where `term`='$heading_term' && `scholar_no`='$scholar_no'");
								$ft3=mysql_fetch_array($st3);
								$max_attendance=$ft3['max_attendance'];
								$totalAttend+=$max_attendance;
								?>
								<th><?php echo $max_attendance; ?></th>
								<?php
							}
							?>
							<th><?php echo $totalAttend;?></th>
						 </tr>
						 <tr>
							<th style="height:45px" class="header_sub" >No. of Meetings <br> on work present</th>
							<?php 
							$totalAttendP=0;
							$st=mysql_query("select DISTINCT(term) from `attendance` where `scholar_no`='$scholar_no' ");
							while($ft=mysql_fetch_array($st))
							{
								$heading_term=$ft['term'];
								$st3=mysql_query("select `attendance` from `attendance` where `term`='$heading_term' && `scholar_no`='$scholar_no'");
								$ft3=mysql_fetch_array($st3);
								$attendance=$ft3['attendance'];
								$totalAttendP+=$attendance;
								?>
								<th><?php echo $attendance; ?></th>
								<?php
							}
							?>
							<th><?php echo $totalAttendP;?></th>
						 </tr>
						 <tr>
							<th style="height:40px" class="header_sub" >Percentage</th>
							<?php 
							$totalAttendP=0;
							$totalAttendPGET=0;
							$st=mysql_query("select DISTINCT(term) from `attendance` where `scholar_no`='$scholar_no' ");
							while($ft=mysql_fetch_array($st))
							{
								$heading_term=$ft['term'];
								$st3=mysql_query("select `attendance`,`max_attendance` from `attendance` where `term`='$heading_term' && `scholar_no`='$scholar_no'	");
								$ft3=mysql_fetch_array($st3);
								$attendance=$ft3['attendance'];
								$max_attendance=$ft3['max_attendance'];
								$totalAttendP+=$attendance;
								$totalAttendPGET+=$max_attendance;
								$GetPercentageAttend=(($attendance/$max_attendance)*100);
								?>
								<th><?php echo round($GetPercentageAttend , 2 ); ?>%</th>
								<?php
							}
							$GetPercentageAttendOverAll=(($totalAttendP/$totalAttendPGET)*100);
							?>
							<th><?php echo round($GetPercentageAttendOverAll , 2);?>%</th>
						 </tr>
						 <tr>
							<th style="height:40px" class="header_sub" >
								Remarks
							</th>
							<?php 
							$totalAttendP=0;
							$totalAttendPGET=0;
							$st=mysql_query("select DISTINCT(term) from `attendance` where `scholar_no`='$scholar_no' ");
							while($ft=mysql_fetch_array($st))
							{
								$heading_term=$ft['term'];
								$st3=mysql_query("select `attendance`,`max_attendance` from `attendance` where `term`='$heading_term' && `scholar_no`='$scholar_no'	");
								$ft3=mysql_fetch_array($st3);
								$attendance=$ft3['attendance'];
								$max_attendance=$ft3['max_attendance'];
								$totalAttendP+=$attendance;
								$totalAttendPGET+=$max_attendance;
								$GetPercentageAttend=(($attendance/$max_attendance)*100);
								?>
								<th><?php echo round($GetPercentageAttend , 2 ); ?>%</th>
								<?php
							}
							$GetPercentageAttendOverAll=(($totalAttendP/$totalAttendPGET)*100);
							?>
							<th><?php echo "Good"; ?></th>
						 </tr>
					</table>
				</td>
			<tr>
		</table>
		 <!----------------grade Point----------------------->
		<table width="100%" height="180" border="2"  cellspacing="0" cellpadding="0" >
		<tr>
			<th colspan="3" height="35px">
				PART-I SCHOLASTIC (GRADING ON NINE POINT SCALE )
			</th>
		</tr>
		<tr>
			<td width="34%" height="35px">MARKS-RANGE</td>
			<td width="33%">GRADE</td>
			<td width="33%">GRADE POINT</td>
		</tr>
		<tr>
			<td height="30px">91 - 100</td>
			<td>A1 </td>
			<td>10.0</td>
		</tr>
		<tr>
			<td height="30px">81 - 90</td>
			<td>A2 </td>
			<td>9.0</td>
		</tr>
		<tr>
			<td height="30px">71 - 80</td>
			<td>B1 </td>
			<td>8.0</td>
		</tr>
		<tr>
			<td height="30px">61 - 70</td>
			<td>B2 </td>
			<td>7.0</td>
		</tr>
		<tr>
			<td height="30px">51 - 60</td>
			<td>C1 </td>
			<td>6.0</td>
		</tr>
		<tr>
			<td height="30px">45 - 50</td>
			<td>C2 </td>
			<td>5.0</td>
		</tr>
		<tr>
			<td height="30px">40 - 44</td>
			<td>D  </td>
			<td>4.0</td>
		</tr>
		<tr>
			<td height="30px">21 - 39</td>
			<td>E1 </td>
			<td>3.0</td>
		</tr>
		<tr>
			<td height="30px">00 - 20</td>
			<td>E2 </td>
			<td>2.0</td>
		</tr>
		</table> 
		 <!----------------grade Point end----------------------->
		 <table width="100%" style="margin-bottom:10px"  border="0"  cellspacing="0" cellpadding="0"  >
            <tr>
                <th height="100px" width="25%">   </th>
                <th width="25%">  </th>
                <th width="25%">  </th>
                <th width="25%">  </th>
			</tr>
			<tr>
                <th height="10px" width="25%"><br>(Class Teacher)</th>
                <th width="25%">
				Mrs. Pushpa Sharma<br>(Examination)
				</th>
                <th width="25%">
				Mr. Shashank Taunk<br>(Principal)</th>
                <th width="25%"><br>(Parents)</th>
			</tr>
		</table>
		
		
		
    
    
</div>
</body>
</html>

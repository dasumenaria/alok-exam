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
	$stdunt=mysql_query("select `id`,`roll_no`,`name`,`father_name` from `student` where `class_id`='$class_id' && `section_id` = '$section_id' && `scholar_no`='$scholar_no'");
    $ftc_stdunt=mysql_fetch_array($stdunt);
	$id=$ftc_stdunt['id'];
	$father_name=$ftc_stdunt['father_name'];
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
			<tr class="header_font" bgcolor="CCFFCC">
			<?php
			for($d=0;$d<2;$d++)
			{
				?>
             <th height="33" colspan="2" style="margin-left:5px">Scholastic Area</th>
			 <th height="30px"><?php echo $term; ?></th>
			<?php } ?>
			 </tr>
			 <tr class="header_font" bgcolor="#E0A366">
			 <?php
			for($d=0;$d<2;$d++)
			{
				?>
			  <th height="33" width="15%" style="margin-left:5px">Subject</th>
			  <th height="33" width="25%" style="margin-left:5px;">Sub Subject</th>
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
			}
                ?>	
          </tr>
         	<?php 
 			$OverAllTotalGetMarks=0;
			$OverAllTotalMaxMarks=0;
			$Result=0;
			$FailedInSubSubject=array();
			$FaildInSubject=array();
			///*- SUVJECT ALLOCSTYION LOOP
			$SNo=0;
 			$FindSubject=mysql_query("select * from `subject_allocation` where `class_id`='$class_id'  && `section_id`='$section_id'");
			while($ftc_subject=mysql_fetch_array($FindSubject))
			{
				$SNo++;
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
				//$SNo;
				 $y=$SNo%2;
				if($y==1)
				{
						?>
					<tr>
						<?php
				}  ?>
				 
                     <th height="25" width="8%" class="header_sub" style="margin-left:5px"><?php echo $subject;?></th> 
                     <td height="25" width="8%" class="header_sub" style="margin-left:5px;text-align:left !important"> &nbsp; <?php  echo $sub_subject_name;  ?></td> 
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
							{
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
								<th>
								<?php echo $show_grade=calculate_primary_grade($average_percentage); ?>
								<?php //echo $TotalOneSubject.'( '.$TotalOneSubjectMax.' )'; ?> </th>
							<?php
							$forCOl++;
							}
 						}
					}
				if($y==0)
				{
					?></tr><?php
				}  
					 
				//* END  Architacher Loop
 			}
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
		
		<table width="100%" height="100px">
			<tr>
			<td width="50%" valign="top">
				<table width="100%" height="100px" border="1" cellspacing="0" cellpadding="0" style="text-align:center">
					<tr  bgcolor="CCFFCC">
						<th colspan="7" height="35px">Health Status</th>
					</tr>
					<tr bgcolor="#E0A366">
						<th width="150px" colspan="2">Height</th>
						<th rowspan="2"  height="30px">Weight</th>
						<th rowspan="2">Blood Group</th>
						<th colspan="2">Vision</th>
						<th rowspan="2">Dental Hygiene</th>
					</tr>
					<tr bgcolor="#E0A366">
						<th height="30px">F</th>
						<th>I</th>
						<th>L</th>
						<th>R</th>
					</tr>
					<?php 
					$sot=mysql_query("select * from `student_health` where `scholar_no`='$scholar_no'");
					while($fot=mysql_fetch_array($sot))
					{
						$master_health_id=$fot['master_health_id'];
						$master_health_value=$fot['value'];
						
						if($master_health_id==1){
							$height_feet=$master_health_value;
						}
						if($master_health_id==2){
							$height_inch=$master_health_value;
						}
						if($master_health_id==3){
							$weight=$master_health_value;
						}
						if($master_health_id==4){
							$blood_group=$master_health_value;
						}
						if($master_health_id==5){
							$vision_left=$master_health_value;
						}
						if($master_health_id==6){
							$vision_right=$master_health_value;
						}
						if($master_health_id==7){
							$dental_hygin=$master_health_value;
						}
					}
					
					?>
					<tr>
						<td height="30px" width="50px" ><?php echo $height_feet; ?></td>
						<td width="50px"><?php echo $height_inch; ?></td>
						<td width="100px"><?php echo $weight; ?></td>
						<td  width="100px"><?php echo $blood_group; ?></td>
						<td  width="50px"><?php echo $vision_left; ?></td>
						<td width="50px"><?php echo $vision_right; ?></td>
						<td width="100px"><?php echo $dental_hygin; ?></td>
					</tr>
				</table>
			</td>
			
			<td width="50%" valign="top">
				<table width="100%" height="100px" border="1" cellspacing="0" cellpadding="0" style="text-align:center">
					<tr  bgcolor="CCFFCC">
						<th colspan="4" height="35px">Attendance</th>
					</tr>
					<?php 
					$sot1=mysql_query("select * from `attendance` where `scholar_no`='$scholar_no' && `term`='$term_id'");
					$fot1=mysql_fetch_array($sot1);
					$total_meeting=$fot1['max_attendance'];
					$total_attended=$fot1['attendance'];
					
					$attendance_percentage=round((($total_attended/$total_meeting)*100), 2);
					?>
					<tr bgcolor="#E0A366">
						<th height="50px" width="25%"> Total Meetings</th>
						<th>Meetings Attended</th>
						<th>Percentage</th>
						<th>Remarks</th>
					</tr>
					<tr>
						 <td height="30px" width="25%"><?php echo $total_meeting; ?></td>
						 <td width="25%"><?php echo $total_attended; ?></td>
						 <td width="25%"><?php echo $attendance_percentage; ?> %</td>
						 <td width="25%"><?php calculate_remark($attendance_percentage); ?></td>
					</tr>
				</table>
			</td>
			
			</tr>
		</table>
		
		<table width="100%" height="200" border="2"  cellspacing="0" cellpadding="0" >
		<tr bgcolor="#E0A366">
			<th width="10%" height="28px">Sr.no</th>
			<th width="20%">Designation</th>
			<th width="20%">Name</th>
			<th width="20%">Signature</th>
			<th width="20%" rowspan="5" style="background-color:#FFF">
			<?php
				qrcode_1_2_fnl();
			?>

			</th>
		</tr>
		<tr>
			<td height="28px">1.</td>
			<td>Class Teacher</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td height="28px">2.</td>
			<td>Examination</td>
			<td>Mrs. Pushpa Sharma</td>
			<td></td>
		</tr>
		<tr>
			<td height="28px">3.</td>
			<td>Principal</td>
			<td>Mr. Shashank Taunk</td>
			<td></td>
		</tr>
		<tr>
			<td height="28px">4.</td>
			<td>Parents</td>
			<td><?php echo $father_name; ?></td>
			<td></td>
		</tr>
		<tr>
			<td colspan="3" height="30px"></td>
			<td>Date of Issue</td>
			<td><?php echo date('d-M-Y')?></td>
		</tr>
		</table>
		
		
	 
		 <!----------------grade Point----------------------->
		<table width="100%" height="150" border="2"  cellspacing="0" cellpadding="0" >
		<tr  bgcolor="CCFFCC">
			<th colspan="3" height="35px">
				PART - I SCHOLASTIC (GRADING ON NINE POINT SCALE )
			</th>
		</tr>
		<tr bgcolor="#E0A366">
			<td width="34%" height="35px">MARKS-RANGE</td>
			<td width="33%">GRADE</td>
			<td width="33%">GRADE POINT</td>
		</tr>
		<tr>
			<td height="25px">91 - 100</td>
			<td>A1 </td>
			<td>10.0</td>
		</tr>
		<tr>
			<td height="25px">81 - 90</td>
			<td>A2 </td>
			<td>9.0</td>
		</tr>
		<tr>
			<td height="25px">71 - 80</td>
			<td>B1 </td>
			<td>8.0</td>
		</tr>
		<tr>
			<td height="25px">61 - 70</td>
			<td>B2 </td>
			<td>7.0</td>
		</tr>
		<tr>
			<td height="25px">51 - 60</td>
			<td>C1 </td>
			<td>6.0</td>
		</tr>
		<tr>
			<td height="25px">45 - 50</td>
			<td>C2 </td>
			<td>5.0</td>
		</tr>
		<tr>
			<td height="25px">40 - 44</td>
			<td>D  </td>
			<td>4.0</td>
		</tr>
		<tr>
			<td height="25px">21 - 39</td>
			<td>E1 </td>
			<td>3.0</td>
		</tr>
		<tr>
			<td height="25px">00 - 20</td>
			<td>E2 </td>
			<td>2.0</td>
		</tr>
		</table> 
		 
    
</div>
</body>
</html>

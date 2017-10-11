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
   		<?php header_info($id,$exam_name);?><br>
  
	<!-- Header End ---> 
    <table width="100%"  cellspacing="0px" height="300" cellpadding="0px" border="1">
		<tr bgcolor="CCFFCC">
            <th style="height:34px" >Scholastic Area</th>
			<?php 
				$st=mysql_query("select DISTINCT(term_id) from `master_architecture` where `marksheet_term_id`='$term_id' && `class_id`='$class_id' && `section_id`='$section_id' order by `term_id` ASC");
				$countArchitecure=mysql_num_rows($st);
				while($ft=mysql_fetch_array($st))
				{
					$heading_term=$ft['term_id'];
					$st1=mysql_query("select `name` from `master_term` where `id`='$heading_term'");
					$ft1=mysql_fetch_array($st1);
					$heading_name=$ft1['name'];
					$category_wisecolumn=mysql_query("select * from `master_architecture` where `marksheet_term_id`='$term_id' && `class_id`='$class_id' && `section_id`='$section_id'");
 					$display_count=mysql_num_rows($category_wisecolumn);
					$heading_name=$ft1['name'];
					?>
					<th colspan="<?php echo $display_count; ?>"><?php echo $heading_name; ?></th>
					<?php
            	}
            ?>
            <th>Total</th>
			<th>Grade</th>
        </tr>
        
        
        <tr bgcolor="#E0A366">
            <th height="33"  width="22%" style="margin-left:5px">Subject / Exam</th>
				<?php 
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
							
							?>
							<th><?php echo $category_name; ?></th>
							<?php
						} 	
					}
					else
					{for($x=0; $x<$countArchitecure; $x++){echo"<td></td>";}}
					}
                }
                ?>	
            <th>Total</th>
			<th>Grade</th>
        </tr>
        
        
       
        	<?php 
 			$OverAllTotalGetMarks=0;
			$OverAllTotalMaxMarks=0;
			$Result=0;
			$FailedInSubSubject=array();
			$FaildInSubject=array();
			///*- SUVJECT ALLOCSTYION LOOP
 			$FindSubject=mysql_query("select * from `subject_allocation` where `class_id`='$class_id'  && `section_id`='$section_id'");
			while($ftc_subject=mysql_fetch_array($FindSubject))
			{
				$subject_id=$ftc_subject['subject_id'];
				if(empty($subject_id))
				{
					$subject_id=$ftc_subject['elective'];
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
				?>
                 <tr>
                    <th height="33" width="8%" style="margin-left:5px"><?php echo $subject; if(!empty($sub_subject_name)){ ?>-<?php echo $sub_subject_name; } ?></th> 
                <?php
					 
 				//* Architacher Loop
					$ArchitacherQuery=mysql_query("select DISTINCT(term_id) from `master_architecture` where `marksheet_term_id`='$term_id' && `class_id`='$class_id' && `section_id`='$section_id'");
					while($ftc_ArchitacherQuery=mysql_fetch_array($ArchitacherQuery))
					{
						$ftc_ArchitacherQueryTerm_id=$ftc_ArchitacherQuery['term_id'];
						$TotalMaxMarks=0;
						$TotalGetMarks=0;
						$total_one=0;
						$category_wisecolumn=mysql_query("select * from `master_architecture` where `marksheet_term_id`='$term_id' && `class_id`='$class_id' && `section_id`='$section_id'");
						while($ftc_categorywise=mysql_fetch_array($category_wisecolumn))
						{
							$categoryidd=$ftc_categorywise['category_id'];	
							//** Exam Mapping Table ------- FInd Exam Category
							$exam_category_query=mysql_query("select DISTINCT(exam_category_id) from `exam_mapping` where `class_id`='$class_id' && `section_id`='$section_id' && `term_id`='$ftc_ArchitacherQueryTerm_id' && `subject_id`='$subject_id' && `sub_subject_id`='$sub_subject_id' && `exam_category_id` = '$categoryidd' ORDER BY `exam_category_id` ASC");
							$Countexam_category_query=mysql_num_rows($exam_category_query);
							if($Countexam_category_query>0)
							{
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
								//** Exam Mapping Table ------- FInd Exam CategoryTYpe
							?>
									<th><?php echo $TotalOneSubject.'( '.$TotalOneSubjectMax.' )'; ?> </th>
							<?php 
							}
							}
							else
							{for($x=0; $x<$countArchitecure; $x++){echo"<td></td>";}}
						}
						//** END Exam Mapping Table ------- FInd Exam Category 
 						$MinumumPassingPercentage=(($TotalMaxMarks/100)*33);
						if($TotalGetMarks<$MinumumPassingPercentage)
						{
							$Result+=1;
							$FailedInSubSubject[]=$sub_subject_id;
							$FaildInSubject[]=$subject;
						}
						 
						?>
                         	<th><?php echo $TotalGetMarks.'( '.$TotalMaxMarks.' )'; ?></th>
                        <?php
						//** FInd Grade
						if($TotalGetMarks==0 || $TotalMaxMarks==0){$GetOneSubjectPercentage=0;}
						else
						{
							$GetOneSubjectPercentage=(($TotalGetMarks/$TotalMaxMarks)*100);
						}
							$GradeQuery=mysql_query("select `grade` from `master_grade` where `class_id`='$class_id' && `section_id`='$section_id' && `range_from`<='$GetOneSubjectPercentage' && `range_to`>='$GetOneSubjectPercentage'");
							$FtcGradeQuery=mysql_fetch_array($GradeQuery);
							$grade=$FtcGradeQuery['grade'];
							
						?>
                            <th><?php echo $grade;  ?></th>
                      </tr>
                        <?php
					}
				//* END  Architacher Loop
 			}
 			///*- END SUVJECT ALLOCSTYION LOOP
			?>
        </table>
        <!---- Maximum Rows---->
        <table width="100%"  cellspacing="0px" cellpadding="0px" bgcolor="#E0A366" border="1">
            <tr>
                <th style="height:35px" >MAXIMUM MARKS</th>
                <th width="14%"><?php echo $OverAllTotalMaxMarks; ?></th>
                <th style="height:35px" >OBTAIN MARKS</th>
                <th width="15.1%"><?php echo $OverAllTotalGetMarks; ?></th>
            </tr>
        </table>
        <!----End Maximum Rows---->
        <table width="100%"  cellspacing="0px" cellpadding="0px" border="1">
            <tr bgcolor="CCFFCC" >
            	<th colspan="2" style="height:35px" >Health Status</th>
                <th style="height:34px" >Attendance</th>
            </tr>
            <tr bgcolor="#E0A366">
            	<?php
				//- Health Status
					$HealthHeadingQuery=mysql_query("select * from `master_health` order by `id` ASC ");
					while($FetchHealthHeadingQuery=mysql_fetch_array($HealthHeadingQuery))
					{
						$health_type=$FetchHealthHeadingQuery['health_type'];
						$parameter=$FetchHealthHeadingQuery['parameter'];
						echo "<th style='height:35px'>". $health_type."( ".$parameter." )</th>";
					}
				//- End Health Status
				?>
                <th>Total Attendance</th>
             </tr>
             <tr>
            	<?php
				//- Health Status
					$DataHealthHeadingQuery=mysql_query("select * from `master_health` order by `id` ASC ");
					while($FetchDataHealthHeadingQuery=mysql_fetch_array($DataHealthHeadingQuery))
					{
						$MasterHelgthId=$FetchDataHealthHeadingQuery['id'];
						$GetStudentHelgthQuery=mysql_query("select `value` from `student_health` where `scholar_no`='$scholar_no' && `master_health_id`='$MasterHelgthId' ");
						$ftcGetStudentHelgthQuery=mysql_fetch_array($GetStudentHelgthQuery);
						$HealthValue=$ftcGetStudentHelgthQuery['value'];
						echo "<th style='height:35px'>".$HealthValue." </th>";	 
					}
				//- End Health Status
				
				//-- Attendance 
					$DataAttendAnceQuery=mysql_query("select `attendance` from `attendance` where `scholar_no`='$scholar_no' ");
					$FetchDataAttendAnceQuery=mysql_fetch_array($DataAttendAnceQuery);
					$AttendanceData=$FetchDataAttendAnceQuery['attendance'];
					echo "<th style='height:35px'>".$AttendanceData." </th>";
				//-- End Attendance 
				?>
            </tr>
        </table>
        
        <table width="100%"  cellspacing="0px" cellpadding="0px" border="1">
            <tr>
                <th style="height:35px"  width="20%"  bgcolor="CCFFCC" >Co-Scholastic Area</th>
            </tr>
        </table>
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
                        $sst=mysql_query("select * from `master_grade` WHERE `class_id`='$class_id' && `section_id`='$section_id'  ORDER BY `range_to` DESC");
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
                    </table>
                </td>
            	<td width="50%" valign="top">
            		<table height="300" width="100%" border="1" cellspacing="0" cellpadding="0" style="text-align:center">
                        <tr bgcolor="CCFFCC" >
	                        <th colspan="7" style="height:35px !important;"> Grading Marks </th>
                        </tr>
            			<tr style="font-size:16px" bgcolor="#E0A366" height="15px">
            				<td width="100" style="height:35px !important;" ><strong>Subject</strong></td>
							<?php 
                                $st=mysql_query("select DISTINCT(term_id) from `master_architecture` where `marksheet_term_id`='$term_id' order by `term_id` ASC");
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
                            ?>
                            <th colspan="2">OverAll Result</th>
                        </tr>
                        
                        
                        <tr bgcolor="#E0A366">
                            <th width="22%" style="margin-left:5px;height:35px !important;">Exam</th>
                            <?php 
                            $ArchitacherQuery=mysql_query("select DISTINCT(term_id) from `master_architecture` where `marksheet_term_id`='$term_id'");
                            while($ftc_ArchitacherQuery=mysql_fetch_array($ArchitacherQuery))
                            {
                                $TermNameArchitacherQuery=$ftc_ArchitacherQuery['term_id'];
             
                                $FtcTermNameCategory=mysql_query("select DISTINCT(exam_category_id) from `exam_mapping` where `class_id`='$class_id' && `section_id`='$section_id' && `term_id`='$heading_term' ORDER BY `exam_category_id`");
                                while($FtcTermNameArray=mysql_fetch_array($FtcTermNameCategory))
                                {
                                    $FtcTermNameArrayCategory=$FtcTermNameArray['exam_category_id'];
                    
                                    $GetCategoryName=mysql_query("select `name` from `exam_category` where `id`='$FtcTermNameArrayCategory'");
                                    $FtcGetCategoryName=mysql_fetch_array($GetCategoryName);
                                    $category_name=$FtcGetCategoryName['name'];
                                    ?>
                                   	 <th><?php echo $category_name; ?></th>
                                    <?php 
                                } 
                            } ?>	
                            <th>Total</th>
                            <th>Grade</th>
						</tr>
						<?php 
                        $SubjectDataQuery=mysql_query("select * from `subject` where `grade`='G'");
                        while($FtcSubjectDataQuery=mysql_fetch_array($SubjectDataQuery))
                        {
                        	$SubjectIdGrade=$FtcSubjectDataQuery['id'];
							
							///*- SUVJECT ALLOCSTYION LOOP
							$FindSubject=mysql_query("select * from `subject_allocation` where `class_id`='$class_id' && `subject_id`='$SubjectIdGrade'");
							while($ftc_subject=mysql_fetch_array($FindSubject))
							{
								$subject_id=$ftc_subject['subject_id'];
								$elective=$ftc_subject['elective'];
								$sub_subject_id=$ftc_subject['sub_subject_id'];
								
								$qry=mysql_query("select `subject`,`elective`,`grade` from `subject` where `id`='$subject_id'");
								$fet=mysql_fetch_array($qry);
								$subject=$fet['subject'];
								$grade=$fet['grade'];
								
								$qtr=mysql_query("select `name` from `master_sub_subject` where `id`='$sub_subject_id'");
								$ftr=mysql_fetch_array($qtr);
								$sub_subject_name=$ftr['name'];
								
								 
								?>
								 <tr>
									<th  width="8%" style="margin-left:5px; height:35px !important;"><?php echo $subject; if(!empty($sub_subject_name)){ ?>-<?php echo $sub_subject_name; } ?></th> 
								<?php
									
								//* Architacher Loop
									$ArchitacherQuery=mysql_query("select DISTINCT(term_id) from `master_architecture` where `marksheet_term_id`='$term_id'");
									while($ftc_ArchitacherQuery=mysql_fetch_array($ArchitacherQuery))
									{
										$ftc_ArchitacherQueryTerm_id=$ftc_ArchitacherQuery['term_id'];
										$TotalMaxMarks=0;
										$TotalGetMarks=0;
										$total_one=0;
										//** Exam Mapping Table ------- FInd Exam Category
										$exam_category_query=mysql_query("select DISTINCT(exam_category_id) from `exam_mapping` where `class_id`='$class_id' && `section_id`='$section_id' && `term_id`='$ftc_ArchitacherQueryTerm_id' && `subject_id`='$subject_id' && `sub_subject_id`='$sub_subject_id' ORDER BY `exam_category_id` ASC");
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
												 
								 
												$StudentMarksQuery=mysql_query("select * from `student_marks` where `scholar_no`='$scholar_no' && `term_id`='$ftc_ArchitacherQueryTerm_id' && `exam_category_id`='$FetchExamCategoryId' && `subject_id`='$subject_id' && `sub_subject_id`='$sub_subject_id' && `master_exam_type_id` = '$exam_category_type_id'");
												$FetchStudentMarks=mysql_fetch_array($StudentMarksQuery);
												$SubjectMarks=$FetchStudentMarks['marks'];
												// Count Total Get Marks One subject and Overall
												$TotalGetMarks+=$SubjectMarks;
												$TotalOneSubject+=$SubjectMarks;
 												
											}
											//** Exam Mapping Table ------- FInd Exam CategoryTYpe
											
											//** FInd Grade
											$GetOneSubjectPercentageOne=0;
											if($TotalOneSubject==0 || $TotalOneSubjectMax==0) {$GetOneSubjectPercentageOne=0;}
											else
											{
												$GetOneSubjectPercentageOne=(($TotalOneSubject/$TotalOneSubjectMax)*100);
											}
											$GradeQueryOne=mysql_query("select `grade` from `master_grade` where `class_id`='$class_id' && `section_id`='$section_id' && `range_from`<='$GetOneSubjectPercentageOne' && `range_to`>='$GetOneSubjectPercentageOne'");
											$FtcGradeQueryOne=mysql_fetch_array($GradeQueryOne);
											$GradeOne=$FtcGradeQueryOne['grade'];
										?>
												<th ><?php echo $GradeOne; ?></th>
										<?php 
										}
										//** END Exam Mapping Table ------- FInd Exam Category 
										
										?>
											<th><?php echo $TotalGetMarks.'( '.$TotalMaxMarks.' )'; ?></th>
										<?php
										//** FInd Grade
											$GetOneSubjectPercentage=(($TotalGetMarks/$TotalMaxMarks)*100);
											$GradeQuery=mysql_query("select `grade` from `master_grade` where `class_id`='$class_id' && `section_id`='$section_id' && `range_from`<='$GetOneSubjectPercentage' && `range_to`>='$GetOneSubjectPercentage'");
											$FtcGradeQuery=mysql_fetch_array($GradeQuery);
											$grade=$FtcGradeQuery['grade'];
										?>
											<th style="height:35px !important;"><?php echo $grade;  ?></th>
									  </tr>
										<?php
									}
								//* END  Architacher Loop
							}
							///*- END SUVJECT ALLOCSTYION LOOP
							
						}
                        
                     ?>   
                    </table>
                 </td>
                 
             </tr>
         </table>      
       <!--- Grading Views-->	
        <table width="100%" border="0" >
            <tr>
                <td width="50%"> 
                    <table height="307" width="100%" border="1" cellspacing="0" cellpadding="0" style="text-align:center" >
                        <tr bgcolor="CCFFCC">
                            <th colspan="3" scope="col" height="35">Result</th>
                        </tr>
                        <tr style="font-size:16px" bgcolor="#E0A366" >
                            <td width="135" style="text-align:left; padding-left:15px;height:35px !important;"><strong>Attributes</strong></td>
                            <td width="135"><strong>Status</strong></td>
                        </tr>
                        <?php
						 //** Calculate Percentage
							$GetPercentage=(($OverAllTotalGetMarks*100)/$OverAllTotalMaxMarks);
							$OverAllPersentage=number_format($GetPercentage,2);
						//*** Check Fail Or Promote
						//FailedInSubSubject    FaildInSubject
						if($Result=='0')
						{
							$status="Promoted to Class ".$promt_class;
							$FinalStatusOfResult="Pass";
						}
						else if($Result=='1')
						{   
							$c=0;
							$FinalStatusOfResult="Supplementary";
							$StatusOfSubSubject='';
							foreach($FaildInSubject as $sub)
							{
								$FailedInSubSubject[$c];
								if($FailedInSubSubject[$c]!='')
								{
									$StatusOfSubSubject=$sub.'('.$FailedInSubSubject[$c].')';
								}
								else
								{
									$StatusOfSubSubject=$sub;
								}
							}
							$status=$StatusOfSubSubject;
							
						} 
						else if($Result>1)
						{
							$status="Detained in Class ".$CurrentClass; 
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
                        <tr>
                            <td style="text-align:left; padding-left:15px;">Percentage</td>
                            <td><?php echo $OverAllPersentage; ?></td>
                        </tr>
                        <!--<tr>
                            <td style="text-align:left; padding-left:15px;height:35px !important;">Rank</td>
                            <td>&nbsp;</td>
                        </tr>-->
                        <tr>
                            <td style="text-align:left; padding-left:15px;">Division</td>
                            <td><?php // echo $stst; ?></b></td>
                        </tr>
                        <tr>
                            <td  style="text-align:left; padding-left:15px;">Result</td>	
                            <td colspan="2"><?php echo $FinalStatusOfResult; ?></b></td>	
                        </tr>
                         
                        <tr height="100px">
                            <td style="text-align:center; font-size:18px;">Remarks</td>
                            <td><?php echo $status; ?></td>
                        </tr>
                    </table>
                 </td>
                 <td width="50%"> 
                    <table height="307" width="100%" border="1" cellspacing="0" cellpadding="0" style="text-align:center" >
                        <tr bgcolor="CCFFCC">
                            <th colspan="3" scope="col"  height="35">Term Report (Signature)</th>
                        </tr>
                        <tr style="font-size:16px" bgcolor="#E0A366"  height="35">
                            <td width="135" style="text-align:left; padding-left:15px"><strong>Designation</strong></td>
                            <td width="135"><strong>Signature</strong></td>
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
                            <td colspan="2"><?php echo date('d-M-Y'); ?></td>	
                        </tr>
                        <tr height="100px">
                            <td style="text-align:center; font-size:18px">Principal<br>( Seal & Signature )</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    
    
</div>
</body>
</html>

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
			<tr class="header_font" bgcolor="CCFFCC">
				<td  height="30px" colspan="100">Part 1 : Scholastic Area</td>
			<tr>
			<tr class="header_font" bgcolor="#E0A366">
				 <th height="33" rowspan="2" colspan="2" style="margin-left:5px">Subject / Exam</th>
				 <th height="30px" colspan="100"><?php echo $term; ?></th>
			</tr>
			<tr class="header_font" bgcolor="#E0A366">
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
						
					
					//if($colspan==1){$colspan=0;}
					?>
					<th height="30px"><b><?php echo $category_name; ?></b></th>
					<?php
                } }
                ?>	
            <th>Over All Total</th>
            <th>Grade</th>
			
         </tr>
		 
		 <!----------MAX--MARKS--START----------->
		 <tr class="header_font"><th colspan="2">Max Marks</th>
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
 						$st4=mysql_query("select DISTINCT(exam_category_id),max_marks,`reduse_to`,`reduse` from `exam_mapping` where `class_id`='$class_id' && `section_id`='$section_id' && `term_id`='$heading_term' && `exam_category_id` = '$categoryidd' ORDER BY `exam_category_id`");
						$countexam_mapping=mysql_num_rows($st4);
						if($countexam_mapping>0)
						{	
							$f=0;
							while($ft4=mysql_fetch_array($st4))
							{	
								$find_id=$ft4['exam_category_id'];
								$reduse=$ft4['reduse'];
								$reduse_to=$ft4['reduse_to'];
								$view_max_marks=$ft4['max_marks'];
								if($f==1){
									$view_max_marks=0;
								}
								if(($reduse=='yes') && ($f==0)){
									$f=1;
									$view_max_marks=$reduse_to;
									
								}
								
							} 	
						}
						else
						{ for($x=0; $x<$countArchitecure; $x++){echo"<td></td>";}}
						
					
					//if($colspan==1){$colspan=0;}
					?>
					<th height="30px"><b><?php echo $view_max_marks; ?></b></th>
					<?php
						$all_view_max_marks+=$view_max_marks;

                } }
                ?>	
            <th><?php echo $all_view_max_marks; ?></th>
            <th></th>
			
         </tr>
		 
		 <!----------MAX--MARKS--END----------->
		 
		<!--- A Max+
				L T M Max marks=0 ------------------------> 
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
								$dummy_add=0;
								//** Exam Mapping Table ------- FInd Exam Category TYpe
								$exam_categoryTYpe_query=mysql_query("select `exam_category_type_id`,`max_marks`,`reduse`,`reduse_to` from `exam_mapping` where `class_id`='$class_id' && `section_id`='$section_id' && `term_id`='$ftc_ArchitacherQueryTerm_id' && `subject_id`='$subject_id' && `sub_subject_id`='$sub_subject_id' && `exam_category_id`='$FetchExamCategoryId' ORDER BY `exam_category_id` ASC");
								$l=0;
								$reduse_mark=0;
								$dummy_max_marks=0;
								//$TotalGetMarks=0;
								while($exam_categoryType_Fetch=mysql_fetch_array($exam_categoryTYpe_query))
								{
									
									$exam_category_type_id=$exam_categoryType_Fetch['exam_category_type_id'];
									$MainMaxMarks=$exam_categoryType_Fetch['max_marks'];
									$reduse=$exam_categoryType_Fetch['reduse'];
									$reduse_to=$exam_categoryType_Fetch['reduse_to'];
									// Count Total Max Marks One subject and Overall
									
									$StudentMarksQuery=mysql_query("select * from `student_marks` where `scholar_no`='$scholar_no' && `term_id`='$ftc_ArchitacherQueryTerm_id' && `exam_category_id`='$FetchExamCategoryId' && `subject_id`='$subject_id' && `sub_subject_id`='$sub_subject_id' && `master_exam_type_id` = '$exam_category_type_id'");
									$FetchStudentMarks=mysql_fetch_array($StudentMarksQuery);
									$SubjectMarks=$FetchStudentMarks['marks'];
									// Count Total Get Marks One subject and Overall
									//--- ATML COnsept
									if($SubjectMarks=='A'){}
									if($SubjectMarks=='M'){$MainMaxMarks=0; $SubjectMarks='M';}
									if($SubjectMarks=='T'){$MainMaxMarks=0; $SubjectMarks='T';}
									if($SubjectMarks=='L'){$MainMaxMarks=0;$SubjectMarks='L';}
									
									if($reduse=='no'){
										$TotalMaxMarks+=$MainMaxMarks;
										$OverAllTotalMaxMarks+=$MainMaxMarks;
									}else if(($reduse=='yes')){
										
										$l=1;
										$TotalMaxMarks+=$reduse_to;
										$OverAllTotalMaxMarks+=$reduse_to;
									}
									if($reduse=='yes'){
										$reduse_mark=$reduse_to;
									}
									$dummy_max_marks+=$MainMaxMarks;
									
									$reduse_calculation=0; 
									if($reduse=='no'){
										$TotalGetMarks+=$SubjectMarks;
										$TotalOneSubject+=$SubjectMarks;
										$OverAllTotalGetMarks+=$SubjectMarks;
									}else{
										$dummy_add+=$SubjectMarks;
									}
									
								}
								 
								if($reduse=='yes'){
										$mark_reduse=$dummy_add;
										$reduse_mark;
										$dummy_max_marks;
										$reduce_percentage=(($reduse_mark*100)/$dummy_max_marks);	 
										$reduse_calculation=(($mark_reduse*$reduce_percentage)/100);
										$TotalGetMarks+=$reduse_calculation;
										$TotalOneSubject+=$reduse_calculation;
										$OverAllTotalGetMarks+=$reduse_calculation;
									}
								 
								?>
								<td>
									<?php echo $TotalOneSubject;//.'--'.$TotalMaxMarks; ?>
								</td>
							<?php
							$forCOl++;;
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
								<?php 
								echo $TotalGetMarks;
								?>
							 </th>
							 <th>
								<?php
								echo $tot_show_grade=calculate_secondary_grade($tot_avg); ?>
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
		
		<table width="100%"  cellspacing="0px" cellpadding="0px" border="1" id="sample_1">
		<tbody>
			<tr class="header_font" bgcolor="CCFFCC">
				 <th height="30" colspan="102" style="margin-left:5px">Part 2 : Co-Scholastic Activities</th>
			</tr>
			<tr class="header_font" bgcolor="#E0A366">
				<th height="33" rowspan="2" colspan="2" style="margin-left:5px">Subject / Exam</th>
				<th height="30px" colspan="100"><?php echo $term; ?></th>
			</tr>
			<tr class="header_font" bgcolor="#E0A366">
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
						
					
					//if($colspan==1){$colspan=0;}
					?>
					<th height="30px"><b><?php echo $category_name; ?></b></th>
					<?php
                } }
                ?>	
            <th>Over All Grade</th>
 			
         </tr>
		 
		 <!----------MAX--MARKS--START----------->
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
								?>
								<td>
									<?php echo $show_grade=calculate_secondary_grade_co_scholar($average_percentage); ?>
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
								<?php echo $tot_show_grade=calculate_secondary_grade_co_scholar($tot_avg); ?>
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
		<table width="100%" height="100px" border="1" cellspacing="0" cellpadding="0" style="text-align:center">
			<tr  bgcolor="CCFFCC">
				<th colspan="4" height="30px">Attendance</th>
			</tr>
			<?php 
			$sot1=mysql_query("select * from `attendance` where `scholar_no`='$scholar_no' && `term`='$term_id'");
			$fot1=mysql_fetch_array($sot1);
			$total_meeting=$fot1['max_attendance'];
			$total_attended=$fot1['attendance'];
			
			$attendance_percentage=round((($total_attended/$total_meeting)*100), 2);
			?>
			<tr bgcolor="#E0A366">
				<th height="30px" width="25%"> Total Meetings</th>
				<th>Meetings Attended</th>
				<th>Percentage</th>
				<th>Remarks</th>
			</tr>
			<tr>
				 <td height="28px" width="25%"><?php echo $total_meeting; ?></td>
				 <td width="25%"><?php echo $total_attended; ?></td>
				 <td width="25%"><?php echo $attendance_percentage; ?> %</td>
				 <td width="25%"><?php calculate_remark($attendance_percentage); ?></td>
			</tr>
		</table>	
		<table width="100%"  border="1"  cellspacing="0" cellpadding="0" >
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
			<td colspan="3" height="28px"></td>
			<td>Date of Issue</td>
			<td><?php echo date('d-M-Y')?></td>
		</tr>
		</table>
		
	<!-- Header End ---> 
    
	
	
		<!----------------grade Point----------------------->
	<table  width="100%" >
		<tr>
			<td width="50%">
				<table width="100%" border="2"  cellspacing="0" cellpadding="0" >
					<tr bgcolor="CCFFCC">
						<th colspan="3" height="28px">
							Scholastic Area : Part 1 (Grading on 8 Point Scale)
						</th>
					</tr>
					<tr bgcolor="#E0A366">
						<td width="34%" height="28px">MARKS-RANGE</td>
						<td width="33%">GRADE</td> 
					</tr>
					<tr>
						<td height="20px">91 - 100</td>
						<td>A1 </td>
					</tr>
					<tr>
						<td height="20px">81 - 90</td>
						<td>A2 </td>
					</tr>
					<tr>
						<td height="20px">71 - 80</td>
						<td>B1 </td>
					</tr>
					<tr>
						<td height="20px">61 - 70</td>
						<td>B2 </td>
					</tr>
					<tr>
						<td height="20px">51 - 60</td>
						<td>C1</td>
					</tr>
					<tr>
						<td height="20px">41 - 50</td>
						<td>C2</td>
					</tr>
					<tr>
						<td height="20px">33 - 40</td>
						<td>D</td> 
					</tr>
					<tr>
						<td height="20px">32 & Below</td>
						<td>E (Need Improvement) </td> 
					</tr>
				</table>
			</td>
			<td width="50%">
				 <!----------------grade Point end----------------------->
				<table width="100%" height="180" border="2"  cellspacing="0" cellpadding="0" >
					<tr bgcolor="CCFFCC">
						<th colspan="3" height="30px">
							Co-Scholastic Activities Part 2 (Grading on 3 Point Scale)
						</th>
					</tr>
					<tr bgcolor="#E0A366">
						<td width="33%" height="30px">GRADE</td>
						<td width="33%">GRADE POINT</td>
						<td width="33%">GRADE ACHIEVEMENTS</td>
					</tr>
					<tr>
						<td height="28px">A</td>
						<td>3</td>
						<td>Outstanding</td>
					</tr>
					<tr>
						<td height="28px">B</td>
						<td>2</td>
						<td>Very Good</td>
					</tr>
					<tr>
						<td height="28px">C</td>
						<td>1</td>
						<td>Fair</td>
					</tr>
 				</table> 
			</td>
		</tr>
	</table>
     
</div>
</body>
</html>

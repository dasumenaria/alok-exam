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
	$StudentRollNo=$ftc_stdunt['roll_no'];
	$StudentName=$ftc_stdunt['name'];
	$Studentfather_name=$ftc_stdunt['father_name'];
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
				<td  height="25px" colspan="100">Part 1 : Scholastic Area</td>
			<tr>
			<tr class="header_font" bgcolor="#E0A366">
				 <th height="28" rowspan="2" colspan="2" style="margin-left:5px">Subject / Exam</th>
				 <th height="28px" colspan="100"><?php echo $term; ?></th>
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
				}
					$colspan=0;
					 
					$category_wisecolumn=mysql_query("select * from `master_architecture` where `marksheet_term_id`='$term_id' && `class_id`='$class_id' && `section_id`='$section_id'");
					while($ftc_categorywise=mysql_fetch_array($category_wisecolumn))
					{
						
						$categoryidd=$ftc_categorywise['category_id'];
 						$st4=mysql_query("select DISTINCT(exam_category_id) from `exam_mapping` where `class_id`='$class_id' && `section_id`='$section_id'  && `exam_category_id` = '$categoryidd' ORDER BY `exam_category_id`");
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
						
					
					?>
					<th height="30px" width="10%"><b><?php echo $category_name; ?></b></th>
					<?php
					
                } 
                ?>	
            <th width="10%">Over All Total</th>
            <th width="10%">Grade</th>
			
         </tr>
		 
 		 <tr class="header_font"  bgcolor="#E0A366"><th colspan="2">Max Marks</th>
				<?php 
                $st=mysql_query("select DISTINCT(term_id) from `master_architecture` where `marksheet_term_id`='$term_id' && `class_id`='$class_id' && `section_id`='$section_id'");
                while($ft=mysql_fetch_array($st))
                {
                    $heading_term=$ft['term_id'];
                    $st3=mysql_query("select `name` from `master_term` where `id`='$heading_term'");
                    $ft3=mysql_fetch_array($st3);
                    $heading_name=$ft3['name'];
				}
					$colspan=0;
					$category_wisecolumn=mysql_query("select * from `master_architecture` where `marksheet_term_id`='$term_id' && `class_id`='$class_id' && `section_id`='$section_id'");
					while($ftc_categorywise=mysql_fetch_array($category_wisecolumn))
					{
						
						$categoryidd=$ftc_categorywise['category_id'];	
 						$st4=mysql_query("select DISTINCT(exam_category_id),max_marks,`reduse_to`,`reduse` from `exam_mapping` where `class_id`='$class_id' && `section_id`='$section_id' && `exam_category_id` = '$categoryidd' ORDER BY `exam_category_id`");
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
                } 
                ?>	
            <th><?php echo $all_view_max_marks; ?></th>
            <th></th>
			
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
		$SubjectDataQuery=mysql_query("select * from `subject` where `id` !='43' order by `order_type` ASC ");
		while($FtcSubjectDataQuery=mysql_fetch_array($SubjectDataQuery))
		{
			$SubjectIdGrade=$FtcSubjectDataQuery['id'];
		
			$FindSubject=mysql_query("select distinct `subject_id`,`elective` from `subject_allocation` where `class_id`='$class_id'  && `section_id`='$section_id' && `subject_id` ='$SubjectIdGrade'");
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
                    <th height="33" width="10%" class="header_sub " colspan="<?php echo $col_span_sub;?>" style="margin-left:5px" rowspan="<?php echo $sub_count; ?>">
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
						$category_wisecolumn=mysql_query("select * from `master_architecture` where `marksheet_term_id`='$term_id' && `class_id`='$class_id' && `section_id`='$section_id' group by `category_id`");
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
									}else if(($reduse=='yes' && $l==0)){
										
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
									<?php echo $TotalOneSubject;?>
									<input type="hidden" class='rowno_<?php echo $categoryidd."_".$SNo; ?>' value="<?php echo $TotalOneSubject;?>">
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
								echo round($TotalGetMarks);
								?>
							 </th>
							 <th>
								<?php
								 $TotalGetMarks.'/'.$TotalMaxMarks.'='.$tot_avg; 
								 $tot_avg=round($tot_avg);
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
		}
 			///*- END SUVJECT ALLOCSTYION LOOP
 			?>
        <tr class="header_font">
			<th colspan="2" height="28px">Total</th>
				<?php 
				 
				$x=0;	 
				$category_wisecolumn=mysql_query("select * from `master_architecture` where `marksheet_term_id`='$term_id' && `class_id`='$class_id' && `section_id`='$section_id'");
				while($ftc_categorywise=mysql_fetch_array($category_wisecolumn))
				{
					$categoryidd=$ftc_categorywise['category_id'];
					$x++;	
					?>
					<th id="hello<?php echo $categoryidd.'_'.$x; ?>"></th>
					<script src="assets/global/plugins/jquery.min.js" type="text/javascript"></script>
					<script>
						$(document).ready(function()
						{
							var tot=0;
							var tots=0;
							var totssss=0;
							var sub=<?php echo $categoryidd; ?>;
							var i=<?php echo $x; ?>;
							
 								$('.rowno_'+sub+'_'+i).each(function() {
									 
									if($('.rowno_'+sub+'_'+i).length>0)
									{
										tot+=eval($(this).val());
									}
									else
									{
										 tot+=0;
									}
								});
								tot = Math.round(tot);
								$("#hello"+sub+"_<?php echo $x;?>").text(tot); 
						});
						</script>
					<?php
					
                } 
                ?>	
            <th width="10%"><?php echo round($OverAllTotalGetMarks); ?></th>
            <th width="10%"><?php  $tot_avgofOverALl=(($OverAllTotalGetMarks/$OverAllTotalMaxMarks)*100);
			 echo $tot_show_grade=calculate_secondary_grade($tot_avgofOverALl);
			?></th>
			
         </tr>		
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
							$status=" Class ".$promt_class;
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
							//$status=$StatusOfSubSubject;
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

	<table width="100%" height="100px" style="margin-top:7px">
		<tr>
			<td width="50%" valign="top">
				<table width="100%"  cellspacing="0px" cellpadding="0px" border="1" id="sample_1">
				<tbody>
					<tr class="header_font" bgcolor="CCFFCC">
						 <th height="25" colspan="102" style="margin-left:5px">Part 2 : Co-Scholastic Activities (to be accessed on a 3 point scale)</th>
					</tr>
					<!--<tr class="header_font" bgcolor="#E0A366">
						<?php 
						$st=mysql_query("select DISTINCT(term_id) from `master_architecture` where `marksheet_term_id`='$term_id' && `class_id`='$class_id' && `section_id`='$section_id' order by `term_id` ASC");
							while($ft=mysql_fetch_array($st))
							{
								$heading_term=$ft['term_id'];
								$st3=mysql_query("select `name` from `master_term` where `id`='$heading_term'");
								$ft3=mysql_fetch_array($st3);
								$heading_name=$ft3['name'];
								?>
								<th height="25" colspan="2"><?php echo $heading_name; ?></th>
								<?php
								
							}
						?>				
					</tr>-->

					<tr class="header_font" bgcolor="#E0A366">
						<th height="25" style="margin-left:5px">Activities</th>
						<?php 
							$st=mysql_query("select DISTINCT(term_id) from `master_architecture` where `marksheet_term_id`='$term_id' && `class_id`='$class_id' && `section_id`='$section_id' order by `term_id` ASC");
							while($ft=mysql_fetch_array($st))
							{
								$heading_term=$ft['term_id'];
								$st3=mysql_query("select `name` from `master_term` where `id`='$heading_term'");
								$ft3=mysql_fetch_array($st3);
								$heading_name=$ft3['name'];
								?>
								<th height="25"><?php echo $heading_name; ?></th>
						<?php } ?>
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
						$slt=mysql_query("select DISTINCT(`sub_subject_id`) from `exam_mapping` where `class_id`='$class_id' && `section_id`='$section_id' && `subject_id`='$subject_id' ");
						$sub_sub_count=mysql_num_rows($slt);
						if($sub_sub_count>0){
							$sub_count=$sub_sub_count;
						}
						if($sub_count==1)
						{$col_span_sub=2;}
						 
						?>
						
						 <tr class="<?php if($sub_sub_count>1){ echo "subsubject";}?>">
						 <th height="25" width="45%" class="header_sub " style="margin-left:5px" rowspan="<?php echo $sub_count; ?>">
							<?php echo $subject; ?></th>
							<?php
							$st=mysql_query("select DISTINCT(term_id) from `master_architecture` where `marksheet_term_id`='$term_id' && `class_id`='$class_id' && `section_id`='$section_id' order by `term_id` ASC");
							while($ft=mysql_fetch_array($st))
							{
								$heading_term=$ft['term_id'];
							
							$TotalMaxMarks=0;
							$TotalGetMarks=0;
							$forCOl=0;
						//* Architacher Loop
							 
								$ftc_ArchitacherQueryTerm_id=$heading_term;
								 
								$total_one=0;
								$category_wisecolumn=mysql_query("select * from `master_architecture` where `marksheet_term_id`='$term_id' && `class_id`='$class_id' && `section_id`='$section_id' group by `category_id` ");
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
							?> </tr><?php 
					}
					?>
					  
				</tbody>
			</table>
			</td>
			
			<td width="50%" valign="top">
				<table width="100%"  border="1"  cellspacing="0" cellpadding="0" >
			<tr class="header_font" bgcolor="CCFFCC">
						 <th height="25" colspan="102" style="margin-left:5px">Signature</th>
					</tr>
			<tr bgcolor="#E0A366" class="header_font">
				<th height="25px">Class Teacher</th>
				<th>Examination</th>
				<th>Principal</th>
				<th>Parents</th>
				<th width="20%" rowspan="5" style="background-color:#FFF">
				<?php
					qrcode_1_2_fnl();
				?>
				</th>
			</tr>
			<tr>
				<th height="25px">
				<?php
				 
					$schls=mysql_query("select * from `staff_class` where `class_id`='$class_id' && `section_id`='$section_id' ");
					$ftc_schls=mysql_fetch_array($schls);
					  $count=mysql_num_rows($schls);
					$name='';
					if($count>0)
					{
						$staff_id=$ftc_schls['staff_id'];
						
						$sname=mysql_query("select * from `login` where `id`='$staff_id' ");
						$ftc_sname=mysql_fetch_array($sname);
						$name=$ftc_sname['name'];
					}
					echo $name;
				?>
				</th>
				<th>Mr. Anil Mehta</th>
				<th>Mr. Shashank Taunk</th>
				<th><?php echo $Studentfather_name;?></th>
			</tr>
			<tr>
				<td height="37px"></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>Date of Issue</td>
				<td><?php echo date('d-M-Y')?></td>
				<td height="36px"></td>
				<td></td>
			</tr>
		</table>
			</td>
			
		</tr>
	</table>
	<table width="100%" height="100px" style="margin-top:7px">
	<tr>
		<td width="50%" valign="top">
			<table width="100%"  cellspacing="0px" cellpadding="0px" border="1" id="sample_1">
				<tbody>
					<tr class="header_font" bgcolor="CCFFCC">
						 <th height="25px" colspan="102" style="margin-left:5px">Part 3 : Discipline (to be accessed on a 3 point scale)</th>
					</tr>
					<!--<tr class="header_font" bgcolor="#E0A366">
						<?php 
						 
							$st=mysql_query("select DISTINCT(term_id) from `master_architecture` where `marksheet_term_id`='$term_id' && `class_id`='$class_id' && `section_id`='$section_id' order by `term_id` ASC");
							while($ft=mysql_fetch_array($st))
							{
								$heading_term=$ft['term_id'];
								$st3=mysql_query("select `name` from `master_term` where `id`='$heading_term'");
								$ft3=mysql_fetch_array($st3);
								$heading_name=$ft3['name'];
								?>
								<th height="25" colspan="2"><?php echo $heading_name; ?></th>
								<?php
								
							}
						?>				
					</tr>-->
					<tr class="header_font" height="25" bgcolor="#E0A366">
						<th height="37px" style="margin-left:5px">Elements</th>
						<?php 
							$st=mysql_query("select DISTINCT(term_id) from `master_architecture` where `marksheet_term_id`='$term_id' && `class_id`='$class_id' && `section_id`='$section_id' order by `term_id` ASC");
							while($ft=mysql_fetch_array($st))
							{$heading_term=$ft['term_id'];
								$st3=mysql_query("select `name` from `master_term` where `id`='$heading_term'");
								$ft3=mysql_fetch_array($st3);
								$heading_name=$ft3['name'];
								?>
								<th ><?php echo $heading_name; ?></th>
							<?php 
							}
						?>				
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
					 
					$FindSubject=mysql_query("select distinct `subject_id`,`elective` from `subject_allocation` where `class_id`='$class_id'  && `section_id`='$section_id' && `subject_id`='43'");
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
							<th height="31px" width="45%" class="header_sub " style="margin-left:5px" rowspan="<?php echo $sub_count; ?>">
								<?php echo $subject; ?></th>
							<?php
							$st=mysql_query("select DISTINCT(term_id) from `master_architecture` where `marksheet_term_id`='$term_id' && `class_id`='$class_id' && `section_id`='$section_id' order by `term_id` ASC");
							while($ft=mysql_fetch_array($st))
							{
								$heading_term=$ft['term_id'];
								?>
								
								<?php
								$TotalMaxMarks=0;
								$TotalGetMarks=0;
								$forCOl=0;
							//* Architacher Loop
							 
								$ftc_ArchitacherQueryTerm_id=$heading_term;
								
								$total_one=0;
								$category_wisecolumn=mysql_query("select * from `master_architecture` where `marksheet_term_id`='$term_id' && `class_id`='$class_id' && `section_id`='$section_id' group by `category_id` ");
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
							} ?>
						</tr>
						<?php
						$SNo=0;
						$SNotot=0;
					}
					?>
				</tbody>
			</table>
		</td>
		<td width="50%" >
			<table width="100%" height="100px" border="1" cellspacing="0" cellpadding="0" style="text-align:center">
					<tr  bgcolor="CCFFCC" class="header_font">
						<th colspan="4" height="25px">Attendance</th>
					</tr>
					<?php 
					$sot1=mysql_query("select * from `attendance` where `scholar_no`='$scholar_no' && `term`='$term_id'");
					$fot1=mysql_fetch_array($sot1);
					$total_meeting=$fot1['max_attendance'];
					$total_attended=$fot1['attendance'];
					
					$attendance_percentage=round((($total_attended/$total_meeting)*100), 2);
					?>
					<tr bgcolor="#E0A366" class="header_font">
						<th height="30px" width="25%"> Total Meetings</th>
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
	
	 

<?php if($term_id==2){?>
<table width="100%"  border="1" style="margin-top:10px" cellspacing="0" cellpadding="0" >
	<tr>
	<td width="70%">
		<table width="100%" border="1" cellspacing="0" cellpadding="0" >
			<tr bgcolor="#E0A366" class="header_font">
				<th height="28px" colspan="3">Final Report</th>
			</tr>
			<tr>
				<th height="35px" width="50%">Scope for Improvement</th>
				<td height="35px" width="50%"> <?php echo $Compartment;?></td>
			</tr>
			<tr>
				<th height="35px">Result</th>
				<td> <?php echo $FinalStatusOfResult; ?></td>
			</tr>
			<tr>
				<th height="35px">Promotion Granted to</th>
				<td><?php echo $status;?></td>
			</tr>
		</table>
	</td>
	<td width="30%">
		<table width="100%" border="1" cellspacing="0" cellpadding="0" >
			<tr bgcolor="#E0A366" class="header_font">
				<th height="28px" colspan="3">Examination Seal</th>
			</tr>
			<tr>
				<th height="105px" colspan="2" width="50%"></th>
			</tr>
			 
		</table>
	</td>
	</tr>
</table>
	

<?php } ?>

	<!-- Header End ---> 
    
	
	
		<!----------------grade Point----------------------->
	<table  width="100%" style="margin-top:10px">
		<tr>
			<td width="50%">
				<table width="100%" border="2"  cellspacing="0" cellpadding="0" >
					<tr bgcolor="CCFFCC">
						<th colspan="3" height="25px" class="header_font">
							Scholastic Area : Part 1 (Grading on 8 Point Scale)
						</th>
					</tr>
					<tr bgcolor="#E0A366" class="header_font">
						<td width="34%" height="25px">MARKS-RANGE</td>
						<td width="33%">GRADE</td> 
					</tr>
					<tr>
						<td height="15px">91 - 100</td>
						<td>A1 </td>
					</tr>
					<tr>
						<td height="15px">81 - 90</td>
						<td>A2 </td>
					</tr>
					<tr>
						<td height="15px">71 - 80</td>
						<td>B1 </td>
					</tr>
					<tr>
						<td height="15px">61 - 70</td>
						<td>B2 </td>
					</tr>
					<tr>
						<td height="15px">51 - 60</td>
						<td>C1</td>
					</tr>
					<tr>
						<td height="15px">41 - 50</td>
						<td>C2</td>
					</tr>
					<tr>
						<td height="15px">33 - 40</td>
						<td>D</td> 
					</tr>
					<tr>
						<td height="15px">32 & Below</td>
						<td>E (Need Improvement) </td> 
					</tr>
				</table>
			</td>
			<td width="50%">
				 <!----------------grade Point end----------------------->
				<table width="100%" height="190" border="2"  cellspacing="0" cellpadding="0" >
					<tr bgcolor="CCFFCC">
						<th colspan="3" height="28px" class="header_font">
							Co-Scholastic Activities Part 2 (Grading on 3 Point Scale)
						</th>
					</tr>
					<tr bgcolor="#E0A366" class="header_font">
						<td width="33%" height="28px">GRADE</td>
						<td width="33%">GRADE POINT</td>
						<td width="33%">GRADE ACHIEVEMENTS</td>
					</tr>
					<tr>
						<td height="38px">A</td>
						<td>3</td>
						<td>Outstanding</td>
					</tr>
					<tr>
						<td height="38px">B</td>
						<td>2</td>
						<td>Very Good</td>
					</tr>
					<tr>
						<td height="38px">C</td>
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

<?php
include("database.php");
include("authentication.php");
$class_id=$_GET['cls'];
$section_id=$_GET['sec'];
$exam_id=$_GET['exm'];
$cat_id=$_GET['cat'];
$sect_id=$section_id;
?>

<html>
<head>
<title>Edit Marks</title>  
<style>
table {
  position: relative;
  width: 1300px;
  background-color: #aaa;
  overflow: hidden;
  border-collapse: collapse;
}


/*thead*/
thead {
  position: relative;
  display: block; /*seperates the header from the body allowing it to be positioned*/
  width: 1300px;
  overflow: visible;
}

thead th {
  background-color: #99a;
  min-width: 150px;
  height: 32px;
  border: 1px solid #222;
}
thead tr th:nth-child(2) {/*first cell in the header*/
position: relative;
 height: 40px;
background-color: #99a;
}

thead tr th:nth-child(1) {/*first cell in the header*/
   position: relative;
   height: 40px;
  background-color: #99a;
}
thead tr th:nth-child(3) {/*first cell in the header*/
   position: relative;
   height: 40px;
  background-color: #99a;
}
 



/*tbody*/
tbody {
  position: relative;
  display: block; /*seperates the tbody from the header*/
  width: 1300px;
  height: 450px;
  overflow: scroll;
}

tbody td {
  background-color: #fff;
  min-width: 150px;
  border: 1px solid #222;
}

 
tbody tr td:nth-child(2) {  /*the first cell in each tr*/
  position: relative;
   height: 40px;
  background-color: #99a;
} 
tbody tr td:nth-child(1) {  /*the first cell in each tr*/
  position: relative;
   height: 40px;
  background-color: #99a;
} 
tbody tr td:nth-child(3) {  /*the first cell in each tr*/
  position: relative;
   height: 40px;
  background-color: #99a;
}
.popover {
    top: 0px !important;
    left: 406.5px !important;
    display: block !important;
}
.form-control {
	font-size: 14px;
	font-weight: normal;
	color: #333;
	background-color: #fff;
	border: 1px solid #e5e5e5;
	-webkit-box-shadow: none;
	box-shadow: none;
	-webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
	transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
} 
.input-xsmall {
    width: 80px !important;
height:30px;
text-align:center;
}
</style>
<script src="assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script>
$(document).ready(function() {
  $('tbody').scroll(function(e) { //detect a scroll event on the tbody
  	/*
    Setting the thead left value to the negative valule of tbody.scrollLeft will make it track the movement
    of the tbody element. Setting an elements left value to that of the tbody.scrollLeft left makes it maintain 			it's relative position at the left of the table.    
    */
    $('thead').css("left", -$("tbody").scrollLeft()); //fix the thead relative to the body scrolling
     
	$('thead th:nth-child(2)').css("left", $("tbody").scrollLeft()); //fix the first cell of the header
    $('tbody td:nth-child(2)').css("left", $("tbody").scrollLeft()); //fix the first column of tdbody 
	$('thead th:nth-child(1)').css("left", $("tbody").scrollLeft()); //fix the first cell of the header
    $('tbody td:nth-child(1)').css("left", $("tbody").scrollLeft()); //fix the first column of tdbody 

	$('thead th:nth-child(3)').css("left", $("tbody").scrollLeft()); //fix the first cell of the header
    $('tbody td:nth-child(3)').css("left", $("tbody").scrollLeft()); //fix the first column of tdbody 

	 
  });
});
</script> 
</head>
<body > 
<?php 
		$cl=mysql_query("select `roman` from `master_class` where `id`='$class_id'");
		$sf=mysql_fetch_array($cl);
		
		$cl_romn=$sf['roman'];
		
		$cl1=mysql_query("select `section` from `master_section` where `id`='$section_id'");
		$sf1=mysql_fetch_array($cl1);
		
		$sc_name=$sf1['section'];
		?>
<div class="caption"  style="text-align:center; font-size:20px">
	<h4><i class="icon-puzzle"></i> Edit Detail Of Class: <?php echo $cl_romn; ?> and Section: <?php echo $sc_name; ?></h4>
</div>
		<table>
			<thead>
 				<tr>
 					<th></th>
					<th></th>
					<th></th>
					<?php 
									 
									$qry=mysql_query("select `subject_id`,`sub_subject_id` from `subject_allocation` where `class_id`='$class_id' && `section_id`='$sect_id' && `elective`='0'");
									while($frq=mysql_fetch_array($qry))
									{
										$sub_id=$frq['subject_id'];
										$sub_subject_id=$frq['sub_subject_id'];
										
										$st=mysql_query("select `subject` from `subject` where `id`='$sub_id'");
										$ft=mysql_fetch_array($st);
										$sub_name=$ft['subject'];
										
										$sst=mysql_query("select `name` from `master_sub_subject` where `id`='$sub_subject_id'");
										$fst=mysql_fetch_array($sst);
										$sub_subject_name=$fst['name'];
										
										$col=0;
										$qt=mysql_query("select `id`,`name` from `exam_category` order by `order_type` ASC");
										while($fqt=mysql_fetch_array($qt))
										{
											$exam_category_id=$fqt['id'];
											$category_name=$fqt['name'];
											$qts=mysql_query("select `exam_category_type_id` from `exam_mapping` where `class_id`='$class_id' && `section_id`='$sect_id' && `subject_id`='$sub_id' && `sub_subject_id`='$sub_subject_id' && `term_id`='$exam_id' && `exam_category_id`='$exam_category_id' ");
											$count=mysql_num_rows($qts);
											 if($count>0)
											 {$col+=$count;
											 if($exam_category_id==18){$col+=2;}
											 }
											 $count=0;
											 
										}
										?>
										<th colspan="<?php echo $col; ?>">
											 <?php echo $sub_name; ?>
											 <?php if(!empty($sub_subject_name)){
												 echo '-'.$sub_subject_name;
											 } ?>
										</th>
									 
								<?php } 
									 
									$qry1=mysql_query("select `elective`,`sub_subject_id` from `subject_allocation` where `class_id`='$class_id' && `section_id`='$sect_id' && `subject_id`='0'");
									while($frq=mysql_fetch_array($qry1))
									{
										$sub_id=$frq['elective'];
										$sub_subject_id=$frq['sub_subject_id'];
										
										$st=mysql_query("select `subject` from `subject` where `id`='$sub_id'");
										$ft=mysql_fetch_array($st);
										$sub_name=$ft['subject'];
										
										$sst=mysql_query("select `name` from `master_sub_subject` where `id`='$sub_subject_id'");
										$fst=mysql_fetch_array($sst);
										$sub_subject_name=$fst['name'];
										
										$col=0;
										$qt=mysql_query("select `id`,`name` from `exam_category` order by `order_type` ASC");
										while($fqt=mysql_fetch_array($qt))
										{
											$exam_category_id=$fqt['id'];
											$category_name=$fqt['name'];
											$qts=mysql_query("select `exam_category_type_id` from `exam_mapping` where `class_id`='$class_id' && `section_id`='$sect_id' && `subject_id`='$sub_id' && `sub_subject_id`='$sub_subject_id' && `term_id`='$exam_id' && `exam_category_id`='$exam_category_id' ");
											$count=mysql_num_rows($qts);
											 if($count>0)
											 {$col+=$count;
											 if($exam_category_id==18){$col+=2;}
											 }
											 $count=0;
											 
										}
										?>
										<th colspan="<?php echo $col; ?>">
											 <?php echo $sub_name; ?>
											 <?php if(!empty($sub_subject_name)){
												 echo '-'.$sub_subject_name;
											 } ?>
										</th>
									 
								<?php }  ?>
					
					
					
					 
					 
				</tr>
 
				 <tr>
 					<th></th>
					<th></th>
					<th></th>
								
								<?php 
									$qry=mysql_query("select `subject_id`,`sub_subject_id` from `subject_allocation` where `class_id`='$class_id' && `section_id`='$sect_id' && `elective`='0'");
									while($frq=mysql_fetch_array($qry))
									{
										$sub_id=$frq['subject_id'];
										$sub_subject_id=$frq['sub_subject_id'];
										$x=0;
										$qt=mysql_query("select `id`,`name` from `exam_category` order by `order_type` ASC");
										while($fqt=mysql_fetch_array($qt))
										{
											$exam_category_id=$fqt['id'];
											$category_name=$fqt['name'];
											$qts=mysql_query("select `exam_category_type_id` from `exam_mapping` where `class_id`='$class_id' && `section_id`='$sect_id' && `subject_id`='$sub_id' && `sub_subject_id`='$sub_subject_id' && `term_id`='$exam_id' && `exam_category_id`='$exam_category_id' ");
											$count=mysql_num_rows($qts);
											if($count>0) {
												?>
												<th  colspan="<?php echo $count;?>">
												<?php echo $category_name; ?>
												</th>
											<?php
												//if($class_id >=7 && $class_id <=12 ){ 
													if($exam_category_id=='18') {?>
													<th>
														 Total
													</th>
													<th>
														 Need for Pass
													</th>
												<?php }
												//}

											}
  										}
										
									} 
								
									$qry1=mysql_query("select `elective`,`sub_subject_id` from `subject_allocation` where `class_id`='$class_id' && `section_id`='$sect_id' && `subject_id`='0'");
									while($frq=mysql_fetch_array($qry1))
									{
										$sub_id=$frq['elective'];
										$sub_subject_id=$frq['sub_subject_id'];
										$x=0;
										$qt=mysql_query("select `id`,`name` from `exam_category` order by `order_type` ASC");
										while($fqt=mysql_fetch_array($qt))
										{
											$exam_category_id=$fqt['id'];
											$category_name=$fqt['name'];
											$qts=mysql_query("select `exam_category_type_id` from `exam_mapping` where `class_id`='$class_id' && `section_id`='$sect_id' && `subject_id`='$sub_id' && `sub_subject_id`='$sub_subject_id' && `term_id`='$exam_id' && `exam_category_id`='$exam_category_id' ");
											$count=mysql_num_rows($qts);
											if($count>0) {
												?>
												<th height="30px" colspan="<?php echo $count;?>" style="text-align:center">
												<?php echo $category_name; ?>
												</th>
											<?php
												//if($class_id >=7 && $class_id <=12 ){ 
													if($exam_category_id=='18') {?>
													<th>
														 Total
													</th>
													<th>
														 Need for Pass
													</th>
												<?php }
												//}
											}
  										}
										
									}?>
								</tr>
	 
 								<tr>
 					<th>Name</th>
					<th>Schlor No.</th>
					<th>Roll No.</th>
								
								<?php 
								
								$qry=mysql_query("select `subject_id`,`sub_subject_id` from `subject_allocation` where `class_id`='$class_id' && `section_id`='$sect_id' && `elective`='0'");
								while($frq=mysql_fetch_array($qry))
								{
									$sub_id=$frq['subject_id'];
									$sub_subject_id=$frq['sub_subject_id'];
									$qtS=mysql_query("select `id`,`name` from `exam_category` order by `order_type` ASC");
									while($fqtS=mysql_fetch_array($qtS))
									{
										$exam_category_id=$fqtS['id'];
										$category_name=$fqtS['name'];
										
										$qt=mysql_query("select `exam_category_type_id` from `exam_mapping` where `class_id`='$class_id' && `section_id`='$sect_id' && `subject_id`='$sub_id' && `sub_subject_id`='$sub_subject_id' && `term_id`='$exam_id' && `exam_category_id`='$exam_category_id'");
										$counts=mysql_num_rows($qt);
									if($counts>0){
										while($fqt=mysql_fetch_array($qt))
										{
											$exam_type_id=$fqt['exam_category_type_id'];
											
											$query=mysql_query("select * from `exam_category_type` where `id`='$exam_type_id'");
											$fetc=mysql_fetch_array($query);
											$Exam=$fetc['Exam'];
											?> 
												<th style="text-align:center">
													  
													<?php echo $Exam; ?>
												</th>
											<?php
										}
										//if($class_id >=7 && $class_id <=12 ){ 
											if($exam_category_id=='18') {?>
											<th>
												 Total
											</th>
											<th>
												 Need for Pass
											</th>
										<?php }
										//}
									 }
									 
									}
								} 
							
								$qry1=mysql_query("select `elective`,`sub_subject_id` from `subject_allocation` where `class_id`='$class_id' && `section_id`='$sect_id' && `subject_id`='0'");
								while($frq=mysql_fetch_array($qry1))
								{
									$sub_id=$frq['elective'];
									$sub_subject_id=$frq['sub_subject_id'];
									$qtS=mysql_query("select `id`,`name` from `exam_category` order by `order_type` ASC");
									while($fqtS=mysql_fetch_array($qtS))
									{
										$exam_category_id=$fqtS['id'];
										$category_name=$fqtS['name'];
										
										$qt=mysql_query("select `exam_category_type_id` from `exam_mapping` where `class_id`='$class_id' && `section_id`='$sect_id' && `subject_id`='$sub_id' && `sub_subject_id`='$sub_subject_id' && `term_id`='$exam_id' && `exam_category_id`='$exam_category_id'");
										$counts=mysql_num_rows($qt);
									if($counts>0){
										while($fqt=mysql_fetch_array($qt))
										{
											$exam_type_id=$fqt['exam_category_type_id'];
											
											$query=mysql_query("select * from `exam_category_type` where `id`='$exam_type_id'");
											$fetc=mysql_fetch_array($query);
											$Exam=$fetc['Exam'];
											?> 
												<th style="text-align:center">
												 
													<?php echo $Exam; ?>
												</th>
											<?php
										}
										//if($class_id >=7 && $class_id <=12 ){ 
											if($exam_category_id=='18') {?>
											<th>
												 Total
											</th>
											<th>
												 Need for Pass
											</th>
										<?php }
										//}										
 									 }
									 
									}
								}  ?>
								
								</tr> 
			</thead>
			<tbody>
			 
			<?php 
								 $w=0;
								$qr=mysql_query("select * from `student` where `class_id`='$class_id' && `section_id`='$section_id' ORDER BY `name`");
								while($fr=mysql_fetch_array($qr))
								{	$w++;
									$schlr_id=$fr['id'];
									$scholar_no=$fr['scholar_no'];
									$name=$fr['name'];
									$roll_no=$fr['roll_no'];
 
								?>
									<tr>
 										<td style="text-align:center"><?php echo $name; ?></td>
										<td style="text-align:center"><?php echo $scholar_no; ?></td>
										<td style="text-align:center"><?php echo $roll_no; ?></td>
									
 								<?php 
									$qry=mysql_query("select `subject_id`,`sub_subject_id` from `subject_allocation` where `class_id`='$class_id' && `section_id`='$sect_id' && `elective`='0'");
									while($frq=mysql_fetch_array($qry))
									{
										$sub_id=$frq['subject_id'];
										$sub_subject_id=$frq['sub_subject_id'];
										
										$st=mysql_query("select `subject` from `subject` where `id`='$sub_id'");
										$ft=mysql_fetch_array($st);
										$sub_name=$ft['subject'];
										$col=0;
									$qts=mysql_query("select `id`,`name` from `exam_category` order by `order_type` ASC");
									while($fqts=mysql_fetch_array($qts))
									{
									 
										$exam_category_id=$fqts['id'];
 										$qt=mysql_query("select `exam_category_type_id`,`max_marks`,`exam_category_id`,`reduse`,`reduse_to` from `exam_mapping` where `class_id`='$class_id' && `section_id`='$sect_id' && `subject_id`='$sub_id' && `sub_subject_id`='$sub_subject_id' && `term_id`='$exam_id' && `exam_category_id` = '$exam_category_id'");
									$counts=mysql_num_rows($qt);
								$TotalOneSubject=0;
								$TotalGetMarks=0;
								$dummy_add=0;
								$dummy_max_marks=0;
								$TotalMaxMarks=0;
								$TotalGetMarks=0;
								$TotalOneSubject=0;
								if($counts>0){
									$total_max=0;
									$total_get=0;
									$l=0;
									while($fqt=mysql_fetch_array($qt))
									{ $col++;
										$exam_type_id=$fqt['exam_category_type_id'];
										$exam_category_id=$fqt['exam_category_id'];
										$max_marks=$fqt['max_marks'];
										$reduse=$fqt['reduse'];
										$reduse_to=$fqt['reduse_to'];
										$total_max+=$max_marks;
										$qst=mysql_query("select `id` from `exam_category_type` where `id`='$exam_type_id'");
										$fst=mysql_fetch_array($qst);

										$retrive_type=$fst['id'];
										$value_sub=0;
									
										$sets1=mysql_query("select `id`,`marks` from `student_marks` where `scholar_no`='$scholar_no' && `term_id`='$exam_id' && `subject_id`='$sub_id' && `sub_subject_id`='$sub_subject_id' && `master_exam_type_id`='$exam_type_id' && `exam_category_id`='$exam_category_id'");
										$fets1=mysql_fetch_array($sets1);
										$value_sub=$fets1['marks'];
										$total_get+=$value_sub;
										if($reduse=='no'){
											$TotalMaxMarks+=$max_marks;
											$OverAllTotalMaxMarks+=$max_marks;
										}
										else if(($reduse=='yes' && $l==0)){
											$l=1;
											$TotalMaxMarks+=$reduse_to;

											  $OverAllTotalMaxMarks+=$reduse_to;
										}
										if($reduse=='yes'){
											$reduse_mark=$reduse_to;
										}
 
										$dummy_max_marks+=$max_marks;
										$reduse_calculation=0; 
										if($reduse=='no'){
											$TotalGetMarks+=$value_sub;
											$TotalOneSubject+=$value_sub;
											$OverAllTotalGetMarks+=$value_sub;
										}else{
											$dummy_add+=$value_sub;
										}
										$OverAllTotalGetMarks;
 
									?>
									<td height="30px" style="text-align:center">
	<input type="text" class="form-control input-xsmall update_number"  max="<?php echo $max_marks; ?>" stdnt_id="<?php echo $fets1['id']; ?>" before_marks="<?php echo $value_sub;?>" stdnt_sub="<?php echo $retrive_type; ?>" value="<?php if(!empty($value_sub)){ echo $value_sub;} else{ echo"-";} ?>">
 
									</td>
							<?php }
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

									 // if($class_id >=7 && $class_id <=12 ){ 
										if($exam_category_id=='18') {?>
										<td style="text-align:center;">
											<?php
											
											echo round($OverAllTotalGetMarks).'/'.$OverAllTotalMaxMarks;
											$avg_submitv_passing_per=33;
											@$tot_submitv_per=round($OverAllTotalGetMarks)*100/$OverAllTotalMaxMarks ;
											$passing_marks_for_submitv=$avg_submitv_passing_per*$OverAllTotalMaxMarks/100;
											$need_for_submitv_pass=$passing_marks_for_submitv-$OverAllTotalGetMarks;
											$OverAllTotalGetMarks=0;
											$OverAllTotalMaxMarks=0;
												 
											?>
										</td>
										
											<?php
											if($need_for_submitv_pass>0 )
											{
												echo '<td style="text-align:center; background-color:#f1a3a3">'.round($need_for_submitv_pass).'</td>';
											}
											else
											{
												echo '<td style="text-align:center;background-color:#aff1a3">Pass</td>';
											}
 											?>
										</td>

									<?php }
}
								//}
									}
								
								}
								 
								?>
										
			<?php	///////////////////////////////////////ELECTIVE	./////////////////////	?>				
										
										
										
									<?php
									$qry1=mysql_query("select `elective`,`sub_subject_id` from `subject_allocation` where `class_id`='$class_id' && `section_id`='$sect_id' && `subject_id`='0'");
									while($frq=mysql_fetch_array($qry))
									{
										$sub_id=$frq['elective'];
										$sub_subject_id=$frq['sub_subject_id'];
										
										$st=mysql_query("select `subject` from `subject` where `id`='$sub_id'");
										$ft=mysql_fetch_array($st);
										$sub_name=$ft['subject'];
										$col=0;
									$qts=mysql_query("select `id`,`name` from `exam_category` order by `order_type` ASC");
									while($fqts=mysql_fetch_array($qts))
									{
									 
										$exam_category_id=$fqts['id'];
 										$qt=mysql_query("select `exam_category_type_id`,`max_marks`,`exam_category_id`,`reduse`,`reduse_to` from `exam_mapping` where `class_id`='$class_id' && `section_id`='$sect_id' && `subject_id`='$sub_id' && `sub_subject_id`='$sub_subject_id' && `term_id`='$exam_id' && `exam_category_id` = '$exam_category_id'");
									$counts=mysql_num_rows($qt);
								$TotalOneSubject=0;
								$TotalGetMarks=0;
								$dummy_add=0;
								$dummy_max_marks=0;
								$TotalMaxMarks=0;
								$TotalGetMarks=0;
								$TotalOneSubject=0;
								if($counts>0){
									$total_max=0;
									$total_get=0;
									$l=0;
									while($fqt=mysql_fetch_array($qt))
									{ $col++;
										$exam_type_id=$fqt['exam_category_type_id'];
										$exam_category_id=$fqt['exam_category_id'];
										$max_marks=$fqt['max_marks'];
										$reduse=$fqt['reduse'];
										$reduse_to=$fqt['reduse_to'];
										$total_max+=$max_marks;
										$qst=mysql_query("select `id` from `exam_category_type` where `id`='$exam_type_id'");
										$fst=mysql_fetch_array($qst);

										$retrive_type=$fst['id'];
										$value_sub=0;
									
										$sets1=mysql_query("select `id`,`marks` from `student_marks` where `scholar_no`='$scholar_no' && `term_id`='$exam_id' && `subject_id`='$sub_id' && `sub_subject_id`='$sub_subject_id' && `master_exam_type_id`='$exam_type_id' && `exam_category_id`='$exam_category_id'");
										$fets1=mysql_fetch_array($sets1);
										$value_sub=$fets1['marks'];
										$total_get+=$value_sub;
										if($reduse=='no'){
											$TotalMaxMarks+=$max_marks;
											$OverAllTotalMaxMarks+=$max_marks;
										}
										else if(($reduse=='yes' && $l==0)){
											$l=1;
											$TotalMaxMarks+=$reduse_to;

											  $OverAllTotalMaxMarks+=$reduse_to;
										}
										if($reduse=='yes'){
											$reduse_mark=$reduse_to;
										}
 
										$dummy_max_marks+=$max_marks;
										$reduse_calculation=0; 
										if($reduse=='no'){
											$TotalGetMarks+=$value_sub;
											$TotalOneSubject+=$value_sub;
											$OverAllTotalGetMarks+=$value_sub;
										}else{
											$dummy_add+=$value_sub;
										}
										$OverAllTotalGetMarks;
 
									?>
									<td height="30px" style="text-align:center">
	<input type="text" class="form-control input-xsmall update_number"  max="<?php echo $max_marks; ?>" stdnt_id="<?php echo $fets1['id']; ?>" before_marks="<?php echo $value_sub;?>" stdnt_sub="<?php echo $retrive_type; ?>" value="<?php if(!empty($value_sub)){ echo $value_sub;} else{ echo"-";} ?>">
 
									</td>
							<?php }
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

									 // if($class_id >=7 && $class_id <=12 ){ 
										if($exam_category_id=='18') {?>
										<td style="text-align:center;">
											<?php
											
											echo round($OverAllTotalGetMarks).'/'.$OverAllTotalMaxMarks;
											$avg_submitv_passing_per=33;
											@$tot_submitv_per=round($OverAllTotalGetMarks)*100/$OverAllTotalMaxMarks ;
											$passing_marks_for_submitv=$avg_submitv_passing_per*$OverAllTotalMaxMarks/100;
											$need_for_submitv_pass=$passing_marks_for_submitv-$OverAllTotalGetMarks;
											$OverAllTotalGetMarks=0;
											$OverAllTotalMaxMarks=0;
												 
											?>
										</td>
										
											<?php
											if($need_for_submitv_pass>0 )
											{
												echo '<td style="text-align:center; background-color:#f1a3a3">'.round($need_for_submitv_pass).'</td>';
											}
											else
											{
												echo '<td style="text-align:center;background-color:#aff1a3">Pass</td>';
											}
 											?>
										</td>

									<?php }
}
								//}
									}
								
								}?></tr><?php 
									}  ?>
			 
			</tbody>
		</table>
	 
</body>
</html>
<script src="assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script>
 jQuery(document).ready(function() {
// initiate layout and plugins
  	$('.update_number').on('keyup', function(e){
		var id=$(this).attr('stdnt_id');
		var sub_column=$(this).attr('stdnt_sub');
		var number=$(this).val();
		 
		$.ajax({
				url: "update_marks.php?id="+id+"&sub_column="+sub_column+"&number="+number,
		});
	});
 });
</script>


<script>

jQuery(document).ready(function() {
 
	$('.update_number').on('keyup', function(e){ 
		var inputtxt=  $(this).val();
		var numbers =  /^[0-9ATML]*\.?[0-9]*$/;
		if(inputtxt.match(numbers))  
		{}else  
		{  
			$(this).val('');
			return false;  
		}
		
		var no=eval($(this).val());
		
		 var maxa=eval($(this).attr('max'));
		 var value=eval($(this).attr('before_marks'));
		 
		 if(maxa<no)
		 {
			 $(this).val(value);
		 }
		 else if('AB'==no || 'M'==no || 'T'==no || no=='0')
		 {
			 
		 }
		 
		 
	});

});
</script>

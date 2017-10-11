<?php
include("index_layout.php");
include("database.php");
include("authentication.php");

$class_id=$_GET['cls'];
$section_id=$_GET['sec'];
$exam_id=$_GET['exm'];
$subject_id=$_GET['subject'];
$cat_id=$_GET['cat'];

 	
	$sect_id=$section_id;
 
 ?>
<html >
<head>
<?php ?>
<style>
td{
	border: 1px solid #ddd;
	
}
th{
	border: 2px solid #ddd;
	
}
tr{
	border: 1px solid #ddd;
	
}
.table-bordered {
    border: 1px solid #ddd;
	
	
}
.table {
    width: 100%;
    max-width: 100%;
    margin-bottom: 20px;
}
.table {
    background-color: transparent;
}
.table {
    border-spacing: 0;
    border-collapse: collapse;
	    white-space: normal;
    line-height: normal;
    font-weight: normal;
    font-size: medium;
    font-variant: normal;
    font-style: normal;
    color: -webkit-text;
    text-align: start;
	    display: table;
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Master | Class</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta content="" name="description"/>
<meta content="" name="author"/>
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<?php css(); ?>
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico"/>
 </head>
 <body style="background-color:#FFF;">
<!-- BEGIN HEADER -->

<!-- BEGIN CONTAINER -->
	<!-- END SIDEBAR -->
	<!-- BEGIN CONTENT -->
	
		<div class="page-content">
			<div class="row">
				<div class="col-md-12">
					<?php 
		$cl=mysql_query("select `roman` from `master_class` where `id`='$class_id'");
		$sf=mysql_fetch_array($cl);
		
		$cl_romn=$sf['roman'];
		
		$cl1=mysql_query("select `section` from `master_section` where `id`='$section_id'");
		$sf1=mysql_fetch_array($cl1);
		
		$sc_name=$sf1['section'];
		?>
		
		
			<div class="portlet box pink">
			<div class="portlet-title" style="float:left !important;">
				<div class="caption"  style="text-align:center;">
					<h3 color="black" style="color:#0078D7 !important;"><center><i class="icon-puzzle"></i> View Details Of Class: <?php echo $cl_romn; ?> and Section: <?php echo $sc_name; ?></center></h3>
				</div>
			</div>
			<div class="portlet-title" style="float:right !important;">
				<div class="caption" style="text-align:center;">
					 
					<span style="float:right"><a style="padding: 3px 15px; background-color:rgba(218, 73, 73, 0.74); color:#FFF;margin-right:30%" href="excel_sub_show1.php?cls=<?php echo $class_id; ?>&sec=<?php echo $section_id ; ?>&exm=<?php echo $exam_id ; ?>&subject=<?php echo $subject_id; ?>" target="_blank"><strong>Console</strong></a>
				</span>
					<span style="float:right"><a style="padding: 3px 15px; background-color:rgba(50, 0, 73, 0.74); color:#FFF;margin-right:30%" href="excel_sub_show.php?cls=<?php echo $class_id; ?>&sec=<?php echo $section_id ; ?>&exm=<?php echo $exam_id ; ?>&subject=<?php echo $subject_id; ?>&cat=<?php echo $cat_id; ?>" target="_blank"><strong>Excel</strong></a>
				</span>
				</div>
			</div>
			<div class="portlet-body form">
			<!-- BEGIN FORM-->
			
				<input type="hidden" name="cls" value="<?php echo $class_id; ?>">
				<input type="hidden" name="sec" value="<?php echo $section_id; ?>">
				<input type="hidden" name="exm" value="<?php echo $exam_id; ?>">
					<div class="form-body">
						 
						 <div class="table-responsive">
								<table id="user" class="table table-bordered table-striped">
								<thead>
								<tr>
									<th rowspan='3'>
										 Sr.no
									</th>
									<th rowspan='3'>
										 Name
									</th>
									<?php 
									 
									$qry=mysql_query("select `subject_id` from `subject_allocation` where `class_id`='$class_id' && `section_id`='$sect_id' && `elective`='0' && `subject_id`='$subject_id'");
									$frq=mysql_fetch_array($qry);
									 
									
										$sub_id=$frq['subject_id'];
										
										$st=mysql_query("select `subject` from `subject` where `id`='$sub_id'");
										$ft=mysql_fetch_array($st);
										
										$sub_name=$ft['subject'];
										$col=0;
										$qt=mysql_query("select `exam_category_type_id` from `exam_mapping` where `class_id`='$class_id' && `section_id`='$sect_id' && `subject_id`='$sub_id' && `term_id`='$exam_id' && `exam_category_id`='$cat_id'");
										while($fqt=mysql_fetch_array($qt))
										{$col++;
											$exam_type_id=$fqt['exam_category_type_id'];
											 
										}
									
										?>
										
										<th style="text-align:center" colspan="<?php echo $col; ?>">
											 <?php echo $sub_name; ?>
	
										</th>
 										<?php 
									 
									$qry1=mysql_query("select `elective` from `subject_allocation` where `class_id`='$class_id' && `section_id`='$sect_id' && `subject_id`='0' && `elective`='$subject_id'");
										$frq1=mysql_fetch_array($qry1);
									
										$elec_id=$frq1['elective'];
										
										$st1=mysql_query("select `subject` from `subject` where `id`='$elec_id'");
										$ft1=mysql_fetch_array($st1);
										
										$elec_name=$ft1['subject'];
										$col=0;
										$qt1=mysql_query("select `exam_category_type_id` from `exam_mapping` where `class_id`='$class_id' && `section_id`='$sect_id' && `subject_id`='$elec_id' && `term_id`='$exam_id' && `exam_category_id`='$cat_id'");
										while($fqt1=mysql_fetch_array($qt1))
										{$col++;
										$exam_type_id=$fqt1['exam_category_type_id'];
										
										}
										
										
									?>
									
									<th style="text-align:center" colspan="<?php echo $col; ?>">
										 <?php echo $elec_name; ?>

									</th>
									  
								</tr>
								<!--------------------NEW---CONCEPT------------------------>
								<tr>
								<?php 
								
								$slt=mysql_query("select * from `exam_category` where `id`='$cat_id'");
								$flt=mysql_fetch_array($slt);
								
								$category_name=$flt['name'];
								?>
								<th style="text-align:center" colspan="100">
								<?php echo $category_name; ?>
								</th>
								
								</tr>
 								<tr>
 								<?php 
								
									$qry=mysql_query("select `subject_id` from `subject_allocation` where `class_id`='$class_id' && `section_id`='$sect_id' && `elective`='0' && `subject_id`='$subject_id'");
									$frq=mysql_fetch_array($qry);
									
										$sub_id=$frq['subject_id'];
										
								$qt=mysql_query("select `exam_category_type_id` from `exam_mapping` where `class_id`='$class_id' && `section_id`='$sect_id' && `subject_id`='$sub_id' && `term_id`='$exam_id' && `exam_category_id`='$cat_id'");
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
										<?php } ?>
									
									
									
								<?php 
								
									$qry1=mysql_query("select `elective` from `subject_allocation` where `class_id`='$class_id' && `section_id`='$sect_id' && `subject_id`='0' && `elective`='$subject_id'");
									$frq1=mysql_fetch_array($qry1);
									
										$elec_id=$frq1['elective'];
										
								$qt1=mysql_query("select `exam_category_type_id` from `exam_mapping` where `class_id`='$class_id' && `section_id`='$sect_id' && `subject_id`='$elec_id' && `term_id`='$exam_id' && `exam_category_id`='$cat_id'");
									while($fqt1=mysql_fetch_array($qt1))
									{
										  $exam_type_id1=$fqt1['exam_category_type_id'];
										
										$query1=mysql_query("select * from `exam_category_type` where `id`='$exam_type_id1'");
										$fetc1=mysql_fetch_array($query1);

										  $Exam=$fetc1['Exam'];
										
										?>
									 
									<th style="text-align:center">
										 <?php echo $Exam; ?>

									</th>
										<?php }?>
								
								</tr>
								</thead>
								<tbody>
									
								<?php 
								$w=0;
								
									$qr=mysql_query("select * from `student` where `class_id`='$class_id' && `section_id`='$section_id' ORDER BY `name`");
									while($fr=mysql_fetch_array($qr))
									{$w++;
									$schlr_id=$fr['id'];
									$scholar_no=$fr['scholar_no'];
									$name=$fr['name'];
									?>
									<tr>
									<td><?php echo $scholar_no; ?></td>
									<td><?php echo $name; ?></td>
								<?php
									$qry=mysql_query("select `subject_id` from `subject_allocation` where `class_id`='$class_id' && `section_id`='$sect_id' && `elective`='0' && `subject_id`='$subject_id'");
									$frq=mysql_fetch_array($qry);
									
										$sub_id=$frq['subject_id'];
										
										$st=mysql_query("select `subject` from `subject` where `id`='$sub_id'");
										$ft=mysql_fetch_array($st);
										
										$sub_name=$ft['subject'];
										$col=0;
										 
										$qt=mysql_query("select `exam_category_type_id`,`max_marks` from `exam_mapping` where `class_id`='$class_id' && `section_id`='$sect_id' && `subject_id`='$sub_id' && `term_id`='$exam_id' && `exam_category_id`='$cat_id'");
									while($fqt=mysql_fetch_array($qt))
									{$col++;
										$exam_type_id=$fqt['exam_category_type_id'];
										$max_marks=$fqt['max_marks'];
									  
									$qst=mysql_query("select `id` from `exam_category_type` where `id`='$exam_type_id'");
									$fst=mysql_fetch_array($qst);
									
									$retrive_type=$fst['id'];
									$value_sub=0;
										 
									$query=mysql_query("select `id`,`marks` from `student_marks` where `scholar_no`='$scholar_no' && `term_id`='$exam_id' && `subject_id`='$sub_id' && `master_exam_type_id`='$exam_type_id' && `exam_category_id`='$cat_id'");
									$fetch=mysql_fetch_array($query);
									
									 $value_sub=$fetch['marks'];

									?>
									
									<td style="text-align:center">
										<?php echo $value_sub; ?> 
									</td>
									 
										<?php } ?>
										
			<?php	///////////////////////////////////////ELECTIVE	./////////////////////	?>				
										
										
										
							<?php  
							
 									$qry1=mysql_query("select `elective` from `subject_allocation` where `class_id`='$class_id' && `section_id`='$sect_id' && `subject_id`='0' && `elective`='$subject_id'");
									$frq1=mysql_fetch_array($qry1);
									
										   $sub_id=$frq1['elective'];
										  
										  
										$qwer=mysql_query("select * from `elective` where `subject_id`='$sub_id' && `scholar_id`='$scholar_no'");
										$count=mysql_num_rows($qwer);
										
										$st1=mysql_query("select `subject` from `subject` where `id`='$sub_id'");
										$ft1=mysql_fetch_array($st1);
										
										$sub_name=$ft1['subject'];
										$col=0;
										$qt=mysql_query("select `exam_category_type_id`,`max_marks` from `exam_mapping` where `class_id`='$class_id' && `section_id`='$sect_id' && `subject_id`='$sub_id' && `term_id`='$exam_id' && `exam_category_id`='$cat_id'");
									while($fqt=mysql_fetch_array($qt))
									{$col++;
										$exam_type_id=$fqt['exam_category_type_id'];
										 
										  $max_marks=$fqt['max_marks'];
										
										  
									$qst=mysql_query("select `id` from `exam_category_type` where `id`='$exam_type_id'");
									$fst=mysql_fetch_array($qst);
									
									$retrive_type=$fst['id'];
									$value_sub=0;
								 		$query=mysql_query("select `marks`,`id` from `student_marks` where `scholar_no`='$scholar_no' && `term_id`='$exam_id' && `subject_id`='$sub_id' && `master_exam_type_id`='$exam_type_id' && `exam_category_id`='$cat_id'");
									$fetch=mysql_fetch_array($query);
									
									   $value_sub=$fetch['marks'];
									?>
									
									<td style="text-align:center">
									<?php if($count>0){ ?>
										 <?php echo $value_sub; ?> 
									<?php } else { ?> <?php } ?>	
									</td>
									 
										<?php } ?></tr><?php }?>
										
									 
								</tbody>
								</table>
							</div>
						 
						 
					</div>
					

				
			</div>
				<!-- END FORM-->
				</div>
			</div>
			
			<!-- END PAGE CONTENT-->
		</div>
	
	<!-- END CONTENT -->
	
</div>
 <?php scripts(); ?>
<!-- END PAGE LEVEL SCRIPTS -->
</body>
<!-- END BODY -->
</html>
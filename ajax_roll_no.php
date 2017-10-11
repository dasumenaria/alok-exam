<?php 
include("database.php");
include("authentication.php");

$role_id=$_SESSION['role'];
$fac_id=$_SESSION['id'];

$qtr=mysql_query("select `role` from `role` where `id`='$role_id'");
$ftr=mysql_fetch_array($qtr);

$role_name=$ftr['role'];

$class=$_GET['pon'];
$section=$_GET['pon1'];

$sect=$section;	

$cls=$_GET['cls'];
$sec=$_GET['sec'];
$sub=$_GET['sub'];
$trm=$_GET['trm'];
$cat=$_GET['cat'];
$sub_subj=$_GET['sub_subj'];

if((!empty($class)) && (empty($section)) ){
?>
<div class="form-group">
							<label class="control-label col-md-3">Section</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control user1" required name="roman">
									<option value="">---Select---</option>
								   
								   <?php 
								   $query=mysql_query("select * from `mapping_section` where `class_id`='$class'");
								   while($fet=mysql_fetch_array($query))
								   {$f++;
										$section_id=$fet['section_id'];
									$ster=mysql_query("select * from `master_section` where `id`='$section_id'");
									$fter=mysql_fetch_array($ster);		
										$sec_id=$fter['id'];
										$sec_name=$fter['section'];
								   ?>
									<option value="<?php echo $sec_id; ?>"><?php echo $sec_name; ?></option>
								   <?php } ?>
									</select>
								</div>
								<span class="help-block">
								please select section category</span>
							</div>
						</div>
						
						<div id="sec"></div>
					
<?php } if(!empty($section)){
	
$qtr=mysql_query("select `role` from `role` where `id`='$role_id'");
$ftr=mysql_fetch_array($qtr);
$role_name=$ftr['role'];

if($role_name=='Admin'){

?>
 
<div class="form-group">
							<label class="control-label col-md-3">Subject</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control user2" required name="roman">
									<option value="">---Select Subject---</option> 
								   <?php 	
								   
								
								   $query=mysql_query("select `subject_id`,`sub_subject_id` from `subject_allocation` where `class_id`='$class' && `elective`='0' && section_id='$sect'");
								  
								   while($fet=mysql_fetch_array($query))
								   {$f++;
										$sub_id=$fet['subject_id'];
										$sub_subject_id=$fet['sub_subject_id'];
										 
										$sets=mysql_query("select `subject` from `subject` where `id`='$sub_id'");
										$fets=mysql_fetch_array($sets);
										
										$sub_name=$fets['subject'];
 
 
										$setss=mysql_query("select `name` from `master_sub_subject` where `id`='$sub_subject_id'");
										$fetss=mysql_fetch_array($setss);
										
										$sub_subject_name=$fetss['name'];
										
										
								   ?>
									<option value="<?php echo $sub_id; ?>,<?php echo $sub_subject_id; ?>"><?php echo $sub_name; ?>-<?php echo $sub_subject_name; ?></option>
								   <?php } ?>
								   
								   
								   <?php 
								   $query1=mysql_query("select `elective`,`sub_subject_id` from `subject_allocation` where `class_id`='$class' && `subject_id`='0' && section_id='$sect'");
								   while($fet1=mysql_fetch_array($query1))
								   {$f++;
										$elec_id=$fet1['elective'];
										$sub_subject_id=$fet1['sub_subject_id'];
										
										$sets1=mysql_query("select `subject` from `subject` where `id`='$elec_id'");
										$fets1=mysql_fetch_array($sets1);
										
										$elec_name=$fets1['subject'];
										
										 
										$setss1=mysql_query("select `name` from `master_sub_subject` where `id`='$sub_subject_id'");
										$fetss1=mysql_fetch_array($setss1);
										
										$sub_subject_name=$fetss1['name'];
								   ?>
									<option value="<?php echo $elec_id; ?>,<?php echo $sub_subject_id; ?>"><?php echo $elec_name; ?>-<?php echo $sub_subject_name; ?></option>
								   <?php } ?>
									</select>
								</div>
								<span class="help-block">
								please select subject category</span>
							</div>
						</div>
						
						
<?php } else{
	?>


<div class="form-group">
							<label class="control-label col-md-3">Subject</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control user2" required name="subj">
									<option value="">---Select Subject---</option>
								   <?php 
  								   $qst=mysql_query("select * from `mapping_faculty_class` where `class_id`='$class' && `section_id`='$section' && `staff_id`='$fac_id'");
								   while($fst=mysql_fetch_array($qst))
								   {
										$subs_id=$fst['subject'];
										
								   $query=mysql_query("select `subject_id`,`sub_subject_id` from `subject_allocation` where `class_id`='$class' && `elective`='0' && `section_id`='$sect' && `subject_id`='$subs_id'");
								   $fet=mysql_fetch_array($query);
								   
										$sub_id=$fet['subject_id'];
										  $sub_subject_id=$fet['sub_subject_id'];
										
										$sets=mysql_query("select `subject` from `subject` where `id`='$sub_id'");
										$fets=mysql_fetch_array($sets);
										
										$sub_name=$fets['subject'];
										
										$setss=mysql_query("select `name` from `master_sub_subject` where `id`='$sub_subject_id'");
										$fetss=mysql_fetch_array($setss);
										
										$sub_subject_name=$fetss['name'];
										
										if(!empty($sub_name)){
 
								   ?>
									<option value="<?php echo $sub_id; ?>"><?php echo $sub_name; ?>-<?php echo $sub_subject_name; ?></option>
										<?php } ?>
								   
								   
								   <?php

									  
 								   $query1=mysql_query("select `elective` from `subject_allocation` where `class_id`='$class' && `subject_id`='0' && `section_id`='$sect' && `elective`='$subs_id'");
								   $fet1=mysql_fetch_array($query1);
								   
										$elec_id=$fet1['elective'];
										
										$sets1=mysql_query("select `subject` from `subject` where `id`='$elec_id'");
										$fets1=mysql_fetch_array($sets1);
										
										$elec_name=$fets1['subject'];
										
										if(!empty($elec_name)){
 
								   ?>
									<option value="<?php echo $elec_id; ?>"><?php echo $elec_name; ?></option>
										<?php }} ?>
									</select>
								</div>
								<span class="help-block">
								please select subject category</span>
							</div>
						</div>
						
				


<?php } ?>		

								<div id="exl"></div>
					
<?php } if((!empty($cls)) && (!empty($sec)) && (!empty($sub)) && (empty($trm))){ ?>
	
	<div class="form-group">
						<label class="control-label col-md-3">Exam</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control ust" required name="exam_name">
										<option value="">---Select Exam---</option>
											<?php 
												$query2=mysql_query("select * from `master_term` ORder By `id`"); 
												while($fetch2=mysql_fetch_array($query2))
												{
													$i++;
													$ex_id=$fetch2['id'];
													$exam_name=$fetch2['name'];
												?>
												<option value="<?php echo $ex_id; ?>"><?php echo $exam_name; ?></option>
											<?php } ?>
									</select>
								</div>
								<span class="help-block">
								Please select Exam category</span>
							</div>
					</div>

       <div id="data_button"></div>
<?php } ?>
<?php if((!empty($cls)) && (!empty($sec)) && (!empty($sub)) && (!empty($trm)) && (empty($cat))){?>
	<a style="padding: 3px 15px; background-color:rgba(218, 73, 73, 0.74); color:#FFF;margin-left:30%" href="roll_no_sheet.php?cls=<?php echo $cls; ?>&sec=<?php echo $sec; ?>&sub=<?php echo $sub; ?>&trm=<?php echo $trm; ?>&cat=<?php echo $cat; ?>&sub_subject=<?php echo $sub_subj; ?>" >
	<strong>VIEW SHEET ROLL NO</strong>
	</a>
<?php } ?>
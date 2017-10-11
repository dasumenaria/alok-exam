<?php 
include("database.php");

$class_id =$_GET['pon'];
$section_id =$_GET['pon1'];
$sub=$_GET['sub'];
$trm=$_GET['trm'];
  	
$sect=$section_id;	
	
 if((!empty($class_id)) && (empty($section_id))){
	?>
	<div class="form-group">
							<label class="control-label col-md-3">Section</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control user1" required name="sec">
									<option value="">---Select Section---</option>
								    <?php
									$query1=mysql_query("select * from `mapping_section` where `class_id`='$class_id'");
									while($fetch1=mysql_fetch_array($query1))
									{$j++;
										$sect_id=$fetch1['section_id'];
									$ster=mysql_query("select * from `master_section` where `id`='$sect_id'");
									$fter=mysql_fetch_array($ster);	
										$sec_id=$fter['id'];
										$sec_name=$fter['section'];
									?>
									<option value="<?php echo $sec_id; ?>"><?php echo $sec_name; ?></option>
									<?php } ?>
									</select>
								</div>
								<span class="help-block">
								Please select Section category</span>
							</div>
						</div>

<?php 	
}
 
if(!empty($class_id) && (!empty($section_id)) && (empty($sub)) && (empty($trm))){
	?>
<div class="form-group">
							<label class="control-label col-md-3">Subject</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control user3" required name="subject">
									<option value="">---Select Subject---</option>
								    <?php 
									$query4=mysql_query("select `subject_id`,`sub_subject_id` from `subject_allocation` where `class_id`='$class_id' && `elective`='0' && `section_id`='$sect'");
									while($fetch4=mysql_fetch_array($query4))
									{$m++;
										 
										  $sub_id=$fetch4['subject_id'];
										  $sub_subject_id=$fetch4['sub_subject_id'];
										
									$st=mysql_query("select `subject` from `subject` where `id`='$sub_id'");
									$qt=mysql_fetch_array($st);
									
									  $sub_name=$qt['subject'];
									
									  $sst=mysql_query("select * from `master_sub_subject` where `id`='$sub_subject_id'");
									  $qqt=mysql_fetch_array($sst);
									  
									  $sub_subject_name=$qqt['name'];
									
									?>
									<option value="<?php echo $sub_id; ?>,<?php echo $sub_subject_id; ?>"><?php echo $sub_name; ?><?php if(!empty($sub_subject_name)){ echo '-'.$sub_subject_name; } ?></option>
									<?php } ?>
									
									<?php 
									$quer=mysql_query("select `elective` from `subject_allocation` where `class_id`='$class_id' && `subject_id`='0' && `section_id`='$sect'");
									while($fetc=mysql_fetch_array($quer))
									{$m++;
										 
										$elec_id=$fetc['elective'];
										
									$st1=mysql_query("select `subject` from `subject` where `id`='$elec_id'");
									$qt1=mysql_fetch_array($st1);
									
									$elec_name=$qt1['subject'];
									
									?>
									<option value="<?php echo $elec_id; ?>"><?php echo $elec_name; ?></option>
									<?php } ?>
									</select>
								</div>
								<span class="help-block">
								Please select Subject Category</span>
							</div>
						 </div>
						 
<?php }
if(!empty($class_id) && (!empty($section_id)) && (!empty($sub)) && (!empty($trm))){
	?>
	
	<div class="form-group">
							<label class="control-label col-md-3">Category</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control" required  name="cat_id">
									<option value="">---Select Category---</option>
								    <?php
									$querys=mysql_query("select * from `exam_category` order by `id`");
									while($fetchs=mysql_fetch_array($querys))
									{	$k++;
										$cat_id=$fetchs['id'];
										$cat_name=$fetchs['name'];
									?>
									<option value="<?php echo $cat_id; ?>"><?php echo $cat_name; ?></option>
									<?php } ?>
									</select>
								</div>
								<span class="help-block">
								Please select Term category</span>
							</div>
						</div>
						
<?php
}
else{ } ?>
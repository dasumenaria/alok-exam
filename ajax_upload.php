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
 
$cls=$_GET['cls'];
$sec=$_GET['sec'];
$sub=$_GET['sub'];
if((!empty($class)) && (empty($section)) ){
?>
<div class="form-group">
							<label class="control-label col-md-3">Section</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control user1" required name="section">
									<option value="">---Select Section---</option>
							   
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
	
	
	if($role_name=='Admin'){
?>
<div class="form-group">
							<label class="control-label col-md-3">Subject</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control user2" required name="subject">
									<option value="">---Select Subject---</option>
								   
								   <?php 
								   $query=mysql_query("select `subject_id`,`sub_subject_id` from `subject_allocation` where `class_id`='$class' && `elective`='0' && section_id='$section'");
								   while($fet=mysql_fetch_array($query))
								   {$f++;
										$sub_id=$fet['subject_id'];
										$sub_subject_id=$fet['sub_subject_id'];
										
										$sets=mysql_query("select `subject` from `subject` where `id`='$sub_id'");
										$fets=mysql_fetch_array($sets);
										
										$sub_name=$fets['subject'];
										
										$setss1=mysql_query("select `name` from `master_sub_subject` where `id`='$sub_subject_id'");
										$fetss1=mysql_fetch_array($setss1);
										
										$sub_subject_name=$fetss1['name'];
 
								   ?>
									<option value="<?php echo $sub_id; ?>,<?php echo $sub_subject_id; ?>"><?php echo $sub_name; ?>-<?php echo $sub_subject_name; ?></option>
								   <?php } ?>
								   
								   
								   <?php 
								   $query1=mysql_query("select `elective` from `subject_allocation` where `class_id`='$class' && `subject_id`='0' && section_id='$section'");
								   while($fet1=mysql_fetch_array($query1))
								   {$f++;
										$elec_id=$fet1['elective'];
										$sub_subject_id=$fet1['sub_subject_id'];
										
										$sets1=mysql_query("select `subject` from `subject` where `id`='$elec_id'");
										$fets1=mysql_fetch_array($sets1);
										
										$elec_name=$fets1['subject'];
										
										$setss2=mysql_query("select `name` from `master_sub_subject` where `id`='$sub_subject_id'");
										$fetss2=mysql_fetch_array($setss2);
										
										$sub_subject_name=$fetss2['name'];
 
								   ?>
									<option value="<?php echo $elec_id; ?>,<?php echo $sub_subject_id; ?>"><?php echo $elec_name; ?>-<?php echo $sub_subject_name; ?></option>
								   <?php } ?>
									</select>
								</div>
								<span class="help-block">
								please select subject category</span>
							</div>
						</div>
						
						
	<?php }else{?>


<div class="form-group">
							<label class="control-label col-md-3">Subject</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control user2" required name="subject">
									<option value="">---Select Subject---</option>
								   
								   <?php 
								    $qst=mysql_query("select * from `staff_class` where `class_id`='$class' && `section_id`='$section' && `staff_id`='$fac_id'");
								   while($fst=mysql_fetch_array($qst))
								   {
										$subs_id=$fst['subject']; 
								   $query=mysql_query("select `subject_id` from `subject_allocation` where `class_id`='$class' && `elective`='0' && section_id='$section' && `subject_id`='$subs_id'");
								   $fet=mysql_fetch_array($query);
								 
										$sub_id=$fet['subject_id'];
										
										$sets=mysql_query("select `subject` from `subject` where `id`='$sub_id'");
										$fets=mysql_fetch_array($sets);
										
										$sub_name=$fets['subject'];
										
										
										
									if(!empty($sub_name)){
 
 
								   ?>
									<option value="<?php echo $sub_id; ?>"><?php echo $sub_name; ?></option>
									<?php } 
									
								   $query1=mysql_query("select `elective` from `subject_allocation` where `class_id`='$class' && `subject_id`='0' && section_id='$section' && `elective`='$subs_id'");
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
					
<?php } if((!empty($cls)) && (!empty($sec)) && (!empty($sub))){?>





<div class="form-group">
							<label class="control-label col-md-3 ">Term</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control ex" required name="exam_name">
									<option value="">---Select Term---</option>
								   <?php 
								   $query2=mysql_query("select * from `master_term` where `block`='0'");
								   while($fetch2=mysql_fetch_array($query2))
								   {$u++;
										$exam_id=$fetch2['id'];
										$exam_name=$fetch2['name'];
							   ?>
								   
									<option value="<?php echo $exam_id; ?>"><?php echo $exam_name; ?></option>
								   <?php } ?>
									</select>
								</div>
								<span class="help-block">
								Please select Term category</span>
							</div>
							
							 
					<div class="row">
							
					</div>
							
							
						</div>
						 
						
						
						<div class="form-group">
							<label class="control-label col-md-3 ">Category</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control ex" name="category_id">
									<option value="">---Select Category---</option>
								   <?php 
								   $query2=mysql_query("select * from `exam_category`");
								   while($fetch2=mysql_fetch_array($query2))
								   {$u++;
										$cat_id=$fetch2['id'];
										$cat_name=$fetch2['name'];
							   ?>
								   
									<option value="<?php echo $cat_id; ?>"><?php echo $cat_name; ?></option>
								   <?php } ?>
									</select>
								</div>
								<span class="help-block">
								Please select category type</span>
							</div>
							
							 
					<div class="row">
							
					</div>
							
							
						</div>
						
						
						
						
						
						
    <div class="form-group">
	<br>
	<table>
	<tr>
	<td width="30%">
	
	</td>
	<td width="1%"> 
	    <p class="help-block" style="color:green">Only CSV File Import.</p><?php if($msg=='1'){ ?> <font color="red">Try Again</font><?php }?>
        <input type="file" name="file" id="file"  color="blue" > 
     	
   </td>
   </div>
   
	<td>
       <button type="submit" name="Import" class="btn green" style="border-radius:7px !important"><i class="fa fa-check"></i> Save</button>	 
	</td>

<td width="45%">
</td>
 
</td>
</tr>
	  
</table>

<?php } ?>
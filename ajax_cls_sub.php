<?php
include("database.php");
$class_id=$_GET['pon'];
$optional_id=$_GET['pon1'];
$section_id=$_GET['pon2'];

if((!empty($class_id)) && (empty($section_id))){
	?>
	<div class="form-group">
							<label class="control-label col-md-3">Section</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control user1" required name="section_id" >
									<option value="">---Select Section---</option>
								    <?php 
									$query=mysql_query("select * from `mapping_section` where `class_id`='$class_id' order by `section_id`");
									while($fetch=mysql_fetch_array($query))
									{$i++;
										 
										$section_id=$fetch['section_id'];
										$querys=mysql_query("select * from `master_section` where `id`='$section_id'");
										$fetchS=mysql_fetch_array($querys);
										$sec_id=$fetchS['id'];
										$section=$fetchS['section'];
									?>
									<option value="<?php echo $sec_id; ?>"><?php echo $section; ?></option>
									<?php } ?>
									</select>
								</div>
								<span class="help-block">
								please select Section category</span>
							</div>
						</div>
						
						
<?php 	
}
 
	 
	 
if($optional_id=='1'){
	
	if($class_id>0){
	?> 
			<div class="table-responsive">
								<table class="table table-striped table-bordered table-hover">
								<thead>
								<tr>
									<th style="text-align:center">
										 Sr.No
									</th>
									<th style="text-align:center">
										 Subject Name
									</th>
									 
									<th style="text-align:center">
										 Check All
										<div class="checkbox-list">
												 <span><input type="checkbox" class="chk_input" onclick="check();" value="0"></span>
										 </div>
									</th>
									
								</tr>
								</thead>
								<tbody>
						<?php
							
						
							$que=mysql_query("select * from `subject` where `id`!='$el_id'");
							while($fet=mysql_fetch_array($que))
							{$f++;
						
							$id=$fet['id'];
							$subject_name=$fet['subject'];
							
							$qrw=mysql_query("select * from `subject_allocation` where `elective`='$id' && `class_id`='$class_id' && `section_id`='$section_id'");
							$frq=mysql_num_rows($qrw);
							
							 
							$selecto9=mysql_query("select `id` from `subject_allocation` where `subject_id`='$id' && `class_id`='$class_id' && `section_id`='$section_id'");
							$count=mysql_num_rows($selecto9);

							
							if($frq=='0')
							{$l++;
						
						?>
						<tr>
							<td style="text-align:center">
								<?php echo $l; ?>
							</td>
							
							<td style="text-align:center">
								<?php echo $subject_name; ?>
							</td>
							
							<td style="text-align:center">
								
								 <div class="checkbox-list">
                                         <span><input type="checkbox" class="all_chk" <?php if($count>0){ ?> checked="checked" <?php }?> name="check[]" value="<?php echo $id; ?>"></span>
								 </div>
								 
								 	<div class="box-group" id="accordion">
                <!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
                <div class="panel box box-primary">
                  <div class="box-header with-border">
                    <h4 class="box-title">
                      <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne<?php echo $id; ?>" aria-expanded="false" class="collapsed">
                        Sub Subject
                      </a>
                    </h4>
                  </div>
                  <div id="collapseOne<?php echo $id; ?>" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
                    <div class="box-body">
                     <?php 
						$st=mysql_query("select * from `master_sub_subject`");
						while($ft=mysql_fetch_array($st))
						{
							$sub_subject_id=$ft['id'];
							$sub_subject_name=$ft['name'];
							
							$flt=mysql_query("select * from `subject_allocation` where `class_id`='$class_id' && `section_id`='$section_id' && `subject_id`='$id' && `sub_subject_id`='$sub_subject_id'");
							$sub_sub_count=mysql_num_rows($flt);
						?>
								 <div class="checkbox-list">
                                     <span>
                                        <input type="checkbox" class="all_chk"   name="sub_subject_<?php echo $id; ?>[]" <?php if($sub_sub_count>0){ ?> checked="checked" <?php }?> value="<?php echo $sub_subject_id; ?>">
                                        <?php echo $sub_subject_name; ?> 
                                     </span>
								 </div>
							 
						 
						<?php } ?>
					  
                    </div>
                  </div>
                </div>
			</div>
									
								</td>	
						</tr>	
						
						
						<?php }} ?>
							
					</tbody>
				</table>
			 
			</div>
			
	<?php } 
	else {   ?>		
	
				<div class="table-responsive">
								<table class="table table-striped table-bordered table-hover">
								<thead>
								<tr>
									<th style="text-align:center">
										 Sr.No
									</th>
									<th style="text-align:center">
										 Subject Name
									</th>
									 
									<th style="text-align:center">
										 Check All
										<div class="checkbox-list">
												 <span><input type="checkbox" class="chk_input" onclick="check();" value="0"></span>
										 </div>
									</th>
								</tr>
								</thead>
								<tbody>
						<?php
 						
							$que=mysql_query("select * from `kids` where `id`!='$el_id'");
							while($fet=mysql_fetch_array($que))
							{$f++;
						
							$id=$fet['id'];
							$subject_name=$fet['category'];
							
							$qrw=mysql_query("select * from `class_subject` where `elective`='$id' && `class_id`='$class_id' && `section_id`='$section_id'");
							$frq=mysql_num_rows($qrw);
							
							 
							$selecto9=mysql_query("select `id` from `class_subject` where `subject_id`='$id' && `class_id`='$class_id' && `section_id`='$section_id'");
							$count=mysql_num_rows($selecto9);

							
							if($frq=='0')
							{$l++;
						
						?>
						<tr>
							<td style="text-align:center">
								<?php echo $l; ?>
							</td>
							
							<td style="text-align:center">
								<?php echo $subject_name; ?>
							</td>
							
							<td style="text-align:center">
								
								 <div class="checkbox-list">
                                         <span><input type="checkbox" class="all_chk" <?php if($count>0){ ?> checked="checked" <?php }?> name="check[]" value="<?php echo $id; ?>"></span>
								 </div>
							</td>
						</tr>	
							<?php }} ?>
							
					</tbody>
				</table>
			 
			</div>
	
	
	
			
			
	<?php } ?>
<?php }if($optional_id=='2'){?>


						<div class="table-responsive">
								<table class="table table-striped table-bordered table-hover">
								<thead>
								<tr>
									<th style="text-align:center">
										 Sr.No
									</th>
									<th style="text-align:center">
										 Subject Name
									</th>
									 
									<th style="text-align:center">
										 Check All 
										<div class="checkbox-list">
												 <span><input type="checkbox" class="chk_input" onclick="check();" value="0"></span>
										 </div>
									</th>
								</tr>
								</thead>
								<tbody>
						<?php
						
						
							$que=mysql_query("select * from `subject` ORDER BY `id`");
							while($fet=mysql_fetch_array($que))
							{$f++;
						
							$id=$fet['id'];
							$subject_name=$fet['subject'];
							
							$qrw1=mysql_query("select * from `subject_allocation` where `subject_id`='$id' && `class_id`='$class_id' && `section_id`='$section_id'");
							$frq1=mysql_num_rows($qrw1);
							
							 
							$selecto9=mysql_query("select `id` from `subject_allocation` where `elective`='$id' && `class_id`='$class_id' && `section_id`='$section_id'");
							$count=mysql_num_rows($selecto9);

							
							
						if($frq1=='0')
						{$o++;
						?>
						<tr>
							<td style="text-align:center">
								<?php echo $o; ?>
							</td>
							
							<td style="text-align:center">
								<?php echo $subject_name; ?>
							</td>
							
							<td style="text-align:center">
								
								 <div class="checkbox-list">
                                         <span><input type="checkbox" class="all_chk" <?php if($count>0){ ?> checked="checked" <?php }?> name="check[]" value="<?php echo $id; ?>"></span>
										  
								 </div>
								 
							<div class="box-group" id="accordion">
                <!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
                <div class="panel box box-primary">
                  <div class="box-header with-border">
                    <h4 class="box-title">
                      <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne<?php echo $id; ?>" aria-expanded="false" class="collapsed">
                        Sub Subject
                      </a>
                    </h4>
                  </div>
                  <div id="collapseOne<?php echo $id; ?>" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
                    <div class="box-body">
                     <?php 
						$st=mysql_query("select * from `master_sub_subject`");
						while($ft=mysql_fetch_array($st))
						{
							$sub_subject_id=$ft['id'];
							$sub_subject_name=$ft['name'];
							
							$flt1=mysql_query("select * from `subject_allocation` where `class_id`='$class_id' && `section_id`='$section_id' && `elective`='$id' && `sub_subject_id`='$sub_subject_id'");
							$sub_sub_count1=mysql_num_rows($flt1);
						?>
						
						
						  <?php echo $sub_subject_name; ?> 
								 <div class="checkbox-list">
                                    <span>
									<input type="checkbox" class="all_chk" <?php if($sub_sub_count1>0){ ?> checked="checked" <?php } ?> name="sub_subject_<?php echo $id; ?>[]" value="<?php echo $sub_subject_id; ?>">
									</span>
								 </div>
							 
						 
						<?php } ?>
					  
                    </div>
                  </div>
                </div>
			</div>
								
			
							</td>
							
							</tr>
						</div>
						 
						<?php  }} ?>
							
					</tbody>
				</table>
			 
			</div>



<?php }if(!empty($optional_id)){?>
				
					<div class="form-actions top">
						<div class="row">
							<div class="col-md-offset-3 col-md-9">
								<button type="submit" name="sub" class="btn green">Submit</button>
								<button type="button" class="btn default">Cancel</button>
							</div>
						</div>
					</div>
<?php } else{}

 ?>
  							
	<script>
		var test = $("input[type=checkbox]:not(.toggle), input[type=radio]:not(.toggle)");
		if (test) {
		test.uniform();
		}
		
		 
	</script>

							
							
							
							
							
							
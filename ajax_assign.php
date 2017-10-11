<?php
include("database.php");
$class_id=$_GET['pon'];
$section_id=$_GET['pon1'];
$term_id=$_GET['pon3'];
$category_id=$_GET['pon5'];
 $sect=$section_id;

if((!empty($class_id)) && (empty($sect))){ ?>

	<div class="form-group">
						<label class="control-label col-md-3">Section</label> 
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control user3" required name="section_id">
										<option value="">---Select Section---</option>
											<?php 
												$query2=mysql_query("select * from `mapping_section` where `class_id`='$class_id'"); 
												while($fetch2=mysql_fetch_array($query2))
												{
													$i++;
													 
													$section_id=$fetch2['section_id'];
													
												$qt=mysql_query("select * from `master_section` where `id`='$section_id'");
												$ft=mysql_fetch_array($qt);

												$section_id=$ft['id'];
												$section_name=$ft['section'];	
												
												?>
												<option value="<?php echo $section_id; ?>"><?php echo $section_name; ?></option>
											<?php } ?>
									</select>
								</div>
								<span class="help-block">
								Please select section category</span>
							</div>
					</div>
					
				<div id="ms" ></div>	
					
					
	<?php } 
	if((!empty($class_id)) && (!empty($sect)) && (empty($term_id))){
	 
		?>
		
		<div class="form-group">
						<label class="control-label col-md-3">Exam</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control user4" required name="term_id">
										<option value="">---Select Exam---</option>
											<?php 
												$query2=mysql_query("select * from `master_term` ORder By `id`"); 
												while($fetch2=mysql_fetch_array($query2))
												{
													$i++;
													$exam_id=$fetch2['id'];
													$exam_name=$fetch2['name'];
												?>
												<option value="<?php echo $exam_id; ?>"><?php echo $exam_name; ?></option>
											<?php } ?>
									</select>
								</div>
								<span class="help-block">
								Please select Exam category</span>
							</div>
					</div>
		
		
		
		
			
					
				<div id="cs" ></div>	
		
		<?php
	}
	if((!empty($class_id)) && (!empty($sect)) && (!empty($term_id)) && (empty($category_id))){
	 
		?>
		 
		<div class="form-group">
						<label class="control-label col-md-3">Category</label> 
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control ust" required name="category_id">
										<option value="">---Select Master---</option>
											<?php 
												$query2=mysql_query("select * from `exam_category` ORder By `id`"); 
												while($fetch2=mysql_fetch_array($query2))
												{
													$i++;
													$mstr_id=$fetch2['id'];
													$mstr_name=$fetch2['name'];
												?>
												<option value="<?php echo $mstr_id; ?>"><?php echo $mstr_name; ?></option>
											<?php } ?>
									</select>
								</div>
								<span class="help-block">
								Please select category type</span>
							</div>
					</div>
		
		
		
		
		<?php
	}
	?>

	<?php 
	if((!empty($class_id)) && (!empty($sect)) && (!empty($term_id)) &&  (!empty($category_id))){
	?>
			<div class="table-responsive">
								<table class="table table-striped table-bordered table-hover">
								<thead>
								<tr>
									<th style="text-align:center">
										 Sr No.
									</th>
									<th style="text-align:center">
										 Subject Name
									</th>
									  <?php 
									  $qur=mysql_query("select `Exam` from `exam_category_type` ORDER BY `id`");
									  while($fet=mysql_fetch_array($qur))
									  {$f++;
										  $exam_type=$fet['Exam'];
										  
									  ?>
									<td style="text-align:center">
										<?php echo $exam_type; ?>
										<div class="checkbox-list">
												 <span><input type="checkbox" class="chk_input wal" chk_val="<?php echo $f;?>" onclick="check();" value="0"></span>
										 </div>

									</td>
									  <?php } ?>
									  <input type="hidden" name="tot_sub" value="<?php echo $f; ?>">
								</tr>
								</thead>
								<tbody>
						
							<?php 
							$qr=mysql_query("select `subject_id`,`sub_subject_id` from `subject_allocation` where `class_id`='$class_id' && `section_id`='$sect' && `elective`='0'");
							while($fr=mysql_fetch_array($qr))
							{$c++;
								$sub_id=$fr['subject_id'];
								$sub_subject_id=$fr['sub_subject_id'];
								
								
								  $s1=mysql_query("select `subject` from `subject` where `id`='$sub_id'");
								  $f1=mysql_fetch_array($s1);
								
								  $sub_name=$f1['subject'];
								  
								  
								  $ss1=mysql_query("select `name` from `master_sub_subject` where `id`='$sub_subject_id'");
								  $fs1=mysql_fetch_array($ss1);
								
								  $sub_subject_name=$fs1['name'];
								
								
							?>
						
						<tr>
							<td style="text-align:center">
								<?php echo $c; ?>
							</td>
							
							
							<td style="text-align:center">
							
								<?php echo $sub_name; ?>-<?php echo $sub_subject_name; ?>
							</td>
							
							
							<?php  
							$i=0;
									  $qur1=mysql_query("select `id` from `exam_category_type` ORDER BY `id`");
									  while($fet1=mysql_fetch_array($qur1))
									  {$i++;
										  $exam_id=$fet1['id'];
										  
										$sets=mysql_query("select * from `exam_mapping` where `class_id`='$class_id' && `section_id`='$sect' && `exam_category_type_id`='$exam_id' && `subject_id`='$sub_id' && `sub_subject_id`='$sub_subject_id' && `term_id`='$term_id' && `exam_category_id`='$category_id'");
											$count=mysql_num_rows($sets);
										
									  ?>
										
							<td style="text-align:center">
								
								 <div class="checkbox-list">
                                         
										 <span><input type="checkbox" class="all_chk<?php echo $i;?> wal" <?php if($count>0){ ?> checked="checked" <?php }?> name="check_<?php echo $c; ?>_<?php echo $exam_id; ?>" value="1"></span>
							
							<input type="hidden" name="subjc[]" value="<?php echo $sub_id; ?>">
							</div>
							</td>
									  <?php } ?>
						</tr>	
							<?php } ?>
							  
							<?php 
							$qr=mysql_query("select `elective`,`sub_subject_id` from `subject_allocation` where `class_id`='$class_id' && `section_id`='$sect' && `subject_id`='0'");
							while($fr=mysql_fetch_array($qr))
							{$c++;
								$sub_id=$fr['elective'];
								$sub_subject_id=$fr['sub_subject_id'];
								 
								  $s1=mysql_query("select `subject` from `subject` where `id`='$sub_id'");
								  $f1=mysql_fetch_array($s1);
								  
								  $sub_name=$f1['subject'];
								
								$stt=mysql_query("select `name` from `master_sub_subject` where `id`='$sub_subject_id'");
								$ftt=mysql_fetch_array($stt);
								$sub_sub_name=$ftt['name'];
							
							?>
						
						<tr>
							<td style="text-align:center">
								<?php echo $c; ?>
							</td>
							
							
							<td style="text-align:center">
							
								<?php echo $sub_name; ?>-<?php echo $sub_sub_name; ?>
							</td>
							
							
							<?php
							$i=0;
									  $qur1=mysql_query("select `id` from `exam_category_type` ORDER BY `id`");
									  while($fet1=mysql_fetch_array($qur1))
									  {$i++;
										  $exam_id=$fet1['id'];
										  
										$sets=mysql_query("select * from `exam_mapping` where `class_id`='$class_id' && `section_id`='$sect' && `exam_category_type_id`='$exam_id' && `subject_id`='$sub_id' && `sub_subject_id`='$sub_subject_id' && `term_id`='$term_id' && `exam_category_id`='$category_id'");
											$count=mysql_num_rows($sets);
								
									  ?>
							
							<td style="text-align:center">
								
								 <div class="checkbox-list">
                                         
										 <span><input type="checkbox" class="all_chk<?php echo $i;?> wal" <?php if($count>0){ ?> checked="checked" <?php }?> name="check_<?php echo $c; ?>_<?php echo $exam_id; ?>" value="1"></span>
							
							<input type="hidden" name="subjc[]" value="<?php echo $sub_id; ?>">
							</div>
							</td>
									  <?php } ?>
						</tr>	
							<?php } ?>
							
					</tbody>
				</table>
			 
			</div>
				
				
					<div class="form-actions top">
						<div class="row">
							<div class="col-md-offset-3 col-md-9">
								<button type="submit" name="sub" class="btn green">Submit</button>
								<button type="button" class="btn default">Cancel</button>
							</div>
						</div>
					</div>
 
<?php }else{}  ?>				
	<script>
		var test = $("input[type=checkbox]:not(.toggle), input[type=radio]:not(.toggle)");
		if (test) {
		test.uniform();
		}
	</script>
 
 
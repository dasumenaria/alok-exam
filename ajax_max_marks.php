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
									<th>Scaling Marks</th>
									<th style="text-align:center" colspan="20">
										Marks
									</th>
								</tr>
								</thead>
								<tbody>
						
							<?php 
							$qr=mysql_query("select DISTINCT `subject_id`,`sub_subject_id`,`reduse_to` from `exam_mapping` where `class_id`='$class_id' && `section_id`='$sect' && `term_id`='$term_id' && `exam_category_id`='$category_id'");
							while($fr=mysql_fetch_array($qr))
							{$c++;
								$sub_id=$fr['subject_id'];
								$sub_subject_id=$fr['sub_subject_id'];
								$reduse_to=$fr['reduse_to'];
								 
								
								
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
							<td>
							 
							<input class="form-control input-xsmall" id="as1" onkeyup="allLetter(this.value,this.id)" value="<?php echo $reduse_to; ?>" type="text" name="reduse_to[<?php echo $sub_id;?>]" aria-invalid="false">
							</td>
							
							<?php  
							 $sets=mysql_query("select * from `exam_mapping` where `class_id`='$class_id' && `section_id`='$sect' && `term_id`='$term_id' && `exam_category_id`='$category_id' && `subject_id`='$sub_id' && `sub_subject_id`='$sub_subject_id'");
							 while($fets=mysql_fetch_array($sets)){
								 
								 $mapping_id=$fets['id'];
								 $exam_category_type_id=$fets['exam_category_type_id'];
								 $max_marks=$fets['max_marks'];
								 
								 $slt=mysql_query("select `Exam` from `exam_category_type` where `id`='$exam_category_type_id'");
								 $flt=mysql_fetch_array($slt);
								 
								 $exam_show=$flt['Exam'];
								 ?>
								 <td>	
									<?php echo $exam_show; ?>
									<input class="form-control input-xsmall" id="a1" onkeyup="allLetter(this.value,this.id)" value="<?php echo $max_marks; ?>" type="text" name="mark_value[<?php echo $mapping_id; ?>]" aria-invalid="false">
								 </td>
								 <?php
							 }
									  ?>
							
							 
						 <?php } ?>
						</tr>	
							  
							  
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
 
<?php }else{} 


?>
 	
	<script>
		var test = $("input[type=checkbox]:not(.toggle), input[type=radio]:not(.toggle)");
		if (test) {
		test.uniform();
		}
	</script>
 
 
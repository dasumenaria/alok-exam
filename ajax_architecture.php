<?php
include("database.php");
	$class_id=$_GET['pon'];
	$section_id=$_GET['pon1'];
	$term_id=$_GET['pon3'];
	$category_id=$_GET['pon5'];
	$sect=$section_id;
	$marksheet_term_id=$_GET['pon6'];

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
								Please select Section category</span>
							</div>
					</div>
					
				<div id="ms" ></div>	
					
					
	<?php }  	
	if((!empty($class_id)) && (!empty($sect)) && (empty($term_id))){
	 
		?>
		
		<div class="form-group">
						<label class="control-label col-md-3">Term</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control user4" required name="term_id">
										<option value="">---Select Term---</option>
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
								Please select Term category</span>
							</div>
					</div>
		
		 
				<div id="cs" ></div>	
		
		<?php
	}
	if((!empty($class_id)) && (!empty($sect)) && (!empty($term_id)) && (empty($marksheet_term_id))){
	 
		?>
		 
		<div class="form-group">
						<label class="control-label col-md-3">Marksheet Term</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control user5" required name="marksheet_term_id">
										<option value="">---Select Marksheet Term---</option>
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
								Please select Term category</span>
							</div>
					</div>
		
		
		
		
		<?php
	}
	?>

	<?php 
	if((!empty($class_id)) && (!empty($sect)) && (!empty($term_id)) &&  (!empty($marksheet_term_id)) && (empty($category_id))){
 		$ftc=mysql_query("select * from `master_architecture` where `class_id`='$class_id' && `section_id`='$sect' && `term_id`='$term_id' && `marksheet_term_id`='$marksheet_term_id'");
		while($ftwquery=mysql_fetch_array($ftc))
		{
			$ExixtCategory_id[]=$ftwquery['category_id'];
		}
 	?>
	 
		<div class="form-group">
            <label class="control-label col-md-3">Category</label> 
                <div class="col-md-4">
                   
                    <select class="form-control ust select2me" required multiple="multiple" name="category_id[]" placeholder="Select...">
                        <?php 
                            $query2=mysql_query("select * from `exam_category` ORder By `id`"); 
                            while($fetch2=mysql_fetch_array($query2))
                            {
                                $i++;
                                $mstr_id=$fetch2['id'];
                                $mstr_name=$fetch2['name'];
                            ?>
                            <option <?php if(in_array($mstr_id, $ExixtCategory_id)){ echo 'selected="selected"'; }?>  value="<?php echo $mstr_id; ?>"><?php echo $mstr_name; ?></option>
                        <?php } ?>
                    </select>
                    <span class="help-block">Please select Exam category</span>
                </div>
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
		
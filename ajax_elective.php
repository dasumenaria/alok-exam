<?php
include("database.php");
$class_id=$_GET['pon'];
$section_id=$_GET['pon1'];


if(empty($section_id)){ ?>
<div class="form-group">
							<label class="control-label col-md-3">Section</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control user1" required name="section_id" >
									<option value="">---Select Section---</option>
								    <?php 
									$query=mysql_query("select * from `mapping_section` where `class_id`='$class_id'");
									while($fetch=mysql_fetch_array($query))
									{$i++;
										$sectio_id=$fetch['section_id'];
									$ster=mysql_query("select * from `master_section` where `id`='$sectio_id'");
									$fter=mysql_fetch_array($ster);
									
										$sec_id=$fter['id'];
										$section=$fter['section'];
									?>
									<option value="<?php echo $sec_id; ?>"><?php echo $section; ?></option>
									<?php } ?>
									</select>
								</div>
								<span class="help-block">
						 		please select section category</span>
							</div>
						</div>
<?php } if((!empty($class_id)) && (!empty($section_id))){ ?>

			<div class="table-responsive">
								<table class="table table-striped table-bordered table-hover">
								<thead>
								<tr>
                                	<th>S.No</th>
									<th style="text-align:center">
										 Scholar No
									</th>
									<th style="text-align:center">
										 Student Name
									</th>
									  <?php 
 									  $qur=mysql_query("select DISTINCT(`elective`) from `subject_allocation` where `class_id`='$class_id' && `subject_id`='0' && `section_id`='$section_id'");
									  $count=mysql_num_rows($qur);
									  while($fet=mysql_fetch_array($qur))
									  {$f++;
										  $subject_id=$fet['elective'];
										  
										  $s1=mysql_query("select `subject` from `subject` where `id`='$subject_id'");
										  $f1=mysql_fetch_array($s1);
										  
										  $elec_subject=$f1['subject'];
									  ?>
									<th style="text-align:center">
										<?php echo $elec_subject; ?>
										<div class="checkbox-list">
												 <span><input type="checkbox" class="chk_input wal" chk_val="<?php echo $f;?>" onclick="check();" value="0"></span>
										 </div>
									</th>
									  <?php } ?>
									  <input type="hidden" name="tot_sub" value="<?php echo $f; ?>">
								</tr>
								</thead>
								<tbody>
						<?php
						if($count > 0)
						{
							$f1=0;	
							$que=mysql_query("select `scholar_no`,`name` from `student` where `class_id`='$class_id' && `section_id`='$section_id' ORDER BY `name`");
							while($fet=mysql_fetch_array($que))
							{
								$f1++;
								$scholar_no=$fet['scholar_no'];
								$student_name=$fet['name'];
 								?> 
								<tr>
                                	<td><?php echo $f1; ?></td>
                                    <td style="text-align:center">
                                        <?php echo $scholar_no; ?>
                                    </td>
                                    <td>
                                        <?php echo $student_name; ?>
                                    </td>
                                    <?php  
                                      $i=0;
                                      $qur1=mysql_query("select DISTINCT(`elective`) from `subject_allocation` where `class_id`='$class_id' && `subject_id`='0' && `section_id`='$section_id'");
                                      while($fet1=mysql_fetch_array($qur1))
                                      {
                                        $elec_id=$fet1['elective'];
                                        $sets=mysql_query("select * from `elective` where `scholar_id`='$scholar_no' && `subject_id`='$elec_id'");
                                        $count=mysql_num_rows($sets);
                                        $i++;
                                        ?>
                                        <td style="text-align:center">
                                        <div class="checkbox-list">
                                        <span><input type="checkbox" class="all_chk<?php echo $i;?> wal" <?php if($count>0){ ?> checked="checked" <?php }?> name="check_<?php echo $f1; ?>_<?php echo $elec_id; ?>" value="1"></span>
                                        <input type="hidden" name="schlr[]" value="<?php echo $scholar_no; ?>">
                                        </div>
                                        </td>
                                <?php } ?>
								</tr>	
						<?php }
						}
						else
						{
							?>
							<th colspan="5" style="color:#F00; text-align:center">Please Assign Elective Subject First</th>
							<?php 
						}?>
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
<?php } ?>
							
	<script>
		var test = $("input[type=checkbox]:not(.toggle), input[type=radio]:not(.toggle)");
		if (test) {
		test.uniform();
		}
	</script>

							
							
							
							
							
							
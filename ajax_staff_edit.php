<?php
include("database.php");	

$class_id=$_GET['pon'];
$user_id=$_GET['pon1'];

$slt=mysql_query("select `roman` from `master_class` where `id`='$class_id'");
$flt=mysql_fetch_array($slt);
$cls_shw_nm=$flt['roman'];

?>


			<div class="portlet box yellow" style="background-color:white !important">
			<div class="portlet-title">
			<div class="caption">
			<i class="fa fa-gift"></i> Staff Subject <?php echo $cls_shw_nm; ?>
			</div>

			</div>
			<div class="portlet-body form">
			<form class="form-horizontal" role="form" method="post">
			<div class="form-body">



			<div class="table-responsive"  >

	<table class="table table-striped table-bordered table-hover">
								<thead>
								<tr>
									<th style="text-align:center">
										 Sr No
									</th>
									<th style="text-align:center">
										 Section Name
									</th>
									  <?php 
									  $qur=mysql_query("select * from `subject` order by `id`" );
									  while($fet=mysql_fetch_array($qur))
									  {$f++;
										  $subject_id=$fet['id'];
										  
										  
										  $s1=mysql_query("select `subject` from `subject` where `id`='$subject_id'");
										  $f1=mysql_fetch_array($s1);
										  
										  $subject_name=$f1['subject'];
									  ?>
									<td style="text-align:center">
										<?php echo $subject_name; ?>
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
						
						$f1=0;
							$que=mysql_query("select * from `mapping_section` where `class_id`='$class_id'");
							while($fet=mysql_fetch_array($que))
							{$f1++;
						
							$section_id=$fet['section_id'];
							
							$que1=mysql_query("select * from `master_section` where `id`='$section_id'");
							$fdt=mysql_fetch_array($que1);
							
							$sec_id=$fdt['id'];
							$sec_name=$fdt['section'];
							
					?> 
					  		
						<tr>
							<td style="text-align:center">
								<?php echo $f1; ?>
							</td>
							
							<td style="text-align:center">
								<?php echo $sec_name; ?>
							</td>
							
							
							<?php  $i=0;
									  $qur1=mysql_query("select * from `subject` ORDER BY `id`");
									  while($fet1=mysql_fetch_array($qur1))
									  {
										  $sub_id=$fet1['id'];
										$sets=mysql_query("select * from `staff_class` where `section_id`='$sec_id' && `class_id`='$class_id' && `subject`='$sub_id' && `staff_id`='$user_id'");
										$count=mysql_num_rows($sets);
											
										$sets1=mysql_query("select * from `staff_class` where `section_id`='$sec_id' && `class_id`='$class_id' && `subject`='$sub_id' && `staff_id`!='$user_id'");
										$count2=mysql_num_rows($sets1);
											
										  
										  $i++;
									  ?>
							
							<td style="text-align:center">
								
								 <div class="checkbox-list">
                                         
										 <span><input type="checkbox" class="all_chk<?php echo $i;?> wal" <?php if($count>0){ ?> checked="checked" <?php }?> name="check_<?php echo $sec_id; ?>_<?php echo $sub_id; ?>"  <?php if($count2>0){?> disabled <?php }else{}?> value="1"></span>
							
							<input type="hidden" name="sec[]" value="<?php echo $sec_id; ?>">
							<input type="hidden" name="cls" value="<?php echo $class_id; ?>">
							</div>
							</td>
									  <?php } ?>
						</tr>	
							<?php } ?>
							
					</tbody>
				</table>
				
				
				</div>
								
								 	 
								</div>
								<div class="form-actions right1">
									<button style="margin-left:35%" type="button" class="btn default">Cancel</button>
									<button type="submit" name="sub_cls" class="btn green">Submit</button>
								</div>
								 
							</form>
						</div>
					</div>

			 
<?php 
include("database.php");
$class_id=$_GET['pon'];
?>

<?php if((!empty($class_id))){?>
<div class="form-group">
							<label class="control-label col-md-3">Section</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control" required name="sec">
									<option value="">---Select Term---</option>
								    <?php 
									$query1=mysql_query("select * from `mapping_section` where `class_id`='$class_id'");
									while($fetch1=mysql_fetch_array($query1))
									{$j++;
										$sectio_id=$fetch1['section_id'];
									$ster=mysql_query("select * from `master_section` where `id`='$sectio_id'");	
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
<?php }?>
<?php 
include("database.php");
include("authentication.php");
 
$term=$_GET['pon3'];
$class=$_GET['pon'];
$section=$_GET['pon1']; 
$sect=$section;	



if((!empty($class)) && (empty($section)) ){
?>
<div class="form-group">
							<label class="control-label col-md-3">Section</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control user1" required name="roman">
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
				<div id="rpt">	</div>	

<?php } if((!empty($class)) && (!empty($section)) && (empty($term))){?>

<div class="form-group">
						<label class="control-label col-md-3">Exam</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control user2" required name="exam_name">
										<option value="">---Select Exam---</option>
											<?php 
												$query2=mysql_query("select * from `master_term` ORder By `id`"); 
												while($fetch2=mysql_fetch_array($query2))
												{
													$i++;
													$trm_id=$fetch2['id'];
													$trm_name=$fetch2['name'];
												?>
												<option value="<?php echo $trm_id; ?>"><?php echo $trm_name; ?></option>
											<?php } ?>
									</select>
								</div>
								<span class="help-block">
								Please select Exam category</span>
							</div>
					</div>

		<div id="sht"> </div>


<?php } if((!empty($class)) && (!empty($section)) && (!empty($term))){ ?>
 
<a style="padding: 12px 17px; text-decoration: none; background-color:rgba(218, 73, 73, 0.74); color:#FFF;margin-left:30%" href="extra1.php?cls=<?php echo $class; ?>&sec=<?php echo $section; ?>&exm=<?php echo $term; ?>" > <i class="fa fa-download"></i> Download </a>

<?php } ?>
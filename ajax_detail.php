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

<a style="padding: 12px 17px; text-decoration: none; background-color:rgba(218, 73, 73, 0.74); color:#FFF;margin-left:30%" href="student_detail.php?cls=<?php echo $class; ?>&sec=<?php echo $section; ?>&exm=<?php echo $term; ?>" > <i class="fa fa-download"></i> Download Student Details </a>

<?php } ?>
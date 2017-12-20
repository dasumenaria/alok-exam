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

$sect=$section;	



$cls=$_GET['cls'];
$sec=$_GET['sec'];
$sub=$_GET['sub'];
$trm=$_GET['trm'];
$cat=$_GET['cat'];
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
						
						<div id="sec"></div>
					
<?php } if(!empty($section)){
 ?>

<a style="padding: 3px 15px; background-color:rgba(218, 73, 73, 0.74); color:#FFF;margin-left:30%" href="excel_health.php?cls=<?php echo $class; ?>&sec=<?php echo $section; ?>" ><strong>Download</strong></a>

	 
<?php } ?>
  
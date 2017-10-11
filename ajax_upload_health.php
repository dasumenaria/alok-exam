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
 
$cls=$_GET['cls'];
$sec=$_GET['sec'];
$sub=$_GET['sub'];
if((!empty($class)) && (empty($section)) ){
?>
<div class="form-group">
							<label class="control-label col-md-3">Section</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control user1" required name="section">
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


<div class="form-group">
							<label class="control-label col-md-3">Subject</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control user2" required name="health_id">
									<option value="">---Select Subject---</option>
								   
								   <?php 
								   $qst=mysql_query("select * from `master_health`");
								   while($fst=mysql_fetch_array($qst))
								   {  
										$health_id=$fst['id']; 
										$health_type=$fst['health_type'];
										 
								   ?>
									<option value="<?php echo $health_id; ?>"><?php echo $health_type; ?></option>
								   <?php  } ?> 
									 
									</select>
								</div>
								<span class="help-block">
								please select subject category</span>
							</div>
						</div>


 
						
						<div id="exl"></div>
					
<?php } if((!empty($cls)) && (!empty($sec)) && (!empty($sub))){?>

  
						 
    <div class="form-group">
	<br>
	<table>
	<tr>
	<td width="30%">
	
	</td>
	<td width="1%"> 
	    <p class="help-block" style="color:green">Only CSV File Import.</p><?php if($msg=='1'){ ?> <font color="red">Try Again</font><?php }?>
        <input type="file" name="file" id="file"  color="blue" > 
     	
   </td>
   </div>
   
	<td>
       <button type="submit" name="Import" class="btn green" style="border-radius:7px !important"><i class="fa fa-check"></i> Save</button>	 
	</td>

<td width="45%">
</td>
 
</td>
</tr>
	  
</table>

<?php } ?>
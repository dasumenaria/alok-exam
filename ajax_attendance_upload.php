<?php 
include("database.php");
include("authentication.php");

$login_id=$_SESSION['id'];
$term=$_GET['pon3'];
$class=$_GET['pon'];
$section=$_GET['pon1'];
$sect=0;
if($class>10){
$sect=$section;	
}

 
if((!empty($class)) && (empty($section)) ){
 ?>
<div class="form-group">
							<label class="control-label col-md-3">Section</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control user1" required name="section_id">
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
										
							$st1=mysql_query("select `role` from `login` where `id`='$login_id'");
										$ft1=mysql_fetch_array($st1);
										$login_role=$ft1['role'];						
										
										if($login_role==1){
											
										$s1=mysql_query("select `section` from `login` where `id`='$login_id'");
										$f1=mysql_fetch_array($s1);
										$staff_class_count=mysql_num_rows($s1);
										
										$sect_id=$f1['section'];
										if($staff_class_count>0){
											if($sect_id==$sec_id){
								   ?>
								   		<option value="<?php echo $sec_id; ?>"><?php echo $sec_name; ?></option>

											<?php } } }
										
										else if($login_role==2){
											?>
									<option value="<?php echo $sec_id; ?>"><?php echo $sec_name; ?></option>
<?php									}
								   ?>
									<!--option value="<?php //echo $sec_id; ?>"><?php //echo $sec_name; ?></option-->
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
							$ex_id=$fetch2['id'];
							$exam_name=$fetch2['name'];
						?>
						<option value="<?php echo $ex_id; ?>"><?php echo $exam_name; ?></option>
					<?php } ?>
			</select>
		</div>
		<span class="help-block">
		Please select Exam category</span>
	</div>
</div>

		<div id="sht"> </div>



<?php } if((!empty($class)) && (!empty($section)) && (!empty($term))){ ?>
<div>
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
</div>
<?php } ?>
<?php 
include("database.php");
include("authentication.php");

$login_id=$_SESSION['id'];
$term=$_GET['pon3'];
$class=$_GET['pon'];
$section=$_GET['pon1'];
$sect=$section;	

$st=mysql_query("select * from `school`");
$ft=mysql_fetch_array($st);
$school=$ft['school'];
$address=$ft['address'];

$st2=mysql_query("select `roman` from `master_class` where `id`='$class'");
$ft2=mysql_fetch_array($st2);
$cls_name=$ft2['roman'];

$sst2=mysql_query("select `section` from `master_section` where `id`='$sect'");
$fst2=mysql_fetch_array($sst2);
$sec_name=$fst2['section'];

if((!empty($class)) && (empty($section)) ){
?>
<div class="form-group printdata">
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

<button   type="button" class="btn btn-primary hide_print" onclick="window.print()" align="right" value="Print Admit Card">Print </button>

						<h2 align="center"><?php echo $school; ?></h3>
						<h4 align="center"><?php echo $address; ?></h4>
						<h3 align="center">Hold Student Report</h3>
						<h4 align="center">Class - <?php echo $cls_name; ?>&nbsp;
						and &nbsp; Section - <?php echo $sec_name; ?></h4>
	<div class="table-responsive">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>
						 Sr.no
					</th>
					<th>
						 Name
					</th>
					<th>
						 Scholar
					</th>
					<th>
						 Roll no
					</th>
					<th>
						 Class
					</th>
					<th>
						 Section
					</th>
					<th>
						 Status
					</th>
				</tr>
			</thead>
			<tbody>
				<?php $query=mysql_query("select * from `student` where `class_id`='$class' && `section_id`='$sect' && `hold`='1' order by `name`");
					while($fetch=mysql_fetch_array($query))
					{$f++;
						
						$student_id=$fetch['id'];
						$name=$fetch['name'];
						$scholar_no=$fetch['scholar_no'];
						$roll_no=$fetch['roll_no'];
						$class_id=$fetch['class_id'];
						$section_id=$fetch['section_id'];
						$hold_flag=$fetch['hold'];
						if(!empty($hold_flag)){
							$hold_status='Hold';
						}else{
							$hold_status='Unhold';
						}
						$set=mysql_query("select `roman` from `master_class` where `id`='$class_id'");
						$fet=mysql_fetch_array($set);
						$class_name=$fet['roman'];
						$set1=mysql_query("select `section` from `master_section` where `id`='$section_id'");
						$fet1=mysql_fetch_array($set1);
						$section_name=$fet1['section'];

						?>
					<tr>
						<td><?php echo $f; ?></td>
						<td><?php echo $name; ?></td>
						<td><?php echo $scholar_no; ?></td>
						<td><?php echo $roll_no; ?></td>
						<td><?php echo $class_name; ?></td>
						<td><?php echo $section_name; ?></td>
						<td>
						<button type="button" name="Import" class="btn btn-xs red" >Hold</button>
						</td>											 
					</tr>
					<?php } ?>
				</tbody>
			</table>
		</div>


<?php } ?>
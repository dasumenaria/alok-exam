<?php 
include("database.php");
include("authentication.php");
 
$type=$_GET['pon3'];
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

<?php } if((!empty($class)) && (!empty($section)) && (empty($type))){?>

<div class="form-group">
						<label class="control-label col-md-3">Type</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control user2" required name="exam_name">
										<option value="">---Select Type---</option>
										<option value="Pass">Pass</option>
										<option value="Fail">Fail</option>
										<option value="Supplementary">Supplementary</option>
									</select>
								</div>
								<span class="help-block">
								Please select Exam category</span>
							</div>
					</div>

		<div id="sht"> </div>


<?php } if((!empty($class)) && (!empty($section)) && (!empty($type))){ ?>

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
										 Father Name
									</th>
									<th>
										 Scholar
									</th>
									<th>
										 Roll no
									</th>
									<th>
										 Percentage
									</th>
									<th>
										 Marks Obtained
									</th>
									<th>
										 Status
									</th>
									<th>
										 Remarks
									</th>
								</tr>
							</thead>
							<tbody>
							
<?php

$set=mysql_query("select * from `student` where `class_id`='$class' && `section_id`='$section' && `hold`='0' ORDER BY `name` ASC");
while($fet=mysql_fetch_array($set))
{	
$name=$fet['name'];
$father_name=$fet['father_name'];
$scholar_no=$fet['scholar_no'];
$roll_no=$fet['roll_no'];
$class_id=$fet['class_id'];
$section_id=$fet['section_id'];

$set1=mysql_query("select * from `student_result` where `class_id`='$class_id' && `section_id`='$section_id' && `scholar_no`='$scholar_no' && `roll_no`='$roll_no' && `final_status`='$type'");
$fet1=mysql_fetch_array($set1);

$total_marks=$fet1['total_marks'];
$per=$fet1['per'];
$status=$fet1['status'];
$final_status=$fet1['final_status'];


$st=mysql_query("select `roman` from `master_class` where `id`='$class_id'");
$ft=mysql_fetch_array($st);

$cls_nm=$ft['roman'];

$st1=mysql_query("select `section` from `master_section` where `id`='$section_id'");
$ft1=mysql_fetch_array($st1);

$sec_nm=$ft1['section'];

if($final_status==$type){
	@$k++;
?>
								<tr>
									<td><?php echo $k; ?></td>
									<td><?php echo $name; ?></td>
									<td><?php echo $father_name; ?></td>
									<td><?php echo $scholar_no; ?></td>
									<td><?php echo $roll_no; ?></td>
									<td><?php echo $per; ?></td>
									<td><?php echo $total_marks; ?></td>
									<td><?php echo $final_status; ?></td>
									<td><?php echo $status; ?></td>	 
								</tr>
						<?php } } ?>
							</tbody>
						</table>
					</div>
<?php } ?>
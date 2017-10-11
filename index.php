<?php 
include("index_layout.php"); 
include("database.php");
include("authentication.php");
?>
<html>
<head>
<?php css();?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Index</title>
</head>
<?php contant_start(); menu();  ?>
<body>
	<div class="page-content-wrapper">
		 <div class="page-content">
			 
			 <?php
	$name=$_SESSION['name'];
	$role=$_SESSION['role'];
 			
	if($role==3){
	?>	
			 <div class="portlet box blue">
			<div class="portlet-title">
				<div class="caption">
					<i class="icon-puzzle"></i> Student Details
				</div>
			</div>			 
		 
			 <div class="portlet-body">
							<div class="table-responsive">
								<table class="table table-bordered">
								<thead>
								<tr> 
									<th>
										 Attributes
									</th>
									<th>
										 Detail
									</th>
									<th>
										 Attributes
									</th>
									<th>
										 Detail
									</th>
								</tr>
								</thead>
								<tbody>
									
									<?php 
									
									$query=mysql_query("select * from `student` where `scholar_no`='$name'");
									$fetch=mysql_fetch_array($query);
									$f++;
										$id=$fetch['id'];
										$name=$fetch['name'];
										$scholar_no=$fetch['scholar_no'];
										$roll_no=$fetch['roll_no'];
										$class_id=$fetch['class_id'];
										$section_id=$fetch['section_id'];
										$dob=$fetch['dob'];
										$dt_updt=date('d-m-Y', strtotime($dob));
										$real_dob=date('d-M-Y', strtotime($dob));
										$father_name=$fetch['father_name'];
										$mother_name=$fetch['mother_name'];
										$address=$fetch['address'];
										
										$set=mysql_query("select `roman` from `class` where `id`='$class_id'");
										$fet=mysql_fetch_array($set);
										
										$class_name=$fet['roman'];

										$set1=mysql_query("select `section` from `section` where `id`='$section_id'");
										$fet1=mysql_fetch_array($set1);
										$section_name=$fet1['section'];
												
										?>
									<tr>
										<td>Name</td>
								        <td><?php echo $name; ?></td>
										<td>Birth Date</td>	
										<td><?php echo $real_dob; ?></td>
									</tr>
									<tr>
										<td>Father's Name</td>
										<td><?php echo $father_name; ?></td>
										<td>Mother's Name</td>
										<td><?php echo $mother_name; ?></td>
									</tr>
									
									<tr>
										<td>Scholar No.</td>
										<td><?php echo $scholar_no; ?></td>
										<td>Roll No.</td>
										<td><?php echo $roll_no; ?></td>
									</tr>
									<tr>
										<td>Class</td>
										<td><?php echo $class_name; ?></td>
										<td>Section</td>
										<td><?php echo $section_name; ?></td>
									</tr>	
									<tr>
										<td>Address</td>										
										<td colspan="3">
											<?php echo $address; ?>
										</td>
									</tr>
								</tbody>
								</table>
							</div>
						</div>
			  
			</div>
			
			<?php } ?>
			
			
			
		 </div>
	</div>
</body>

<?php footer();?>
<?php scripts();?>

</html>
